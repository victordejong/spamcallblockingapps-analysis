package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcv.class */
public class zzcv {

    /* renamed from: a */
    public volatile zzdo f29266a;

    /* renamed from: b */
    public volatile zzbb f29267b;

    static {
        zzbt.m10736b();
    }

    /* renamed from: a */
    public final int m10692a() {
        if (this.f29267b != null) {
            return this.f29267b.size();
        }
        if (this.f29266a != null) {
            return this.f29266a.mo10681g();
        }
        return 0;
    }

    /* renamed from: a */
    public final zzdo m10691a(zzdo zzdoVar) {
        if (this.f29266a == null) {
            synchronized (this) {
                if (this.f29266a == null) {
                    try {
                        this.f29266a = zzdoVar;
                        this.f29267b = zzbb.zzfi;
                    } catch (zzco e) {
                        this.f29266a = zzdoVar;
                        this.f29267b = zzbb.zzfi;
                    }
                }
            }
        }
        return this.f29266a;
    }

    /* renamed from: b */
    public final zzbb m10690b() {
        if (this.f29267b != null) {
            return this.f29267b;
        }
        synchronized (this) {
            try {
                if (this.f29267b != null) {
                    return this.f29267b;
                }
                this.f29267b = this.f29266a == null ? zzbb.zzfi : this.f29266a.mo10680r();
                return this.f29267b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final zzdo m10689b(zzdo zzdoVar) {
        zzdo zzdoVar2 = this.f29266a;
        this.f29267b = null;
        this.f29266a = zzdoVar;
        return zzdoVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcv)) {
            return false;
        }
        zzcv zzcvVar = (zzcv) obj;
        zzdo zzdoVar = this.f29266a;
        zzdo zzdoVar2 = zzcvVar.f29266a;
        return (zzdoVar == null && zzdoVar2 == null) ? m10690b().equals(zzcvVar.m10690b()) : (zzdoVar == null || zzdoVar2 == null) ? zzdoVar != null ? zzdoVar.equals(zzcvVar.m10691a(zzdoVar.mo10676h())) : m10691a(zzdoVar2.mo10676h()).equals(zzdoVar2) : zzdoVar.equals(zzdoVar2);
    }

    public int hashCode() {
        return 1;
    }
}
