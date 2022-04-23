package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler.class */
public class TransferNetworkLossHandler extends BroadcastReceiver {

    /* renamed from: c  reason: collision with root package name */
    private static final Log f6698c = LogFactory.a(TransferNetworkLossHandler.class);
    private static TransferNetworkLossHandler e;

    /* renamed from: a  reason: collision with root package name */
    final ConnectivityManager f6699a;

    /* renamed from: b  reason: collision with root package name */
    TransferStatusUpdater f6700b;

    /* renamed from: d  reason: collision with root package name */
    private TransferDBUtil f6701d;

    private TransferNetworkLossHandler(Context context) {
        this.f6699a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f6701d = new TransferDBUtil(context);
        this.f6700b = TransferStatusUpdater.a(context);
    }

    public static TransferNetworkLossHandler a() throws TransferUtilityException {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            try {
                transferNetworkLossHandler = e;
                if (transferNetworkLossHandler == null) {
                    f6698c.e("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
                    throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferNetworkLossHandler;
    }

    public static TransferNetworkLossHandler a(Context context) {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            try {
                if (e == null) {
                    e = new TransferNetworkLossHandler(context);
                }
                transferNetworkLossHandler = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return transferNetworkLossHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        TransferRecord a2;
        synchronized (this) {
            TransferState transferState = TransferState.WAITING_FOR_NETWORK;
            f6698c.b("Loading transfers from database...");
            ArrayList<Integer> arrayList = new ArrayList();
            Cursor a3 = TransferDBUtil.a(TransferType.ANY, new TransferState[]{transferState});
            int i = 0;
            while (a3.moveToNext()) {
                int i2 = a3.getInt(a3.getColumnIndexOrThrow("_id"));
                i = i;
                if (this.f6700b.a(i2) == null) {
                    TransferRecord transferRecord = new TransferRecord(i2);
                    transferRecord.a(a3);
                    this.f6700b.a(transferRecord);
                    i++;
                }
                arrayList.add(Integer.valueOf(i2));
            }
            if (a3 != null) {
                f6698c.b("Closing the cursor for resumeAllTransfers");
                a3.close();
            }
            try {
                for (Integer num : arrayList) {
                    AmazonS3 a4 = S3ClientReference.a(num);
                    if (!(a4 == null || (a2 = this.f6700b.a(num.intValue())) == null || a2.a())) {
                        TransferDBUtil transferDBUtil = this.f6701d;
                        TransferStatusUpdater transferStatusUpdater = this.f6700b;
                        ConnectivityManager connectivityManager = this.f6699a;
                        if (!a2.a()) {
                            if ((a2.g == 0 && !TransferState.COMPLETED.equals(a2.o)) && a2.a(transferStatusUpdater, connectivityManager)) {
                                if (a2.n.equals(TransferType.DOWNLOAD)) {
                                    a2.K = TransferThreadPool.a(new DownloadTask(a2, a4, transferStatusUpdater));
                                } else {
                                    a2.K = TransferThreadPool.a(new UploadTask(a2, a4, transferDBUtil, transferStatusUpdater));
                                }
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                Log log = f6698c;
                log.e("Error in resuming the transfers." + e2.getMessage());
            }
            Log log2 = f6698c;
            log2.b(i + " transfers are loaded from database.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        boolean z;
        synchronized (this) {
            for (TransferRecord transferRecord : this.f6700b.a().values()) {
                if (!(S3ClientReference.a(Integer.valueOf(transferRecord.f6703a)) == null || transferRecord == null)) {
                    if (transferRecord.a(this.f6700b, this.f6699a) || TransferRecord.a(transferRecord.o)) {
                        z = false;
                    } else {
                        z = true;
                        if (transferRecord.a()) {
                            transferRecord.K.cancel(true);
                            z = true;
                        }
                    }
                    if (z) {
                        this.f6700b.a(transferRecord.f6703a, TransferState.WAITING_FOR_NETWORK);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        NetworkInfo activeNetworkInfo = this.f6699a.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            Log log = f6698c;
            log.c("Network connectivity changed detected.");
            log.c("Network connected: ".concat(String.valueOf(b())));
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TransferNetworkLossHandler.this.b()) {
                        TransferNetworkLossHandler.this.c();
                    } else {
                        TransferNetworkLossHandler.this.d();
                    }
                }
            }).start();
        }
    }
}
