package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadm.class */
public final class zzadm implements zzwp {
    public static final zzww zza = zzadl.zza;
    private final zzadn zzb;
    private final zzfd zzc;
    private final zzfd zzd;
    private final zzfc zze;
    private zzws zzf;
    private long zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;

    public zzadm() {
        this(0);
    }

    public zzadm(int i) {
        this.zzb = new zzadn(true, null);
        this.zzc = new zzfd(2048);
        this.zzh = -1L;
        zzfd zzfdVar = new zzfd(10);
        this.zzd = zzfdVar;
        byte[] zzH = zzfdVar.zzH();
        this.zze = new zzfc(zzH, zzH.length);
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        zzdy.zzb(this.zzf);
        int zzg = zzwqVar.zzg(this.zzc.zzH(), 0, 2048);
        if (!this.zzj) {
            this.zzf.zzL(new zzxo(-9223372036854775807L, 0L));
            this.zzj = true;
        }
        if (zzg == -1) {
            return -1;
        }
        this.zzc.zzF(0);
        this.zzc.zzE(zzg);
        if (!this.zzi) {
            this.zzb.zzd(this.zzg, 4);
            this.zzi = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzf = zzwsVar;
        this.zzb.zzb(zzwsVar, new zzafd(Integer.MIN_VALUE, 0, 1));
        zzwsVar.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzi = false;
        this.zzb.zze();
        this.zzg = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        while (true) {
            zzwk zzwkVar = (zzwk) zzwqVar;
            zzwkVar.zzm(this.zzd.zzH(), 0, 10, false);
            this.zzd.zzF(0);
            if (this.zzd.zzm() != 4801587) {
                break;
            }
            this.zzd.zzG(3);
            int zzj = this.zzd.zzj();
            i4 += zzj + 10;
            zzwkVar.zzl(zzj, false);
        }
        zzwqVar.zzj();
        zzwk zzwkVar2 = (zzwk) zzwqVar;
        zzwkVar2.zzl(i4, false);
        if (this.zzh == -1) {
            this.zzh = i4;
        }
        int i5 = i4;
        int i6 = 0;
        int i7 = 0;
        do {
            zzwkVar2.zzm(this.zzd.zzH(), 0, 2, false);
            this.zzd.zzF(0);
            if (!zzadn.zzf(this.zzd.zzo())) {
                i3 = i5 + 1;
                zzwqVar.zzj();
                zzwkVar2.zzl(i3, false);
            } else {
                int i8 = i6 + 1;
                if (i8 >= 4 && i7 > 188) {
                    return true;
                }
                zzwkVar2.zzm(this.zzd.zzH(), 0, 4, false);
                this.zze.zzh(14);
                int zzc = this.zze.zzc(13);
                if (zzc <= 6) {
                    i3 = i5 + 1;
                    zzwqVar.zzj();
                    zzwkVar2.zzl(i3, false);
                } else {
                    zzwkVar2.zzl(zzc - 6, false);
                    i7 += zzc;
                    i = i5;
                    i2 = i8;
                    i6 = i2;
                    i5 = i;
                }
            }
            i2 = 0;
            i = i3;
            i7 = 0;
            i6 = i2;
            i5 = i;
        } while (i - i4 < 8192);
        return false;
    }
}
