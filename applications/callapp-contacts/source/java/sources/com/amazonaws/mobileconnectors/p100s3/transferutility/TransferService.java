package com.amazonaws.mobileconnectors.p100s3.transferutility;

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
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferService */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferService.class */
public class TransferService extends Service {

    /* renamed from: a */
    static TransferNetworkLossHandler f12201a;

    /* renamed from: c */
    private static final Log f12202c = LogFactory.m38584a(TransferService.class);

    /* renamed from: b */
    boolean f12203b = true;

    /* renamed from: d */
    private int f12204d = 1;

    /* renamed from: e */
    private boolean f12205e = true;

    @Override // android.app.Service
    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if ((getApplicationInfo().flags & 2) == 0) {
            return;
        }
        printWriter.printf("network status: %s\n", Boolean.valueOf(f12201a.m38547b()));
        Map<Integer, TransferRecord> m38539a = TransferStatusUpdater.m38534a(this).m38539a();
        printWriter.printf("# of active transfers: %d\n", Integer.valueOf(m38539a.size()));
        for (TransferRecord transferRecord : m38539a.values()) {
            printWriter.printf("bucket: %s, key: %s, status: %s, total size: %d, current: %d\n", transferRecord.f12190p, transferRecord.f12191q, transferRecord.f12189o, Long.valueOf(transferRecord.f12182h), Long.valueOf(transferRecord.f12183i));
        }
        printWriter.flush();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Can't bind to TransferService");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log log = f12202c;
        log.mo38590c("Starting Transfer Service to listen for network connectivity changes.");
        f12201a = TransferNetworkLossHandler.m38549a(getApplicationContext());
        synchronized (this) {
            if (this.f12203b) {
                try {
                    try {
                        log.mo38590c("Registering the network receiver");
                        registerReceiver(f12201a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f12203b = false;
                    } catch (IllegalStateException e) {
                        f12202c.mo38587d("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException e2) {
                    f12202c.mo38587d("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                f12202c.mo38590c("Moving the service out of the Foreground state.");
                synchronized (this) {
                    stopForeground(this.f12205e);
                }
            }
        } catch (Exception e) {
            f12202c.mo38586e("Error in moving the service out of the foreground state: ".concat(String.valueOf(e)));
        }
        try {
            f12202c.mo38590c("De-registering the network receiver.");
            synchronized (this) {
                if (!this.f12203b) {
                    unregisterReceiver(f12201a);
                    this.f12203b = true;
                    f12201a = null;
                }
            }
        } catch (IllegalArgumentException e2) {
            f12202c.mo38587d("Exception trying to de-register the network receiver");
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
                        this.f12204d = intent.getIntExtra("ongoing-notification-id", this.f12204d);
                        this.f12205e = intent.getBooleanExtra("remove-notification", this.f12205e);
                        f12202c.mo38590c("Putting the service in Foreground state.");
                        startForeground(this.f12204d, notification);
                    } else {
                        f12202c.mo38586e("No notification is passed in the intent. Unable to transition to foreground.");
                    }
                }
            } catch (Exception e) {
                f12202c.mo38586e("Error in moving the service to foreground state: ".concat(String.valueOf(e)));
            }
        }
        synchronized (this) {
            if (this.f12203b) {
                try {
                    try {
                        f12202c.mo38590c("Registering the network receiver");
                        registerReceiver(f12201a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.f12203b = false;
                    } catch (IllegalStateException e2) {
                        f12202c.mo38587d("Ignoring the leak in registering the receiver.");
                    }
                } catch (IllegalArgumentException e3) {
                    f12202c.mo38587d("Ignoring the exception trying to register the receiver for connectivity change.");
                }
            }
        }
        return 1;
    }
}
