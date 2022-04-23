package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcz.class */
public class zzcz {
    private static final zzbz zzdk = zzbz.zzai();
    private zzbi zzjd;
    private volatile zzdr zzje;
    private volatile zzbi zzjf;

    private final zzdr zzg(zzdr zzdrVar) {
        if (this.zzje == null) {
            synchronized (this) {
                if (this.zzje == null) {
                    try {
                        this.zzje = zzdrVar;
                        this.zzjf = zzbi.zzdq;
                    } catch (zzcs e) {
                        this.zzje = zzdrVar;
                        this.zzjf = zzbi.zzdq;
                    }
                }
            }
        }
        return this.zzje;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcz)) {
            return false;
        }
        zzcz zzczVar = (zzcz) obj;
        zzdr zzdrVar = this.zzje;
        zzdr zzdrVar2 = zzczVar.zzje;
        return (zzdrVar == null && zzdrVar2 == null) ? zzl().equals(zzczVar.zzl()) : (zzdrVar == null || zzdrVar2 == null) ? zzdrVar != null ? zzdrVar.equals(zzczVar.zzg(zzdrVar.zzba())) : zzg(zzdrVar2.zzba()).equals(zzdrVar2) : zzdrVar.equals(zzdrVar2);
    }

    public int hashCode() {
        return 1;
    }

    public final int zzan() {
        if (this.zzjf != null) {
            return this.zzjf.size();
        }
        if (this.zzje != null) {
            return this.zzje.zzan();
        }
        return 0;
    }

    public final zzdr zzh(zzdr zzdrVar) {
        zzdr zzdrVar2 = this.zzje;
        this.zzjd = null;
        this.zzjf = null;
        this.zzje = zzdrVar;
        return zzdrVar2;
    }

    public final zzbi zzl() {
        if (this.zzjf != null) {
            return this.zzjf;
        }
        synchronized (this) {
            if (this.zzjf != null) {
                return this.zzjf;
            }
            this.zzjf = this.zzje == null ? zzbi.zzdq : this.zzje.zzl();
            return this.zzjf;
        }
    }
}
