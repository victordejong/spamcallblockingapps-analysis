package com.amazonaws.mobileconnectors.s3.transferutility;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.IBinder;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferService.class */
public class TransferService extends Service {

    /* renamed from: a  reason: collision with root package name */
    static TransferNetworkLossHandler f6707a;

    /* renamed from: c  reason: collision with root package name */
    private static final Log f6708c = LogFactory.a(TransferService.class);

    /* renamed from: b  reason: collision with root package name */
    boolean f6709b = true;

    /* renamed from: d  reason: collision with root package name */
    private int f6710d = 1;
    private boolean e = true;

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) != 0) {
            printWriter.printf("network status: %s\n", Boolean.valueOf(f6707a.b()));
            Map<Integer, TransferRecord> a2 = TransferStatusUpdater.a(this).a();
            printWriter.printf("# of active transfers: %d\n", Integer.valueOf(a2.size()));
            for (TransferRecord transferRecord : a2.values()) {
                printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.p, transferRecord.q, transferRecord.o, Long.valueOf(transferRecord.h), Long.valueOf(transferRecord.i));
            }
            printWriter.flush();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log log = f6708c;
        log.c("Starting Transfer Service to listen for network connectivity changes.");
        f6707a = TransferNetworkLossHandler.a(getApplicationContext());
        synchronized (this) {
            if (this.f6709b) {
                try {
                    try {
                        log.c("Registering the network receiver");
                        registerReceiver(f6707a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f6709b = false;
                    } catch (IllegalStateException e) {
                        f6708c.d("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException e2) {
                    f6708c.d("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                f6708c.c("Moving the service out of the Foreground state.");
                synchronized (this) {
                    stopForeground(this.e);
                }
            }
        } catch (Exception e) {
            f6708c.e("Error in moving the service out of the foreground state: ".concat(String.valueOf(e)));
        }
        try {
            f6708c.c("De-registering the network receiver.");
            synchronized (this) {
                if (!this.f6709b) {
                    unregisterReceiver(f6707a);
                    this.f6709b = true;
                    f6707a = null;
                }
            }
        } catch (IllegalArgumentException e2) {
            f6708c.d("Exception trying to de-register the network receiver");
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                synchronized (this) {
                    Notification notification = (Notification) intent.getParcelableExtra("notification");
                    if (notification != null) {
                        this.f6710d = intent.getIntExtra("ongoing-notification-id", this.f6710d);
                        this.e = intent.getBooleanExtra("remove-notification", this.e);
                        f6708c.c("Putting the service in Foreground state.");
                        startForeground(this.f6710d, notification);
                    } else {
                        f6708c.e("No notification is passed in the intent. Unable to transition to foreground.");
                    }
                }
            } catch (Exception e) {
                f6708c.e("Error in moving the service to foreground state: ".concat(String.valueOf(e)));
            }
        }
        synchronized (this) {
            if (this.f6709b) {
                try {
                    try {
                        f6708c.c("Registering the network receiver");
                        registerReceiver(f6707a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f6709b = false;
                    } catch (IllegalStateException e2) {
                        f6708c.d("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException e3) {
                    f6708c.d("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
        return 1;
    }
}
