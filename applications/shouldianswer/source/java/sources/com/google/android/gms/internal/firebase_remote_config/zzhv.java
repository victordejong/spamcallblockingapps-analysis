package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhv.class */
public class zzhv {
    private static final zzgx zzom = zzgx.zzgh();
    private zzfx zzut;
    private volatile zziq zzuu;
    private volatile zzfx zzuv;

    private final zziq zzh(zziq zziqVar) {
        if (this.zzuu == null) {
            synchronized (this) {
                if (this.zzuu == null) {
                    try {
                        this.zzuu = zziqVar;
                        this.zzuv = zzfx.zzov;
                    } catch (zzhq e) {
                        this.zzuu = zziqVar;
                        this.zzuv = zzfx.zzov;
                    }
                }
            }
        }
        return this.zzuu;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhv)) {
            return false;
        }
        zzhv zzhvVar = (zzhv) obj;
        zziq zziqVar = this.zzuu;
        zziq zziqVar2 = zzhvVar.zzuu;
        return (zziqVar == null && zziqVar2 == null) ? zzep().equals(zzhvVar.zzep()) : (zziqVar == null || zziqVar2 == null) ? zziqVar != null ? zziqVar.equals(zzhvVar.zzh(zziqVar.zzgw())) : zzh(zziqVar2.zzgw()).equals(zziqVar2) : zziqVar.equals(zziqVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzfx zzep() {
        if (this.zzuv != null) {
            return this.zzuv;
        }
        synchronized (this) {
            if (this.zzuv != null) {
                return this.zzuv;
            }
            if (this.zzuu == null) {
                this.zzuv = zzfx.zzov;
            } else {
                this.zzuv = this.zzuu.zzep();
            }
            return this.zzuv;
        }
    }

    public final int zzgs() {
        if (this.zzuv != null) {
            return this.zzuv.size();
        }
        if (this.zzuu == null) {
            return 0;
        }
        return this.zzuu.zzgs();
    }

    public final zziq zzi(zziq zziqVar) {
        zziq zziqVar2 = this.zzuu;
        this.zzut = null;
        this.zzuv = null;
        this.zzuu = zziqVar;
        return zziqVar2;
    }
}
