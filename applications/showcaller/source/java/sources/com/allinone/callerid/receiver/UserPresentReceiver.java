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
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/UserPresentReceiver.class */
public class UserPresentReceiver extends BroadcastReceiver {

    /* renamed from: com.allinone.callerid.receiver.UserPresentReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/UserPresentReceiver$a.class */
    class ServiceConnectionC3575a implements ServiceConnection {

        /* renamed from: a */
        final /* synthetic */ Context f11476a;

        ServiceConnectionC3575a(Context context) {
            UserPresentReceiver.this = r4;
            this.f11476a = context;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MyService m24807a;
            if ((iBinder instanceof BinderC3612a) && (m24807a = ((BinderC3612a) iBinder).m24807a()) != null) {
                m24807a.m24853a();
            }
            this.f11476a.getApplicationContext().unbindService(this);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                int i = Build.VERSION.SDK_INT;
                if (i <= 20) {
                    context.getApplicationContext().startService(new Intent(context.getApplicationContext(), DaemonService.class));
                } else if (i <= 25) {
                    context.getApplicationContext().startService(new Intent(context, MyService.class));
                } else if (i < 31) {
                    context.getApplicationContext().bindService(new Intent(context.getApplicationContext(), MyService.class), new ServiceConnectionC3575a(context), 1);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
