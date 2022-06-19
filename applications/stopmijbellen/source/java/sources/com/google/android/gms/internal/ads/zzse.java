package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzse.class */
public final class zzse implements Comparable<zzse> {
    public final boolean zza;
    private final String zzb;
    private final zzsi zzc;
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

    public zzse(zzab zzabVar, zzsi zzsiVar, int i) {
        int i2;
        int i3;
        int i4;
        this.zzc = zzsiVar;
        this.zzb = zzsp.zzf(zzabVar.zzd);
        this.zzd = zzsp.zzh(i, false);
        int i5 = 0;
        while (true) {
            if (i5 >= zzsiVar.zzp.size()) {
                i5 = Integer.MAX_VALUE;
                i2 = 0;
                break;
            }
            i2 = zzsp.zza(zzabVar, zzsiVar.zzp.get(i5), false);
            if (i2 > 0) {
                break;
            }
            i5++;
        }
        this.zzf = i5;
        this.zze = i2;
        this.zzg = Integer.bitCount(0);
        this.zzj = 1 == (zzabVar.zze & 1);
        this.zzk = zzabVar.zzz;
        this.zzl = zzabVar.zzA;
        this.zzm = zzabVar.zzi;
        this.zza = true;
        String[] zzab = zzfn.zzab();
        int i6 = 0;
        while (true) {
            if (i6 >= zzab.length) {
                i6 = Integer.MAX_VALUE;
                i3 = 0;
                break;
            }
            i3 = zzsp.zza(zzabVar, zzab[i6], false);
            if (i3 > 0) {
                break;
            }
            i6++;
        }
        this.zzh = i6;
        this.zzi = i3;
        int i7 = 0;
        while (true) {
            i4 = Integer.MAX_VALUE;
            if (i7 < zzsiVar.zzt.size()) {
                String str = zzabVar.zzm;
                if (str != null && str.equals(zzsiVar.zzt.get(i7))) {
                    i4 = i7;
                    break;
                }
                i7++;
            } else {
                break;
            }
        }
        this.zzn = i4;
    }

    /* renamed from: zza */
    public final int compareTo(zzse zzseVar) {
        zzfuf zzfufVar;
        zzfuf zzfufVar2;
        zzfuf zzfufVar3;
        zzfuf zzfufVar4;
        zzfuf zzfufVar5;
        if (this.zzd) {
            zzfufVar5 = zzsp.zzb;
            zzfufVar = zzfufVar5;
        } else {
            zzfufVar4 = zzsp.zzb;
            zzfufVar = zzfufVar4.zza();
        }
        zzfsh zzc = zzfsh.zzj().zzd(this.zzd, zzseVar.zzd).zzc(Integer.valueOf(this.zzf), Integer.valueOf(zzseVar.zzf), zzfuf.zzc().zza()).zzb(this.zze, zzseVar.zze).zzb(this.zzg, zzseVar.zzg).zzd(true, true).zzc(Integer.valueOf(this.zzn), Integer.valueOf(zzseVar.zzn), zzfuf.zzc().zza());
        int i = this.zzm;
        int i2 = zzseVar.zzm;
        boolean z = this.zzc.zzx;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        zzfufVar2 = zzsp.zzc;
        zzfsh zzc2 = zzc.zzc(valueOf, valueOf2, zzfufVar2).zzd(this.zzj, zzseVar.zzj).zzc(Integer.valueOf(this.zzh), Integer.valueOf(zzseVar.zzh), zzfuf.zzc().zza()).zzb(this.zzi, zzseVar.zzi).zzc(Integer.valueOf(this.zzk), Integer.valueOf(zzseVar.zzk), zzfufVar).zzc(Integer.valueOf(this.zzl), Integer.valueOf(zzseVar.zzl), zzfufVar);
        int i3 = this.zzm;
        int i4 = zzseVar.zzm;
        if (!zzfn.zzP(this.zzb, zzseVar.zzb)) {
            zzfufVar3 = zzsp.zzc;
            zzfufVar = zzfufVar3;
        }
        return zzc2.zzc(Integer.valueOf(i3), Integer.valueOf(i4), zzfufVar).zza();
    }
}
