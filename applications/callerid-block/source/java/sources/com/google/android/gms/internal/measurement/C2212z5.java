package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.z5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z5.class */
public class C2212z5 {

    /* renamed from: a */
    protected volatile q6 f9855a;

    /* renamed from: b */
    private volatile zzgr f9856b;

    static {
        C2107e5.m4405a();
    }

    /* renamed from: a */
    public final int m4078a() {
        if (this.f9856b != null) {
            return this.f9856b.zza.length;
        }
        if (this.f9855a == null) {
            return 0;
        }
        return this.f9855a.b();
    }

    /* renamed from: b */
    public final zzgr m4077b() {
        if (this.f9856b != null) {
            return this.f9856b;
        }
        synchronized (this) {
            try {
                if (this.f9856b != null) {
                    return this.f9856b;
                }
                this.f9856b = this.f9855a == null ? zzgr.f9861b : this.f9855a.h0();
                return this.f9856b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    protected final void m4076c(q6 q6Var) {
        if (this.f9855a != null) {
            return;
        }
        synchronized (this) {
            if (this.f9855a != null) {
                return;
            }
            try {
                this.f9855a = q6Var;
                this.f9856b = zzgr.f9861b;
            } catch (zzib e) {
                this.f9855a = q6Var;
                this.f9856b = zzgr.f9861b;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2212z5)) {
            return false;
        }
        C2212z5 c2212z5 = (C2212z5) obj;
        q6 q6Var = this.f9855a;
        q6 q6Var2 = c2212z5.f9855a;
        if (q6Var == null && q6Var2 == null) {
            return m4077b().equals(c2212z5.m4077b());
        }
        if (q6Var != null && q6Var2 != null) {
            return q6Var.equals(q6Var2);
        }
        if (q6Var != null) {
            c2212z5.m4076c(q6Var.m4193e());
            return q6Var.equals(c2212z5.f9855a);
        }
        m4076c(q6Var2.m4193e());
        return this.f9855a.equals(q6Var2);
    }

    public int hashCode() {
        return 1;
    }
}
