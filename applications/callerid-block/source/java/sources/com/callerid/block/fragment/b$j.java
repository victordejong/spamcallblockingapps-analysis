package com.callerid.block.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.callerid.block.util.C1227w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$j.class */
public class b$j extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ b f4380a;

    /* renamed from: com.callerid.block.fragment.b$j$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$j$a.class */
    class RunnableC0958a implements Runnable {
        RunnableC0958a() {
            b$j.this = r4;
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
            b$j.this = r4;
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
        boolean z;
        Handler handler;
        RunnableC0959b runnableC0959b;
        if (C1227w.f5084a) {
            C1227w.m9527a("smsreceiver", "onReceive");
        }
        String action = intent.getAction();
        if (action == null || action.equals("")) {
            return;
        }
        action.hashCode();
        boolean z2 = true;
        boolean z3 = z2;
        switch (action.hashCode()) {
            case -1882860527:
                z3 = z2;
                if (action.equals("com.callerid.block.SMS_RECEIVER")) {
                    z3 = false;
                    break;
                }
                break;
            case -1266487619:
                z3 = z2;
                if (action.equals("com.callerid.block.SEARCH_SMS_OK")) {
                    z3 = true;
                    break;
                }
                break;
            case -216560145:
                z3 = z2;
                if (action.equals("com.callerid.block.ADD_UPDATE_CONTACTS")) {
                    z3 = true;
                    break;
                }
                break;
            case 832780183:
                z3 = z2;
                if (action.equals("com.callerid.block.SMS_INIT_DATA")) {
                    z3 = true;
                    break;
                }
                break;
        }
        switch (z3) {
            case false:
                handler = new Handler();
                runnableC0959b = new RunnableC0958a();
                z = true;
                break;
            case true:
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "search_sms_ok");
                }
                handler = new Handler();
                runnableC0959b = new RunnableC0959b();
                z = true;
                break;
            case true:
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "add_update_contacts");
                }
                b.T1(this.f4380a);
                return;
            case true:
                if (C1227w.f5084a) {
                    C1227w.m9527a("smsreceiver", "sms_init_data");
                }
                b.N1(this.f4380a, false);
                return;
            default:
                return;
        }
        handler.postDelayed(runnableC0959b, z ? 1L : 0L);
    }
}
