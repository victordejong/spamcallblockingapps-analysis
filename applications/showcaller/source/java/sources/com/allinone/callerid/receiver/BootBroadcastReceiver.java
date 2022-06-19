package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import com.allinone.callerid.service.BinderC3612a;
import com.allinone.callerid.service.DaemonService;
import com.allinone.callerid.service.MyService;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/BootBroadcastReceiver.class */
public class BootBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: com.allinone.callerid.receiver.BootBroadcastReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/BootBroadcastReceiver$a.class */
    class ServiceConnectionC3573a implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Context f11466a;

        ServiceConnectionC3573a(Context context) {
            BootBroadcastReceiver.this = r4;
            this.f11466a = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MyService m24807a;
            if ((iBinder instanceof BinderC3612a) && (m24807a = ((BinderC3612a) iBinder).m24807a()) != null) {
                m24807a.m24853a();
            }
            this.f11466a.getApplicationContext().unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
                C3810q.m24071b().m24070c("action_boot_completed");
                int i = Build.VERSION.SDK_INT;
                if (i <= 20) {
                    context.getApplicationContext().startService(new Intent(context.getApplicationContext(), DaemonService.class));
                } else if (i <= 25) {
                    context.getApplicationContext().startService(new Intent(context.getApplicationContext(), MyService.class));
                } else if (i < 31) {
                    context.getApplicationContext().bindService(new Intent(context.getApplicationContext(), MyService.class), new ServiceConnectionC3573a(context), 1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
