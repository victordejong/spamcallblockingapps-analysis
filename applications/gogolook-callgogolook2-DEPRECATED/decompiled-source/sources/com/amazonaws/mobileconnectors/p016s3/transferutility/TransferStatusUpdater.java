package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater.class */
public class TransferStatusUpdater {
    public static HashSet<TransferState> STATES_NOT_TO_NOTIFY = new HashSet<>(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));
    public static final Map<Integer, List<TransferListener>> listeners = new HashMap();
    public final TransferDBUtil dbUtil;
    public final Handler mainHandler = new Handler(Looper.getMainLooper());
    public final Map<Integer, TransferRecord> transfers = new HashMap();
    public final Map<Integer, Long> lastUpdateTime = new HashMap();

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater$TransferProgressListener */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener.class */
    public class TransferProgressListener implements ProgressListener {
        public long bytesCurrent;
        public final TransferRecord transfer;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.transfer = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            synchronized (this) {
                if (progressEvent.getEventCode() == 32) {
                    this.transfer.bytesCurrent -= this.bytesCurrent;
                    this.bytesCurrent = 0L;
                } else {
                    this.bytesCurrent += progressEvent.getBytesTransferred();
                    this.transfer.bytesCurrent += progressEvent.getBytesTransferred();
                }
                TransferStatusUpdater.this.updateProgress(this.transfer.f812id, this.transfer.bytesCurrent, this.transfer.bytesTotal);
            }
        }
    }

    public TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        this.dbUtil = transferDBUtil;
    }

    public void addTransfer(TransferRecord transferRecord) {
        this.transfers.put(Integer.valueOf(transferRecord.f812id), transferRecord);
    }

    public TransferRecord getTransfer(int i) {
        return this.transfers.get(Integer.valueOf(i));
    }

    public Map<Integer, TransferRecord> getTransfers() {
        return Collections.unmodifiableMap(this.transfers);
    }

    public ProgressListener newProgressListener(int i) {
        TransferRecord transfer = getTransfer(i);
        if (transfer != null) {
            return new TransferProgressListener(transfer);
        }
        throw new IllegalArgumentException("transfer " + i + " doesn't exist");
    }

    public void removeTransfer(int i) {
        this.transfers.remove(Integer.valueOf(i));
        listeners.remove(Integer.valueOf(i));
        this.lastUpdateTime.remove(Integer.valueOf(i));
    }

    public void throwError(final int i, final Exception exc) {
        final List<TransferListener> list = listeners.get(Integer.valueOf(i));
        if (list != null && !list.isEmpty()) {
            this.mainHandler.post(new Runnable(this) { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                @Override // java.lang.Runnable
                public void run() {
                    for (TransferListener transferListener : list) {
                        transferListener.onError(i, exc);
                    }
                }
            });
        }
    }

    public void updateProgress(final int i, final long j, final long j2) {
        TransferRecord transferRecord = this.transfers.get(Integer.valueOf(i));
        if (transferRecord != null) {
            transferRecord.bytesCurrent = j;
            transferRecord.bytesTotal = j2;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.dbUtil.updateBytesTransferred(i, j);
        final List<TransferListener> list = listeners.get(Integer.valueOf(i));
        if (list != null && !list.isEmpty()) {
            if (!this.lastUpdateTime.containsKey(Integer.valueOf(i)) || currentTimeMillis - this.lastUpdateTime.get(Integer.valueOf(i)).longValue() > 1000 || j == j2) {
                this.lastUpdateTime.put(Integer.valueOf(i), Long.valueOf(currentTimeMillis));
                this.mainHandler.post(new Runnable(this) { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
                    @Override // java.lang.Runnable
                    public void run() {
                        for (TransferListener transferListener : list) {
                            transferListener.onProgressChanged(i, j, j2);
                        }
                    }
                });
            }
        }
    }

    public void updateState(final int i, final TransferState transferState) {
        boolean z;
        final List<TransferListener> list;
        boolean contains = STATES_NOT_TO_NOTIFY.contains(transferState);
        TransferRecord transferRecord = this.transfers.get(Integer.valueOf(i));
        if (transferRecord == null) {
            z = contains;
            if (this.dbUtil.updateState(i, transferState) == 0) {
                String str = "Failed to update the status of transfer " + i;
                z = contains;
            }
        } else {
            boolean equals = contains | transferState.equals(transferRecord.state);
            transferRecord.state = transferState;
            z = equals;
            if (this.dbUtil.updateTransferRecord(transferRecord) == 0) {
                String str2 = "Failed to update the status of transfer " + i;
                z = equals;
            }
        }
        if (!z && (list = listeners.get(Integer.valueOf(i))) != null && !list.isEmpty()) {
            this.mainHandler.post(new Runnable(this) { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
                @Override // java.lang.Runnable
                public void run() {
                    for (TransferListener transferListener : list) {
                        transferListener.onStateChanged(i, transferState);
                    }
                    if (TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState)) {
                        list.clear();
                    }
                }
            });
        }
    }
}
