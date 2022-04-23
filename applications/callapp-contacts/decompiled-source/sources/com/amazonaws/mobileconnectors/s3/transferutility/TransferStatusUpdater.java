package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater.class */
public class TransferStatusUpdater {
    private static TransferDBUtil e;
    private static TransferStatusUpdater g;

    /* renamed from: b  reason: collision with root package name */
    private static final Log f6712b = LogFactory.a(TransferStatusUpdater.class);

    /* renamed from: c  reason: collision with root package name */
    private static final HashSet<TransferState> f6713c = new HashSet<>(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));

    /* renamed from: a  reason: collision with root package name */
    static final Map<Integer, List<TransferListener>> f6711a = new ConcurrentHashMap<Integer, List<TransferListener>>() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
    };
    private final Handler f = new Handler(Looper.getMainLooper());

    /* renamed from: d  reason: collision with root package name */
    private final Map<Integer, TransferRecord> f6714d = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener.class */
    public class TransferProgressListener implements ProgressListener {

        /* renamed from: b  reason: collision with root package name */
        private final TransferRecord f6728b;

        /* renamed from: c  reason: collision with root package name */
        private long f6729c;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.f6728b = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            synchronized (this) {
                if (32 == progressEvent.getEventCode()) {
                    TransferStatusUpdater.f6712b.c("Reset Event triggered. Resetting the bytesCurrent to 0.");
                    this.f6729c = 0L;
                    return;
                }
                long bytesTransferred = this.f6729c + progressEvent.getBytesTransferred();
                this.f6729c = bytesTransferred;
                if (bytesTransferred > this.f6728b.i) {
                    this.f6728b.i = this.f6729c;
                    TransferStatusUpdater.this.a(this.f6728b.f6703a, this.f6728b.i, this.f6728b.h, true);
                }
            }
        }
    }

    TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        e = transferDBUtil;
    }

    public static TransferStatusUpdater a(Context context) {
        TransferStatusUpdater transferStatusUpdater;
        synchronized (TransferStatusUpdater.class) {
            try {
                if (g == null) {
                    e = new TransferDBUtil(context);
                    g = new TransferStatusUpdater(e);
                }
                transferStatusUpdater = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferStatusUpdater;
    }

    private void c(int i) {
        synchronized (this) {
            TransferRecord d2 = e.d(i);
            if (d2 != null) {
                String str = d2.s;
                if (new File(str).getName().startsWith("aws-s3-d861b25a-1edf-11eb-adc1-0242ac120002")) {
                    new File(str).delete();
                }
            }
            S3ClientReference.b(Integer.valueOf(i));
            TransferDBUtil.f6692a.a(TransferDBUtil.c(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TransferRecord a(int i) {
        TransferRecord transferRecord;
        synchronized (this) {
            transferRecord = this.f6714d.get(Integer.valueOf(i));
        }
        return transferRecord;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<Integer, TransferRecord> a() {
        Map<Integer, TransferRecord> unmodifiableMap;
        synchronized (this) {
            unmodifiableMap = Collections.unmodifiableMap(this.f6714d);
        }
        return unmodifiableMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final long j, final long j2, boolean z) {
        synchronized (this) {
            TransferRecord transferRecord = this.f6714d.get(Integer.valueOf(i));
            if (transferRecord != null) {
                transferRecord.i = j;
                transferRecord.h = j2;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("bytes_current", Long.valueOf(j));
            TransferDBUtil.f6692a.a(TransferDBUtil.c(i), contentValues, null, null);
            if (z) {
                Map<Integer, List<TransferListener>> map = f6711a;
                synchronized (map) {
                    List<TransferListener> list = map.get(Integer.valueOf(i));
                    if (list != null && !list.isEmpty()) {
                        for (final TransferListener transferListener : list) {
                            this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                                @Override // java.lang.Runnable
                                public void run() {
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final TransferState transferState) {
        boolean z;
        synchronized (this) {
            boolean contains = f6713c.contains(transferState);
            TransferRecord transferRecord = this.f6714d.get(Integer.valueOf(i));
            if (transferRecord == null) {
                z = contains;
                if (TransferDBUtil.a(i, transferState) == 0) {
                    f6712b.d("Failed to update the status of transfer ".concat(String.valueOf(i)));
                    z = contains;
                }
            } else {
                boolean equals = contains | transferState.equals(transferRecord.o);
                transferRecord.o = transferState;
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(transferRecord.f6703a));
                contentValues.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, transferRecord.o.toString());
                contentValues.put("bytes_total", Long.valueOf(transferRecord.h));
                contentValues.put("bytes_current", Long.valueOf(transferRecord.i));
                z = equals;
                if (TransferDBUtil.f6692a.a(TransferDBUtil.c(transferRecord.f6703a), contentValues, null, null) == 0) {
                    f6712b.d("Failed to update the status of transfer ".concat(String.valueOf(i)));
                    z = equals;
                }
            }
            if (!z) {
                if (TransferState.COMPLETED.equals(transferState)) {
                    c(i);
                }
                Map<Integer, List<TransferListener>> map = f6711a;
                synchronized (map) {
                    List<TransferListener> list = map.get(Integer.valueOf(i));
                    if (list != null && !list.isEmpty()) {
                        for (final TransferListener transferListener : list) {
                            this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
                                @Override // java.lang.Runnable
                                public void run() {
                                }
                            });
                        }
                        if (TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState)) {
                            list.clear();
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final int i, final Exception exc) {
        Map<Integer, List<TransferListener>> map = f6711a;
        synchronized (map) {
            List<TransferListener> list = map.get(Integer.valueOf(i));
            if (list != null && !list.isEmpty()) {
                for (final TransferListener transferListener : list) {
                    this.f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.4
                        @Override // java.lang.Runnable
                        public void run() {
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(TransferRecord transferRecord) {
        synchronized (this) {
            this.f6714d.put(Integer.valueOf(transferRecord.f6703a), transferRecord);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ProgressListener b(int i) {
        TransferProgressListener transferProgressListener;
        synchronized (this) {
            TransferRecord a2 = a(i);
            if (a2 != null) {
                f6712b.c("Creating a new progress listener for transfer: ".concat(String.valueOf(i)));
                transferProgressListener = new TransferProgressListener(a2);
            } else {
                f6712b.c("TransferStatusUpdater doesn't track the transfer: ".concat(String.valueOf(i)));
                throw new IllegalArgumentException("transfer " + i + " doesn't exist");
            }
        }
        return transferProgressListener;
    }
}
