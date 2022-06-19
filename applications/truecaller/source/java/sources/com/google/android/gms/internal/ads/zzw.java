package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzw.class */
public class zzw {
    public static final zzw zza;
    @Deprecated
    public static final zzw zzb;
    public static final zzadw<zzw> zzz = zzu.zza;
    public final int zzk;
    public final int zzl;
    public final boolean zzm;
    public final zzfoj<String> zzn;
    public final zzfoj<String> zzo;
    public final zzfoj<String> zzs;
    public final zzfoj<String> zzt;
    public final int zzu;
    public final zzfot<Integer> zzy;
    public final int zzc = Integer.MAX_VALUE;
    public final int zzd = Integer.MAX_VALUE;
    public final int zze = Integer.MAX_VALUE;
    public final int zzf = Integer.MAX_VALUE;
    public final int zzg = 0;
    public final int zzh = 0;
    public final int zzi = 0;
    public final int zzj = 0;
    public final int zzp = 0;
    public final int zzq = Integer.MAX_VALUE;
    public final int zzr = Integer.MAX_VALUE;
    public final boolean zzv = false;
    public final boolean zzw = false;
    public final boolean zzx = false;

    static {
        zzw zzwVar = new zzw(new zzv());
        zza = zzwVar;
        zzb = zzwVar;
    }

    public zzw(zzv zzvVar) {
        int i;
        int i2;
        boolean z;
        zzfoj<String> zzfojVar;
        zzfoj<String> zzfojVar2;
        zzfoj<String> zzfojVar3;
        zzfoj<String> zzfojVar4;
        int i3;
        zzfot<Integer> zzfotVar;
        i = zzvVar.zza;
        this.zzk = i;
        i2 = zzvVar.zzb;
        this.zzl = i2;
        z = zzvVar.zzc;
        this.zzm = z;
        zzfojVar = zzvVar.zzd;
        this.zzn = zzfojVar;
        zzfojVar2 = zzvVar.zze;
        this.zzo = zzfojVar2;
        zzfojVar3 = zzvVar.zzf;
        this.zzs = zzfojVar3;
        zzfojVar4 = zzvVar.zzg;
        this.zzt = zzfojVar4;
        i3 = zzvVar.zzh;
        this.zzu = i3;
        zzfotVar = zzvVar.zzi;
        this.zzy = zzfotVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzw zzwVar = (zzw) obj;
        return this.zzm == zzwVar.zzm && this.zzk == zzwVar.zzk && this.zzl == zzwVar.zzl && this.zzn.equals(zzwVar.zzn) && this.zzo.equals(zzwVar.zzo) && this.zzs.equals(zzwVar.zzs) && this.zzt.equals(zzwVar.zzt) && this.zzu == zzwVar.zzu && this.zzy.equals(zzwVar.zzy);
    }

    public int hashCode() {
        boolean z = this.zzm;
        int i = this.zzk;
        int i2 = this.zzl;
        int hashCode = this.zzn.hashCode();
        int hashCode2 = this.zzo.hashCode();
        int hashCode3 = this.zzs.hashCode();
        int hashCode4 = this.zzt.hashCode();
        return this.zzy.hashCode() + ((((hashCode4 + ((hashCode3 + ((((((hashCode2 + ((hashCode + (((((((z ? 1 : 0) - 1048002209) * 31) + i) * 31) + i2) * 31)) * 31)) * 961) + Integer.MAX_VALUE) * 31) + Integer.MAX_VALUE) * 31)) * 31)) * 31) + this.zzu) * 923521);
    }
}
