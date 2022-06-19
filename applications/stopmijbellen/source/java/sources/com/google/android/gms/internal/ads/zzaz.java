package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaz.class */
public final class zzaz {
    public static final zzaz zza = new zzaf().zzc();
    public static final zzj<zzaz> zzb = zzad.zza;
    public final String zzc;
    public final zzau zzd;
    @Deprecated
    public final zzaw zze;
    public final zzas zzf;
    public final zzbe zzg;
    public final zzaj zzh;
    @Deprecated
    public final zzal zzi;

    public /* synthetic */ zzaz(String str, zzal zzalVar, zzaw zzawVar, zzas zzasVar, zzbe zzbeVar, zzay zzayVar) {
        this.zzc = str;
        this.zzd = zzawVar;
        this.zze = zzawVar;
        this.zzf = zzasVar;
        this.zzg = zzbeVar;
        this.zzh = zzalVar;
        this.zzi = zzalVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaz)) {
            return false;
        }
        zzaz zzazVar = (zzaz) obj;
        return zzfn.zzP(this.zzc, zzazVar.zzc) && this.zzh.equals(zzazVar.zzh) && zzfn.zzP(this.zzd, zzazVar.zzd) && zzfn.zzP(this.zzf, zzazVar.zzf) && zzfn.zzP(this.zzg, zzazVar.zzg);
    }

    public final int hashCode() {
        int hashCode = this.zzc.hashCode();
        zzau zzauVar = this.zzd;
        int hashCode2 = zzauVar != null ? zzauVar.hashCode() : 0;
        return this.zzg.hashCode() + ((this.zzh.hashCode() + ((this.zzf.hashCode() + (((hashCode * 31) + hashCode2) * 31)) * 31)) * 31);
    }
}
