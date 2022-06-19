package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjj.class */
public final class zzjj implements Comparable<zzjj> {
    public final boolean zza;
    private final String zzb;
    private final zzjn zzc;
    private final boolean zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final boolean zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final int zzn;

    public zzjj(zzafv zzafvVar, zzjn zzjnVar, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        this.zzc = zzjnVar;
        this.zzb = zzjt.zzg(zzafvVar.zzc);
        this.zzd = zzjt.zzf(i, false);
        int i6 = 0;
        while (true) {
            if (i6 >= zzjnVar.zzo.size()) {
                i2 = 0;
                i6 = Integer.MAX_VALUE;
                break;
            }
            i2 = zzjt.zzh(zzafvVar, zzjnVar.zzo.get(i6), false);
            if (i2 > 0) {
                break;
            }
            i6++;
        }
        this.zzf = i6;
        this.zze = i2;
        this.zzg = Integer.bitCount(0);
        this.zzj = 1 == (zzafvVar.zzd & 1);
        this.zzk = zzafvVar.zzy;
        this.zzl = zzafvVar.zzz;
        this.zzm = zzafvVar.zzh;
        this.zza = true;
        String[] zzY = zzamq.zzY();
        int i7 = 0;
        while (true) {
            if (i7 >= zzY.length) {
                i3 = 0;
                i4 = Integer.MAX_VALUE;
                break;
            }
            int zzh = zzjt.zzh(zzafvVar, zzY[i7], false);
            if (zzh > 0) {
                i4 = i7;
                i3 = zzh;
                break;
            }
            i7++;
        }
        this.zzh = i4;
        this.zzi = i3;
        int i8 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i8 < zzjnVar.zzs.size()) {
                String str = zzafvVar.zzl;
                if (str != null && str.equals(zzjnVar.zzs.get(i8))) {
                    i5 = i8;
                    break;
                }
                i8++;
            } else {
                break;
            }
        }
        this.zzn = i5;
    }

    /* renamed from: zza */
    public final int compareTo(zzjj zzjjVar) {
        zzfpw zzfpwVar;
        zzfpw zzfpwVar2;
        zzfpw zzfpwVar3;
        zzfpw zzfpwVar4;
        zzfpw zzfpwVar5;
        if (this.zzd) {
            zzfpwVar5 = zzjt.zzb;
            zzfpwVar = zzfpwVar5;
        } else {
            zzfpwVar4 = zzjt.zzb;
            zzfpwVar = zzfpwVar4.zza();
        }
        zzfny zza = zzfny.zzj().zzd(this.zzd, zzjjVar.zzd).zza(Integer.valueOf(this.zzf), Integer.valueOf(zzjjVar.zzf), zzfpw.zzb().zza()).zzb(this.zze, zzjjVar.zze).zzb(this.zzg, zzjjVar.zzg).zzd(true, true).zza(Integer.valueOf(this.zzn), Integer.valueOf(zzjjVar.zzn), zzfpw.zzb().zza());
        int i = this.zzm;
        int i2 = zzjjVar.zzm;
        boolean z = this.zzc.zzw;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        zzfpwVar2 = zzjt.zzc;
        zzfny zza2 = zza.zza(valueOf, valueOf2, zzfpwVar2).zzd(this.zzj, zzjjVar.zzj).zza(Integer.valueOf(this.zzh), Integer.valueOf(zzjjVar.zzh), zzfpw.zzb().zza()).zzb(this.zzi, zzjjVar.zzi).zza(Integer.valueOf(this.zzk), Integer.valueOf(zzjjVar.zzk), zzfpwVar).zza(Integer.valueOf(this.zzl), Integer.valueOf(zzjjVar.zzl), zzfpwVar);
        int i3 = this.zzm;
        int i4 = zzjjVar.zzm;
        if (!zzamq.zzc(this.zzb, zzjjVar.zzb)) {
            zzfpwVar3 = zzjt.zzc;
            zzfpwVar = zzfpwVar3;
        }
        return zza2.zza(Integer.valueOf(i3), Integer.valueOf(i4), zzfpwVar).zze();
    }
}
