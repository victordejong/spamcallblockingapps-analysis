package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzem.class */
public class zzem {

    /* renamed from: a */
    private volatile zzfh f8016a;

    /* renamed from: b */
    private volatile zzct f8017b;

    static {
        zzdo.m13866a();
    }

    /* renamed from: c */
    private final zzfh m13788c(zzfh zzfhVar) {
        if (this.f8016a == null) {
            synchronized (this) {
                if (this.f8016a == null) {
                    try {
                        this.f8016a = zzfhVar;
                        this.f8017b = zzct.f7956g;
                    } catch (zzeh e) {
                        this.f8016a = zzfhVar;
                        this.f8017b = zzct.f7956g;
                    }
                }
            }
        }
        return this.f8016a;
    }

    /* renamed from: a */
    public final zzct m13790a() {
        if (this.f8017b != null) {
            return this.f8017b;
        }
        synchronized (this) {
            if (this.f8017b != null) {
                return this.f8017b;
            }
            if (this.f8016a == null) {
                this.f8017b = zzct.f7956g;
            } else {
                this.f8017b = this.f8016a.mo13754r();
            }
            return this.f8017b;
        }
    }

    /* renamed from: b */
    public final int m13789b() {
        if (this.f8017b != null) {
            return this.f8017b.size();
        }
        if (this.f8016a != null) {
            return this.f8016a.mo13753s();
        }
        return 0;
    }

    /* renamed from: d */
    public final zzfh m13787d(zzfh zzfhVar) {
        zzfh zzfhVar2 = this.f8016a;
        this.f8017b = null;
        this.f8016a = zzfhVar;
        return zzfhVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzem)) {
            return false;
        }
        zzem zzemVar = (zzem) obj;
        zzfh zzfhVar = this.f8016a;
        zzfh zzfhVar2 = zzemVar.f8016a;
        return (zzfhVar == null && zzfhVar2 == null) ? m13790a().equals(zzemVar.m13790a()) : (zzfhVar == null || zzfhVar2 == null) ? zzfhVar != null ? zzfhVar.equals(zzemVar.m13788c(zzfhVar.mo13746a())) : m13788c(zzfhVar2.mo13746a()).equals(zzfhVar2) : zzfhVar.equals(zzfhVar2);
    }

    public int hashCode() {
        return 1;
    }
}
