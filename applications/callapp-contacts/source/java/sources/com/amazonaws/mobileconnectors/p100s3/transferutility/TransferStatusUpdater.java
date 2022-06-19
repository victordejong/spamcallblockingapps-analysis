package com.amazonaws.mobileconnectors.p100s3.transferutility;

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
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater.class */
public class TransferStatusUpdater {

    /* renamed from: e */
    private static TransferDBUtil f12209e;

    /* renamed from: g */
    private static TransferStatusUpdater f12210g;

    /* renamed from: b */
    private static final Log f12207b = LogFactory.m38584a(TransferStatusUpdater.class);

    /* renamed from: c */
    private static final HashSet<TransferState> f12208c = new HashSet<>(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));

    /* renamed from: a */
    static final Map<Integer, List<TransferListener>> f12206a = new ConcurrentHashMap<Integer, List<TransferListener>>() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
    };

    /* renamed from: f */
    private final Handler f12212f = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    private final Map<Integer, TransferRecord> f12211d = new ConcurrentHashMap();

    /* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater$TransferProgressListener */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener.class */
    public class TransferProgressListener implements ProgressListener {

        /* renamed from: b */
        private final TransferRecord f12227b;

        /* renamed from: c */
        private long f12228c;

        public TransferProgressListener(TransferRecord transferRecord) {
            TransferStatusUpdater.this = r4;
            this.f12227b = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void progressChanged(ProgressEvent progressEvent) {
            synchronized (this) {
                if (32 == progressEvent.getEventCode()) {
                    TransferStatusUpdater.f12207b.mo38590c("Reset Event triggered. Resetting the bytesCurrent to 0.");
                    this.f12228c = 0L;
                    return;
                }
                long bytesTransferred = this.f12228c + progressEvent.getBytesTransferred();
                this.f12228c = bytesTransferred;
                if (bytesTransferred > this.f12227b.f12183i) {
                    this.f12227b.f12183i = this.f12228c;
                    TransferStatusUpdater.this.m38537a(this.f12227b.f12175a, this.f12227b.f12183i, this.f12227b.f12182h, true);
                }
            }
        }
    }

    TransferStatusUpdater(TransferDBUtil transferDBUtil) {
        f12209e = transferDBUtil;
    }

    /* renamed from: a */
    public static TransferStatusUpdater m38534a(Context context) {
        TransferStatusUpdater transferStatusUpdater;
        synchronized (TransferStatusUpdater.class) {
            try {
                if (f12210g == null) {
                    f12209e = new TransferDBUtil(context);
                    f12210g = new TransferStatusUpdater(f12209e);
                }
                transferStatusUpdater = f12210g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferStatusUpdater;
    }

    /* renamed from: c */
    private void m38530c(int i) {
        synchronized (this) {
            TransferRecord m38552d = f12209e.m38552d(i);
            if (m38552d != null) {
                String str = m38552d.f12193s;
                if (new File(str).getName().startsWith("aws-s3-d861b25a-1edf-11eb-adc1-0242ac120002")) {
                    new File(str).delete();
                }
            }
            S3ClientReference.m38563b(Integer.valueOf(i));
            TransferDBUtil.f12150a.m38561a(TransferDBUtil.m38553c(i));
        }
    }

    /* renamed from: a */
    public final TransferRecord m38538a(int i) {
        TransferRecord transferRecord;
        synchronized (this) {
            transferRecord = this.f12211d.get(Integer.valueOf(i));
        }
        return transferRecord;
    }

    /* renamed from: a */
    public final Map<Integer, TransferRecord> m38539a() {
        Map<Integer, TransferRecord> unmodifiableMap;
        synchronized (this) {
            unmodifiableMap = Collections.unmodifiableMap(this.f12211d);
        }
        return unmodifiableMap;
    }

    /* renamed from: a */
    public final void m38537a(final int i, final long j, final long j2, boolean z) {
        synchronized (this) {
            TransferRecord transferRecord = this.f12211d.get(Integer.valueOf(i));
            if (transferRecord != null) {
                transferRecord.f12183i = j;
                transferRecord.f12182h = j2;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("bytes_current", Long.valueOf(j));
            TransferDBUtil.f12150a.m38560a(TransferDBUtil.m38553c(i), contentValues, null, null);
            if (!z) {
                return;
            }
            Map<Integer, List<TransferListener>> map = f12206a;
            synchronized (map) {
                List<TransferListener> list = map.get(Integer.valueOf(i));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        this.f12212f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                            @Override // java.lang.Runnable
                            public void run() {
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m38536a(final int i, final TransferState transferState) {
        boolean z;
        synchronized (this) {
            boolean contains = f12208c.contains(transferState);
            TransferRecord transferRecord = this.f12211d.get(Integer.valueOf(i));
            if (transferRecord == null) {
                z = contains;
                if (TransferDBUtil.m38557a(i, transferState) == 0) {
                    f12207b.mo38587d("Failed to update the status of transfer ".concat(String.valueOf(i)));
                    z = contains;
                }
            } else {
                boolean equals = contains | transferState.equals(transferRecord.f12189o);
                transferRecord.f12189o = transferState;
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(transferRecord.f12175a));
                contentValues.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, transferRecord.f12189o.toString());
                contentValues.put("bytes_total", Long.valueOf(transferRecord.f12182h));
                contentValues.put("bytes_current", Long.valueOf(transferRecord.f12183i));
                z = equals;
                if (TransferDBUtil.f12150a.m38560a(TransferDBUtil.m38553c(transferRecord.f12175a), contentValues, null, null) == 0) {
                    f12207b.mo38587d("Failed to update the status of transfer ".concat(String.valueOf(i)));
                    z = equals;
                }
            }
            if (z) {
                return;
            }
            if (TransferState.COMPLETED.equals(transferState)) {
                m38530c(i);
            }
            Map<Integer, List<TransferListener>> map = f12206a;
            synchronized (map) {
                List<TransferListener> list = map.get(Integer.valueOf(i));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        this.f12212f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
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

    /* renamed from: a */
    public final void m38535a(final int i, final Exception exc) {
        Map<Integer, List<TransferListener>> map = f12206a;
        synchronized (map) {
            List<TransferListener> list = map.get(Integer.valueOf(i));
            if (list != null && !list.isEmpty()) {
                for (final TransferListener transferListener : list) {
                    this.f12212f.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.4
                        @Override // java.lang.Runnable
                        public void run() {
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    public final void m38533a(TransferRecord transferRecord) {
        synchronized (this) {
            this.f12211d.put(Integer.valueOf(transferRecord.f12175a), transferRecord);
        }
    }

    /* renamed from: b */
    public final ProgressListener m38531b(int i) {
        TransferProgressListener transferProgressListener;
        synchronized (this) {
            TransferRecord m38538a = m38538a(i);
            if (m38538a == null) {
                f12207b.mo38590c("TransferStatusUpdater doesn't track the transfer: ".concat(String.valueOf(i)));
                throw new IllegalArgumentException("transfer " + i + " doesn't exist");
            }
            f12207b.mo38590c("Creating a new progress listener for transfer: ".concat(String.valueOf(i)));
            transferProgressListener = new TransferProgressListener(m38538a);
        }
        return transferProgressListener;
    }
}
