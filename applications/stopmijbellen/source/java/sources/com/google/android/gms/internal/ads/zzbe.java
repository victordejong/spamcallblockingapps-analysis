package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbe.class */
public final class zzbe {
    public static final zzbe zza = new zzbe(new zzbc());
    public static final zzj<zzbe> zzb = zzba.zza;
    public final CharSequence zzc;
    public final CharSequence zzd;
    public final CharSequence zze;
    public final CharSequence zzf;
    public final CharSequence zzg;
    public final byte[] zzh;
    public final Integer zzi;
    public final Integer zzj;
    public final Integer zzk;
    @Deprecated
    public final Integer zzl;
    public final Integer zzm;
    public final Integer zzn;
    public final Integer zzo;
    public final Integer zzp;
    public final Integer zzq;
    public final Integer zzr;
    public final CharSequence zzs;
    public final CharSequence zzt;
    public final CharSequence zzu;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbe(zzbc zzbcVar) {
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3;
        CharSequence charSequence4;
        CharSequence charSequence5;
        byte[] bArr;
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer num5;
        Integer num6;
        Integer num7;
        Integer num8;
        Integer num9;
        Integer num10;
        CharSequence charSequence6;
        CharSequence charSequence7;
        CharSequence charSequence8;
        charSequence = zzbcVar.zza;
        this.zzc = charSequence;
        charSequence2 = zzbcVar.zzb;
        this.zzd = charSequence2;
        charSequence3 = zzbcVar.zzc;
        this.zze = charSequence3;
        charSequence4 = zzbcVar.zzd;
        this.zzf = charSequence4;
        charSequence5 = zzbcVar.zze;
        this.zzg = charSequence5;
        bArr = zzbcVar.zzf;
        this.zzh = bArr;
        num = zzbcVar.zzg;
        this.zzi = num;
        num2 = zzbcVar.zzh;
        this.zzj = num2;
        num3 = zzbcVar.zzi;
        this.zzk = num3;
        num4 = zzbcVar.zzj;
        this.zzl = num4;
        num5 = zzbcVar.zzj;
        this.zzm = num5;
        num6 = zzbcVar.zzk;
        this.zzn = num6;
        num7 = zzbcVar.zzl;
        this.zzo = num7;
        num8 = zzbcVar.zzm;
        this.zzp = num8;
        num9 = zzbcVar.zzn;
        this.zzq = num9;
        num10 = zzbcVar.zzo;
        this.zzr = num10;
        charSequence6 = zzbcVar.zzp;
        this.zzs = charSequence6;
        charSequence7 = zzbcVar.zzq;
        this.zzt = charSequence7;
        charSequence8 = zzbcVar.zzr;
        this.zzu = charSequence8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzbe.class != obj.getClass()) {
            return false;
        }
        zzbe zzbeVar = (zzbe) obj;
        return zzfn.zzP(this.zzc, zzbeVar.zzc) && zzfn.zzP(this.zzd, zzbeVar.zzd) && zzfn.zzP(this.zze, zzbeVar.zze) && zzfn.zzP(this.zzf, zzbeVar.zzf) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(this.zzg, zzbeVar.zzg) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && Arrays.equals(this.zzh, zzbeVar.zzh) && zzfn.zzP(this.zzi, zzbeVar.zzi) && zzfn.zzP(null, null) && zzfn.zzP(this.zzj, zzbeVar.zzj) && zzfn.zzP(this.zzk, zzbeVar.zzk) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(this.zzm, zzbeVar.zzm) && zzfn.zzP(this.zzn, zzbeVar.zzn) && zzfn.zzP(this.zzo, zzbeVar.zzo) && zzfn.zzP(this.zzp, zzbeVar.zzp) && zzfn.zzP(this.zzq, zzbeVar.zzq) && zzfn.zzP(this.zzr, zzbeVar.zzr) && zzfn.zzP(this.zzs, zzbeVar.zzs) && zzfn.zzP(this.zzt, zzbeVar.zzt) && zzfn.zzP(this.zzu, zzbeVar.zzu) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(null, null) && zzfn.zzP(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzc, this.zzd, this.zze, this.zzf, null, null, this.zzg, null, null, null, Integer.valueOf(Arrays.hashCode(this.zzh)), this.zzi, null, this.zzj, this.zzk, null, null, this.zzm, this.zzn, this.zzo, this.zzp, this.zzq, this.zzr, this.zzs, this.zzt, this.zzu, null, null, null, null});
    }

    public final zzbc zza() {
        return new zzbc(this, null);
    }
}
