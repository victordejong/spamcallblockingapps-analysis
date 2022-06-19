package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzhb.class */
public final class zzhb extends zzfu<zzhb> implements Cloneable {
    private static volatile zzhb[] zzbkd;
    private String zzbke = "";
    private String value = "";

    public zzhb() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    public static zzhb[] zzge() {
        if (zzbkd == null) {
            synchronized (zzfy.zzrr) {
                if (zzbkd == null) {
                    zzbkd = new zzhb[0];
                }
            }
        }
        return zzbkd;
    }

    /* renamed from: zzgf */
    public final zzhb clone() {
        try {
            return (zzhb) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhb)) {
            return false;
        }
        zzhb zzhbVar = (zzhb) obj;
        String str = this.zzbke;
        if (str == null) {
            if (zzhbVar.zzbke != null) {
                return false;
            }
        } else if (!str.equals(zzhbVar.zzbke)) {
            return false;
        }
        String str2 = this.value;
        if (str2 == null) {
            if (zzhbVar.value != null) {
                return false;
            }
        } else if (!str2.equals(zzhbVar.value)) {
            return false;
        }
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzhbVar.zzrj == null || zzhbVar.zzrj.isEmpty() : this.zzrj.equals(zzhbVar.zzrj);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        String str = this.zzbke;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.value;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        int i = 0;
        if (this.zzrj != null) {
            i = this.zzrj.isEmpty() ? 0 : this.zzrj.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) {
        String str = this.zzbke;
        if (str != null && !str.equals("")) {
            zzfsVar.zza(1, this.zzbke);
        }
        String str2 = this.value;
        if (str2 != null && !str2.equals("")) {
            zzfsVar.zza(2, this.value);
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int zzen() {
        int zzen = super.zzen();
        String str = this.zzbke;
        int i = zzen;
        if (str != null) {
            i = zzen;
            if (!str.equals("")) {
                i = zzen + zzfs.zzb(1, this.zzbke);
            }
        }
        String str2 = this.value;
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (!str2.equals("")) {
                i2 = i + zzfs.zzb(2, this.value);
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzhb zzeo() {
        return (zzhb) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final /* synthetic */ zzfz zzep() {
        return (zzhb) clone();
    }
}
