package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AbstractC5610d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j10.class */
public final class j10 {

    /* renamed from: a */
    private final AbstractC5610d.AbstractC5612b f24751a;

    /* renamed from: b */
    private final AbstractC5610d.AbstractC5611a f24752b;

    /* renamed from: c */
    private AbstractC5610d f24753c;

    public j10(AbstractC5610d.AbstractC5612b abstractC5612b, AbstractC5610d.AbstractC5611a abstractC5611a) {
        this.f24751a = abstractC5612b;
        this.f24752b = abstractC5611a;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC5610d.AbstractC5611a m14247b(j10 j10Var) {
        return j10Var.f24752b;
    }

    /* renamed from: e */
    public static /* synthetic */ AbstractC5610d m14244e(j10 j10Var, AbstractC7237zz abstractC7237zz) {
        return j10Var.m14243f(abstractC7237zz);
    }

    /* renamed from: f */
    private final AbstractC5610d m14243f(AbstractC7237zz abstractC7237zz) {
        synchronized (this) {
            AbstractC5610d abstractC5610d = this.f24753c;
            if (abstractC5610d != null) {
                return abstractC5610d;
            }
            a00 a00Var = new a00(abstractC7237zz);
            this.f24753c = a00Var;
            return a00Var;
        }
    }

    /* renamed from: c */
    public final m00 m14246c() {
        return new i10(this, null);
    }

    /* renamed from: d */
    public final j00 m14245d() {
        if (this.f24752b == null) {
            return null;
        }
        return new h10(this, null);
    }
}
