package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bq2.class */
public final class bq2 {

    /* renamed from: a */
    private static bq2 f20553a;

    /* renamed from: b */
    private float f20554b = 0.0f;

    /* renamed from: c */
    private final tp2 f20555c;

    /* renamed from: d */
    private final rp2 f20556d;

    /* renamed from: e */
    private sp2 f20557e;

    /* renamed from: f */
    private up2 f20558f;

    public bq2(tp2 tp2Var, rp2 rp2Var) {
        this.f20555c = tp2Var;
        this.f20556d = rp2Var;
    }

    /* renamed from: a */
    public static bq2 m16299a() {
        if (f20553a == null) {
            f20553a = new bq2(new tp2(), new rp2());
        }
        return f20553a;
    }

    /* renamed from: b */
    public final void m16298b(Context context) {
        this.f20557e = new sp2(new Handler(), context, new qp2(), this, null);
    }

    /* renamed from: c */
    public final void m16297c() {
        wp2.m9495a().m9489g(this);
        wp2.m9495a().m9493c();
        if (wp2.m9495a().m9491e()) {
            yq2.m8728f().m8727g();
        }
        this.f20557e.m10939a();
    }

    /* renamed from: d */
    public final void m16296d() {
        yq2.m8728f().m8726h();
        wp2.m9495a().m9492d();
        this.f20557e.m10938b();
    }

    /* renamed from: e */
    public final void m16295e(float f) {
        this.f20554b = f;
        if (this.f20558f == null) {
            this.f20558f = up2.m10275a();
        }
        for (np2 np2Var : this.f20558f.m10270f()) {
            np2Var.m12829g().m14298j(f);
        }
    }

    /* renamed from: f */
    public final float m16294f() {
        return this.f20554b;
    }
}
