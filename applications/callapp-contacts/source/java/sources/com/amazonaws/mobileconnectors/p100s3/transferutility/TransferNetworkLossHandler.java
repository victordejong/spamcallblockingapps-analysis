package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.AmazonS3;
import java.util.ArrayList;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler.class */
public class TransferNetworkLossHandler extends BroadcastReceiver {

    /* renamed from: c */
    private static final Log f12156c = LogFactory.m38584a(TransferNetworkLossHandler.class);

    /* renamed from: e */
    private static TransferNetworkLossHandler f12157e;

    /* renamed from: a */
    final ConnectivityManager f12158a;

    /* renamed from: b */
    TransferStatusUpdater f12159b;

    /* renamed from: d */
    private TransferDBUtil f12160d;

    private TransferNetworkLossHandler(Context context) {
        this.f12158a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f12160d = new TransferDBUtil(context);
        this.f12159b = TransferStatusUpdater.m38534a(context);
    }

    /* renamed from: a */
    public static TransferNetworkLossHandler m38550a() throws TransferUtilityException {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            try {
                transferNetworkLossHandler = f12157e;
                if (transferNetworkLossHandler == null) {
                    f12156c.mo38586e("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
                    throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferNetworkLossHandler;
    }

    /* renamed from: a */
    public static TransferNetworkLossHandler m38549a(Context context) {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            try {
                if (f12157e == null) {
                    f12157e = new TransferNetworkLossHandler(context);
                }
                transferNetworkLossHandler = f12157e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferNetworkLossHandler;
    }

    /* renamed from: c */
    public void m38545c() {
        int i;
        TransferRecord m38538a;
        synchronized (this) {
            TransferState transferState = TransferState.WAITING_FOR_NETWORK;
            f12156c.mo38593b("Loading transfers from database...");
            ArrayList<Integer> arrayList = new ArrayList();
            Cursor m38555a = TransferDBUtil.m38555a(TransferType.ANY, new TransferState[]{transferState});
            int i2 = 0;
            while (true) {
                i = i2;
                if (!m38555a.moveToNext()) {
                    break;
                }
                int i3 = m38555a.getInt(m38555a.getColumnIndexOrThrow("_id"));
                int i4 = i;
                if (this.f12159b.m38538a(i3) == null) {
                    TransferRecord transferRecord = new TransferRecord(i3);
                    transferRecord.m38542a(m38555a);
                    this.f12159b.m38533a(transferRecord);
                    i4 = i + 1;
                }
                arrayList.add(Integer.valueOf(i3));
                i2 = i4;
            }
            if (m38555a != null) {
                f12156c.mo38593b("Closing the cursor for resumeAllTransfers");
                m38555a.close();
            }
            try {
                for (Integer num : arrayList) {
                    AmazonS3 m38564a = S3ClientReference.m38564a(num);
                    if (m38564a != null && (m38538a = this.f12159b.m38538a(num.intValue())) != null && !m38538a.m38543a()) {
                        TransferDBUtil transferDBUtil = this.f12160d;
                        TransferStatusUpdater transferStatusUpdater = this.f12159b;
                        ConnectivityManager connectivityManager = this.f12158a;
                        if (!m38538a.m38543a()) {
                            if ((m38538a.f12181g == 0 && !TransferState.COMPLETED.equals(m38538a.f12189o)) && m38538a.m38540a(transferStatusUpdater, connectivityManager)) {
                                if (m38538a.f12188n.equals(TransferType.DOWNLOAD)) {
                                    m38538a.f12173K = TransferThreadPool.m38525a(new DownloadTask(m38538a, m38564a, transferStatusUpdater));
                                } else {
                                    m38538a.f12173K = TransferThreadPool.m38525a(new UploadTask(m38538a, m38564a, transferDBUtil, transferStatusUpdater));
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log log = f12156c;
                log.mo38586e("Error in resuming the transfers." + e.getMessage());
            }
            Log log2 = f12156c;
            log2.mo38593b(i + " transfers are loaded from database.");
        }
    }

    /* renamed from: d */
    public void m38544d() {
        boolean z;
        synchronized (this) {
            for (TransferRecord transferRecord : this.f12159b.m38539a().values()) {
                if (S3ClientReference.m38564a(Integer.valueOf(transferRecord.f12175a)) != null && transferRecord != null) {
                    if (transferRecord.m38540a(this.f12159b, this.f12158a) || TransferRecord.m38541a(transferRecord.f12189o)) {
                        z = false;
                    } else {
                        z = true;
                        if (transferRecord.m38543a()) {
                            transferRecord.f12173K.cancel(true);
                            z = true;
                        }
                    }
                    if (z) {
                        this.f12159b.m38536a(transferRecord.f12175a, TransferState.WAITING_FOR_NETWORK);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m38547b() {
        NetworkInfo activeNetworkInfo = this.f12158a.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            Log log = f12156c;
            log.mo38590c("Network connectivity changed detected.");
            log.mo38590c("Network connected: ".concat(String.valueOf(m38547b())));
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TransferNetworkLossHandler.this.m38547b()) {
                        TransferNetworkLossHandler.this.m38545c();
                    } else {
                        TransferNetworkLossHandler.this.m38544d();
                    }
                }
            }).start();
        }
    }
}
