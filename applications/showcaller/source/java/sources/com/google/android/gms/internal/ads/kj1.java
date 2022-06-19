package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import com.google.android.gms.ads.internal.overlay.AbstractC5659u;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kj1.class */
public final class kj1 implements AbstractC6673kq, m10, AbstractC5653o, o10, AbstractC5659u {

    /* renamed from: d */
    private AbstractC6673kq f25228d;

    /* renamed from: e */
    private m10 f25229e;

    /* renamed from: f */
    private AbstractC5653o f25230f;

    /* renamed from: g */
    private o10 f25231g;

    /* renamed from: h */
    private AbstractC5659u f25232h;

    public /* synthetic */ kj1(nj1 nj1Var) {
    }

    /* renamed from: d */
    public final void m13881d(AbstractC6673kq abstractC6673kq, m10 m10Var, AbstractC5653o abstractC5653o, o10 o10Var, AbstractC5659u abstractC5659u) {
        synchronized (this) {
            this.f25228d = abstractC6673kq;
            this.f25229e = m10Var;
            this.f25230f = abstractC5653o;
            this.f25231g = o10Var;
            this.f25232h = abstractC5659u;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9244a();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9243a3();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9242a6(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9240e();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.o10
    /* renamed from: g0 */
    public final void mo8902g0(String str, String str2) {
        synchronized (this) {
            o10 o10Var = this.f25231g;
            if (o10Var != null) {
                o10Var.mo8902g0(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.m10
    /* renamed from: i0 */
    public final void mo10647i0(String str, Bundle bundle) {
        synchronized (this) {
            m10 m10Var = this.f25229e;
            if (m10Var != null) {
                m10Var.mo10647i0(str, bundle);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9237m2();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        synchronized (this) {
            AbstractC5653o abstractC5653o = this.f25230f;
            if (abstractC5653o != null) {
                abstractC5653o.mo9229y4();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        synchronized (this) {
            AbstractC6673kq abstractC6673kq = this.f25228d;
            if (abstractC6673kq != null) {
                abstractC6673kq.mo7877z0();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5659u
    public final void zzg() {
        synchronized (this) {
            AbstractC5659u abstractC5659u = this.f25232h;
            if (abstractC5659u != null) {
                abstractC5659u.zzg();
            }
        }
    }
}
