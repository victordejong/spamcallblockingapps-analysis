package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.util.AbstractC6227e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lf0.class */
public final class lf0 {

    /* renamed from: a */
    private final AbstractC6227e f26079a;

    /* renamed from: b */
    private final AbstractC5728q1 f26080b;

    /* renamed from: c */
    private final lg0 f26081c;

    public lf0(AbstractC6227e abstractC6227e, AbstractC5728q1 abstractC5728q1, lg0 lg0Var) {
        this.f26079a = abstractC6227e;
        this.f26080b = abstractC5728q1;
        this.f26081c = lg0Var;
    }

    /* renamed from: a */
    public final void m13568a(int i, long j) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25727k0)).booleanValue()) {
            return;
        }
        if (j - this.f26080b.mo17982I() < 0) {
            C5722o1.m17990k("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25735l0)).booleanValue()) {
            this.f26080b.mo17976M0(-1);
            this.f26080b.mo17968S0(j);
        } else {
            this.f26080b.mo17976M0(i);
            this.f26080b.mo17968S0(j);
        }
        m13567b();
    }

    /* renamed from: b */
    public final void m13567b() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25735l0)).booleanValue()) {
            return;
        }
        this.f26081c.m13547f();
    }
}
