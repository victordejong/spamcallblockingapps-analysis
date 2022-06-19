package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcn.class */
public class zzcn {
    public static final zzcn zza;
    @Deprecated
    public static final zzcn zzb;
    public static final zzj<zzcn> zzc = zzcj.zza;
    public final zzftc<Integer> zzA;
    public final int zzl;
    public final int zzm;
    public final boolean zzn;
    public final zzfss<String> zzo;
    public final zzfss<String> zzp;
    public final zzfss<String> zzt;
    public final zzfss<String> zzu;
    public final int zzv;
    public final zzfsw<zzcf, zzcm> zzz;
    public final int zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final int zze = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final int zzf = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final int zzg = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final int zzh = 0;
    public final int zzi = 0;
    public final int zzj = 0;
    public final int zzk = 0;
    public final int zzq = 0;
    public final int zzr = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final int zzs = Api.BaseClientBuilder.API_PRIORITY_OTHER;
    public final boolean zzw = false;
    public final boolean zzx = false;
    public final boolean zzy = false;

    static {
        zzcn zzcnVar = new zzcn(new zzck());
        zza = zzcnVar;
        zzb = zzcnVar;
    }

    public zzcn(zzck zzckVar) {
        int i;
        int i2;
        boolean z;
        zzfss<String> zzfssVar;
        zzfss<String> zzfssVar2;
        zzfss<String> zzfssVar3;
        zzfss<String> zzfssVar4;
        int i3;
        zzfsw<zzcf, zzcm> zzfswVar;
        zzftc<Integer> zzftcVar;
        i = zzckVar.zza;
        this.zzl = i;
        i2 = zzckVar.zzb;
        this.zzm = i2;
        z = zzckVar.zzc;
        this.zzn = z;
        zzfssVar = zzckVar.zzd;
        this.zzo = zzfssVar;
        zzfssVar2 = zzckVar.zze;
        this.zzp = zzfssVar2;
        zzfssVar3 = zzckVar.zzf;
        this.zzt = zzfssVar3;
        zzfssVar4 = zzckVar.zzg;
        this.zzu = zzfssVar4;
        i3 = zzckVar.zzh;
        this.zzv = i3;
        zzfswVar = zzckVar.zzi;
        this.zzz = zzfswVar;
        zzftcVar = zzckVar.zzj;
        this.zzA = zzftcVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzcn zzcnVar = (zzcn) obj;
        return this.zzn == zzcnVar.zzn && this.zzl == zzcnVar.zzl && this.zzm == zzcnVar.zzm && this.zzo.equals(zzcnVar.zzo) && this.zzp.equals(zzcnVar.zzp) && this.zzt.equals(zzcnVar.zzt) && this.zzu.equals(zzcnVar.zzu) && this.zzv == zzcnVar.zzv && this.zzz.equals(zzcnVar.zzz) && this.zzA.equals(zzcnVar.zzA);
    }

    public int hashCode() {
        boolean z = this.zzn;
        int i = this.zzl;
        int i2 = this.zzm;
        int hashCode = this.zzo.hashCode();
        int hashCode2 = this.zzp.hashCode();
        int hashCode3 = this.zzt.hashCode();
        int hashCode4 = this.zzu.hashCode();
        int i3 = this.zzv;
        return this.zzA.hashCode() + ((this.zzz.hashCode() + ((((hashCode4 + ((hashCode3 + ((((((hashCode2 + ((hashCode + (((((((z ? 1 : 0) - 1048002209) * 31) + i) * 31) + i2) * 31)) * 31)) * 961) + Api.BaseClientBuilder.API_PRIORITY_OTHER) * 31) + Api.BaseClientBuilder.API_PRIORITY_OTHER) * 31)) * 31)) * 31) + i3) * 923521)) * 31);
    }
}
