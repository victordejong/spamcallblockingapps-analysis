package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.internal.ads.u30;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zn1.class */
public final class zn1<AdT extends u30> {

    /* renamed from: a */
    private final zm1 f9398a;
    @GuardedBy("this")

    /* renamed from: b */
    private yn1 f9399b;
    @GuardedBy("this")

    /* renamed from: c */
    private a02<ln1<AdT>> f9400c;
    @GuardedBy("this")

    /* renamed from: d */
    private rz1<ln1<AdT>> f9401d;

    /* renamed from: e */
    private final dn1 f9402e;

    /* renamed from: f */
    private final xn1<AdT> f9403f;
    @GuardedBy("this")

    /* renamed from: i */
    private int f9406i = 1;

    /* renamed from: h */
    private final gz1<ln1<AdT>> f9405h = new vn1(this);
    @GuardedBy("this.pendingTopOffs")

    /* renamed from: g */
    private final LinkedList<yn1> f9404g = new LinkedList<>();

    public zn1(dn1 dn1Var, zm1 zm1Var, xn1<AdT> xn1Var) {
        this.f9402e = dn1Var;
        this.f9398a = zm1Var;
        this.f9403f = xn1Var;
        zm1Var.m4601a(new un1(this));
    }

    /* renamed from: l */
    public final void m4565l(yn1 yn1Var) {
        synchronized (this.f9404g) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7326S3)).booleanValue() && !C1407r.m8916h().m4585l().m8868p().m5201i()) {
                this.f9404g.clear();
                return;
            }
            if (!m4564m()) {
                if (yn1Var != null) {
                    this.f9404g.add(yn1Var);
                }
                return;
            }
            if (yn1Var == null && this.f9404g.isEmpty()) {
                return;
            }
            yn1 yn1Var2 = yn1Var;
            if (yn1Var == null) {
                yn1Var2 = this.f9404g.pollFirst();
            }
            if (yn1Var2.m4728b() == null || !this.f9402e.m7719c(yn1Var2.m4728b())) {
                m4565l(null);
                return;
            }
            this.f9399b = yn1Var2.m4727c();
            this.f9400c = a02.E();
            rz1<ln1<AdT>> m4880b = this.f9403f.m4880b(this.f9399b);
            this.f9401d = m4880b;
            kz1.o(m4880b, this.f9405h, yn1Var2.zza());
        }
    }

    /* renamed from: m */
    private final boolean m4564m() {
        rz1<ln1<AdT>> rz1Var = this.f9401d;
        return rz1Var == null || rz1Var.isDone();
    }

    /* renamed from: a */
    public final void m4576a(yn1 yn1Var) {
        synchronized (this.f9404g) {
            this.f9404g.add(yn1Var);
        }
    }

    /* renamed from: b */
    public final rz1<wn1<AdT>> m4575b(yn1 yn1Var) {
        synchronized (this) {
            if (m4564m()) {
                return null;
            }
            if (this.f9406i == 2) {
                return null;
            }
            if (this.f9399b.m4728b() != null && yn1Var.m4728b() != null && this.f9399b.m4728b().equals(yn1Var.m4728b())) {
                this.f9406i = 2;
                return kz1.h(this.f9400c, new tn1(this), yn1Var.zza());
            }
            this.f9406i = 3;
            return null;
        }
    }

    /* renamed from: c */
    final /* synthetic */ void m4574c() {
        synchronized (this) {
            m4565l(this.f9399b);
        }
    }

    /* renamed from: d */
    final /* synthetic */ rz1 m4573d(ln1 ln1Var) {
        rz1 a;
        synchronized (this) {
            a = kz1.a(new wn1(ln1Var, this.f9399b));
        }
        return a;
    }
}
