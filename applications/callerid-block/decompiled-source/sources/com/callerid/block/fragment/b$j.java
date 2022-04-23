package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$j.class */
class b$j extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ b f4380a;

    /* renamed from: com.callerid.block.fragment.b$j$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$j$a.class */
    class RunnableC0958a implements Runnable {
        RunnableC0958a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.T1(b$j.this.f4380a);
        }
    }

    /* renamed from: com.callerid.block.fragment.b$j$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$j$b.class */
    class RunnableC0959b implements Runnable {
        RunnableC0959b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.N1(b$j.this.f4380a, true);
        }
    }

    b$j(b bVar) {
        this.f4380a = bVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        long j;
        Handler handler;
        Runnable runnable;
        if (C1227w.f5084a) {
            C1227w.m9527a("smsreceiver", "onReceive");
        }
        String action = intent.getAction();
        if (action != null && !action.equals("")) {
            action.hashCode();
            char c = 65535;
            switch (action.hashCode()) {
                case -1882860527:
                    if (action.equals("com.callerid.block.SMS_RECEIVER")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1266487619:
                    if (action.equals("com.callerid.block.SEARCH_SMS_OK")) {
                        c = 1;
                        break;
                    }
                    break;
                case -216560145:
                    if (action.equals("com.callerid.block.ADD_UPDATE_CONTACTS")) {
                        c = 2;
                        break;
                    }
                    break;
                case 832780183:
                    if (action.equals("com.callerid.block.SMS_INIT_DATA")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    handler = new Handler();
                    runnable = new RunnableC0958a();
                    j = 1000;
                    break;
                case 1:
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "search_sms_ok");
                    }
                    handler = new Handler();
                    runnable = new RunnableC0959b();
                    j = 2000;
                    break;
                case 2:
                    if (C1227w.f5084a) {
                        C1227w.m9527a("tony", "add_update_contacts");
                    }
                    b.T1(this.f4380a);
                    return;
                case 3:
                    if (C1227w.f5084a) {
                        C1227w.m9527a("smsreceiver", "sms_init_data");
                    }
                    b.N1(this.f4380a, false);
                    return;
                default:
                    return;
            }
            handler.postDelayed(runnable, j);
        }
    }
}
