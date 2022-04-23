package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yc2.class */
public class yc2 {

    /* renamed from: a */
    protected volatile qd2 f9214a;

    /* renamed from: b */
    private volatile zzesf f9215b;

    static {
        bc2.m8043a();
    }

    /* renamed from: a */
    public final int m4764a() {
        if (this.f9215b != null) {
            return this.f9215b.zza.length;
        }
        if (this.f9214a != null) {
            return this.f9214a.g();
        }
        return 0;
    }

    /* renamed from: b */
    public final zzesf m4763b() {
        if (this.f9215b != null) {
            return this.f9215b;
        }
        synchronized (this) {
            try {
                if (this.f9215b != null) {
                    return this.f9215b;
                }
                this.f9215b = this.f9214a == null ? zzesf.f9578b : this.f9214a.d();
                return this.f9215b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    protected final void m4762c(qd2 qd2Var) {
        if (this.f9214a == null) {
            synchronized (this) {
                if (this.f9214a == null) {
                    try {
                        this.f9214a = qd2Var;
                        this.f9215b = zzesf.f9578b;
                    } catch (zzett e) {
                        this.f9214a = qd2Var;
                        this.f9215b = zzesf.f9578b;
                    }
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yc2)) {
            return false;
        }
        yc2 yc2Var = (yc2) obj;
        qd2 qd2Var = this.f9214a;
        qd2 qd2Var2 = yc2Var.f9214a;
        if (qd2Var == null && qd2Var2 == null) {
            return m4763b().equals(yc2Var.m4763b());
        }
        if (qd2Var != null && qd2Var2 != null) {
            return qd2Var.equals(qd2Var2);
        }
        if (qd2Var != null) {
            yc2Var.m4762c(qd2Var.m5980f());
            return qd2Var.equals(yc2Var.f9214a);
        }
        m4762c(qd2Var2.m5980f());
        return this.f9214a.equals(qd2Var2);
    }

    public int hashCode() {
        return 1;
    }
}
