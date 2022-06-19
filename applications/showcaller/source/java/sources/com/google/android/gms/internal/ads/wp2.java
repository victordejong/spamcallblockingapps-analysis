package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wp2.class */
public final class wp2 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    private static final wp2 f31665a = new wp2();

    /* renamed from: b */
    private Context f31666b;

    /* renamed from: c */
    private BroadcastReceiver f31667c;

    /* renamed from: d */
    private boolean f31668d;

    /* renamed from: e */
    private boolean f31669e;

    /* renamed from: f */
    private bq2 f31670f;

    private wp2() {
    }

    /* renamed from: a */
    public static wp2 m9495a() {
        return f31665a;
    }

    /* renamed from: f */
    public static /* synthetic */ void m9490f(wp2 wp2Var, boolean z) {
        if (wp2Var.f31669e != z) {
            wp2Var.f31669e = z;
            if (!wp2Var.f31668d) {
                return;
            }
            wp2Var.m9488h();
            if (wp2Var.f31670f == null) {
                return;
            }
            if (wp2Var.m9491e()) {
                yq2.m8728f().m8727g();
            } else {
                yq2.m8728f().m8725i();
            }
        }
    }

    /* renamed from: h */
    private final void m9488h() {
        boolean z = this.f31669e;
        for (np2 np2Var : up2.m10275a().m10271e()) {
            iq2 m12829g = np2Var.m12829g();
            if (m12829g.m14302e()) {
                aq2.m16505a().m16499g(m12829g.m14303d(), "setState", true != z ? "foregrounded" : "backgrounded");
            }
        }
    }

    /* renamed from: b */
    public final void m9494b(Context context) {
        this.f31666b = context.getApplicationContext();
    }

    /* renamed from: c */
    public final void m9493c() {
        this.f31667c = new vp2(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f31666b.registerReceiver(this.f31667c, intentFilter);
        this.f31668d = true;
        m9488h();
    }

    /* renamed from: d */
    public final void m9492d() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f31666b;
        if (context != null && (broadcastReceiver = this.f31667c) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f31667c = null;
        }
        this.f31668d = false;
        this.f31669e = false;
        this.f31670f = null;
    }

    /* renamed from: e */
    public final boolean m9491e() {
        return !this.f31669e;
    }

    /* renamed from: g */
    public final void m9489g(bq2 bq2Var) {
        this.f31670f = bq2Var;
    }
}
