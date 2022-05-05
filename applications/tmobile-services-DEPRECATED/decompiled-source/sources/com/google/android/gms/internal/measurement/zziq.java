package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziq.class */
public class zziq {

    /* renamed from: a */
    private volatile zzjh f8539a;

    /* renamed from: b */
    private volatile zzgr f8540b;

    static {
        zzhm.m12475a();
    }

    /* renamed from: c */
    private final zzjh m12372c(zzjh zzjhVar) {
        if (this.f8539a == null) {
            synchronized (this) {
                if (this.f8539a == null) {
                    try {
                        this.f8539a = zzjhVar;
                        this.f8540b = zzgr.f8462g;
                    } catch (zzih e) {
                        this.f8539a = zzjhVar;
                        this.f8540b = zzgr.f8462g;
                    }
                }
            }
        }
        return this.f8539a;
    }

    /* renamed from: a */
    public final zzjh m12374a(zzjh zzjhVar) {
        zzjh zzjhVar2 = this.f8539a;
        this.f8540b = null;
        this.f8539a = zzjhVar;
        return zzjhVar2;
    }

    /* renamed from: b */
    public final int m12373b() {
        if (this.f8540b != null) {
            return this.f8540b.mo12617d();
        }
        if (this.f8539a != null) {
            return this.f8539a.mo12331d();
        }
        return 0;
    }

    /* renamed from: d */
    public final zzgr m12371d() {
        if (this.f8540b != null) {
            return this.f8540b;
        }
        synchronized (this) {
            if (this.f8540b != null) {
                return this.f8540b;
            }
            if (this.f8539a == null) {
                this.f8540b = zzgr.f8462g;
            } else {
                this.f8540b = this.f8539a.mo12332c();
            }
            return this.f8540b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziq)) {
            return false;
        }
        zziq zziqVar = (zziq) obj;
        zzjh zzjhVar = this.f8539a;
        zzjh zzjhVar2 = zziqVar.f8539a;
        return (zzjhVar == null && zzjhVar2 == null) ? m12371d().equals(zziqVar.m12371d()) : (zzjhVar == null || zzjhVar2 == null) ? zzjhVar != null ? zzjhVar.equals(zziqVar.m12372c(zzjhVar.mo12327t())) : m12372c(zzjhVar2.mo12327t()).equals(zzjhVar2) : zzjhVar.equals(zzjhVar2);
    }

    public int hashCode() {
        return 1;
    }
}
