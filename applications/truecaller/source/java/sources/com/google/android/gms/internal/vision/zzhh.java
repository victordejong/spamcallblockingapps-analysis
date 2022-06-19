package com.google.android.gms.internal.vision;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzhh.class */
public class zzhh {
    private static final zzgd zzrl = zzgd.zzfl();
    private zzfh zzxx;
    private volatile zzic zzxy;
    private volatile zzfh zzxz;

    private final zzic zzh(zzic zzicVar) {
        if (this.zzxy == null) {
            synchronized (this) {
                if (this.zzxy == null) {
                    try {
                        this.zzxy = zzicVar;
                        this.zzxz = zzfh.zzrx;
                    } catch (zzhc e) {
                        this.zzxy = zzicVar;
                        this.zzxz = zzfh.zzrx;
                    }
                }
            }
        }
        return this.zzxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhh)) {
            return false;
        }
        zzhh zzhhVar = (zzhh) obj;
        zzic zzicVar = this.zzxy;
        zzic zzicVar2 = zzhhVar.zzxy;
        return (zzicVar == null && zzicVar2 == null) ? zzdk().equals(zzhhVar.zzdk()) : (zzicVar == null || zzicVar2 == null) ? zzicVar != null ? zzicVar.equals(zzhhVar.zzh(zzicVar.zzgd())) : zzh(zzicVar2.zzgd()).equals(zzicVar2) : zzicVar.equals(zzicVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final zzfh zzdk() {
        if (this.zzxz != null) {
            return this.zzxz;
        }
        synchronized (this) {
            if (this.zzxz != null) {
                return this.zzxz;
            }
            if (this.zzxy == null) {
                this.zzxz = zzfh.zzrx;
            } else {
                this.zzxz = this.zzxy.zzdk();
            }
            return this.zzxz;
        }
    }

    public final int zzgf() {
        if (this.zzxz != null) {
            return this.zzxz.size();
        }
        if (this.zzxy == null) {
            return 0;
        }
        return this.zzxy.zzgf();
    }

    public final zzic zzi(zzic zzicVar) {
        zzic zzicVar2 = this.zzxy;
        this.zzxx = null;
        this.zzxz = null;
        this.zzxy = zzicVar;
        return zzicVar2;
    }
}
