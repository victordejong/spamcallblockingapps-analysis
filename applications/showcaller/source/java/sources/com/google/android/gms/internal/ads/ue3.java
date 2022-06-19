package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ue3.class */
public class ue3 {

    /* renamed from: a */
    private static final vd3 f30589a = vd3.m10041a();

    /* renamed from: b */
    protected volatile mf3 f30590b;

    /* renamed from: c */
    private volatile zzgex f30591c;

    /* renamed from: a */
    public final int m10341a() {
        if (this.f30591c != null) {
            return ((zzget) this.f30591c).zza.length;
        }
        if (this.f30590b == null) {
            return 0;
        }
        return this.f30590b.mo13200d();
    }

    /* renamed from: b */
    public final zzgex m10340b() {
        if (this.f30591c != null) {
            return this.f30591c;
        }
        synchronized (this) {
            if (this.f30591c != null) {
                return this.f30591c;
            }
            if (this.f30590b == null) {
                this.f30591c = zzgex.f34110d;
            } else {
                this.f30591c = this.f30590b.mo10722N();
            }
            return this.f30591c;
        }
    }

    /* renamed from: c */
    protected final void m10339c(mf3 mf3Var) {
        if (this.f30590b != null) {
            return;
        }
        synchronized (this) {
            if (this.f30590b != null) {
                return;
            }
            try {
                this.f30590b = mf3Var;
                this.f30591c = zzgex.f34110d;
            } catch (zzggm e) {
                this.f30590b = mf3Var;
                this.f30591c = zzgex.f34110d;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ue3)) {
            return false;
        }
        ue3 ue3Var = (ue3) obj;
        mf3 mf3Var = this.f30590b;
        mf3 mf3Var2 = ue3Var.f30590b;
        if (mf3Var == null && mf3Var2 == null) {
            return m10340b().equals(ue3Var.m10340b());
        }
        if (mf3Var != null && mf3Var2 != null) {
            return mf3Var.equals(mf3Var2);
        }
        if (mf3Var != null) {
            ue3Var.m10339c(mf3Var.mo12922g());
            return mf3Var.equals(ue3Var.f30590b);
        }
        m10339c(mf3Var2.mo12922g());
        return this.f30590b.equals(mf3Var2);
    }

    public int hashCode() {
        return 1;
    }
}
