package com.kedlin.cca.receivers;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
@TargetApi(23)
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/NotificationBroadcastReceiver.class */
public class NotificationBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public f61 f3751a = null;

    /* renamed from: a */
    public final void m4334a() {
        f61 f61Var = this.f3751a;
        g61 g61Var = f61Var.f6541d.get(f61Var.m1948g());
        if (g61Var != null) {
            this.f3751a.m1954a(g61Var.f6662c);
        }
    }

    /* renamed from: b */
    public final void m4333b() {
        f61 f61Var = this.f3751a;
        g61 g61Var = f61Var.f6541d.get(f61Var.m1948g());
        if (g61Var != null) {
            this.f3751a.m1952c(g61Var.f6662c);
        }
    }

    /* renamed from: c */
    public final void m4332c() {
        f61 f61Var = this.f3751a;
        g61 g61Var = f61Var.f6541d.get(f61Var.m1948g());
        if (g61Var != null) {
            this.f3751a.m1952c(g61Var.f6662c);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        f61 m1947h;
        int i;
        String action = intent.getAction();
        this.f3751a = f61.m1947h();
        if (action.equals("com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL")) {
            m4334a();
        } else if (action.equals("com.android.incallui.ACTION_DECLINE_INCOMING_CALL")) {
            m4333b();
        } else if (action.equals("com.android.incallui.ACTION_HANG_UP_ONGOING_CALL")) {
            m4332c();
        } else {
            if (action.equals("com.android.incallui.ACTION_TURN_ON_SPEAKER")) {
                m1947h = f61.m1947h();
                i = 8;
            } else if (!action.equals("com.android.incallui.ACTION_TURN_OFF_SPEAKER")) {
                return;
            } else {
                m1947h = f61.m1947h();
                i = 5;
            }
            m1947h.m1940o(i);
        }
    }
}
