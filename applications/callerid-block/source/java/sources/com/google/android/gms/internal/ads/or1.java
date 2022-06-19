package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/or1.class */
public final class or1 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: f */
    private static final or1 f7892f = new or1();

    /* renamed from: a */
    private Context f7893a;

    /* renamed from: b */
    private BroadcastReceiver f7894b;

    /* renamed from: c */
    private boolean f7895c;

    /* renamed from: d */
    private boolean f7896d;

    /* renamed from: e */
    private tr1 f7897e;

    private or1() {
    }

    /* renamed from: a */
    public static or1 m6266a() {
        return f7892f;
    }

    /* renamed from: f */
    public static /* synthetic */ void m6261f(or1 or1Var, boolean z) {
        if (or1Var.f7896d != z) {
            or1Var.f7896d = z;
            if (!or1Var.f7895c) {
                return;
            }
            or1Var.m6259h();
            if (or1Var.f7897e == null) {
                return;
            }
            if (or1Var.m6262e()) {
                qs1.b().c();
            } else {
                qs1.b().e();
            }
        }
    }

    /* renamed from: h */
    private final void m6259h() {
        boolean z = this.f7896d;
        for (er1 er1Var : mr1.m6521a().m6517e()) {
            zr1 h = er1Var.h();
            if (h.m4541e()) {
                sr1.m5623a().m5617g(h.m4542d(), "setState", true != z ? "foregrounded" : "backgrounded");
            }
        }
    }

    /* renamed from: b */
    public final void m6265b(Context context) {
        this.f7893a = context.getApplicationContext();
    }

    /* renamed from: c */
    public final void m6264c() {
        this.f7894b = new nr1(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f7893a.registerReceiver(this.f7894b, intentFilter);
        this.f7895c = true;
        m6259h();
    }

    /* renamed from: d */
    public final void m6263d() {
        BroadcastReceiver broadcastReceiver;
        Context context = this.f7893a;
        if (context != null && (broadcastReceiver = this.f7894b) != null) {
            context.unregisterReceiver(broadcastReceiver);
            this.f7894b = null;
        }
        this.f7895c = false;
        this.f7896d = false;
        this.f7897e = null;
    }

    /* renamed from: e */
    public final boolean m6262e() {
        return !this.f7896d;
    }

    /* renamed from: g */
    public final void m6260g(tr1 tr1Var) {
        this.f7897e = tr1Var;
    }
}
