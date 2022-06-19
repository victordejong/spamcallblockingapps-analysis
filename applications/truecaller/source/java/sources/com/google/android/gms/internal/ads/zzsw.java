package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsw.class */
public final class zzsw implements zznu {
    public static final zzoa zza = zzsv.zza;
    private final zzsx zzb;
    private final zzamf zzc;
    private final zzamf zzd;
    private final zzame zze;
    private zznx zzf;
    private long zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;

    public zzsw() {
        this(0);
    }

    public zzsw(int i) {
        this.zzb = new zzsx(true, null);
        this.zzc = new zzamf(2048);
        this.zzh = -1L;
        zzamf zzamfVar = new zzamf(10);
        this.zzd = zzamfVar;
        byte[] zzi = zzamfVar.zzi();
        this.zze = new zzame(zzi, zzi.length);
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        int i = 0;
        while (true) {
            zznp zznpVar = (zznp) zznvVar;
            zznpVar.zzh(this.zzd.zzi(), 0, 10, false);
            this.zzd.zzh(0);
            if (this.zzd.zzr() != 4801587) {
                break;
            }
            this.zzd.zzk(3);
            int zzA = this.zzd.zzA();
            i += zzA + 10;
            zznpVar.zzj(zzA, false);
        }
        zznvVar.zzl();
        zznp zznpVar2 = (zznp) zznvVar;
        zznpVar2.zzj(i, false);
        if (this.zzh == -1) {
            this.zzh = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (true) {
            zznpVar2.zzh(this.zzd.zzi(), 0, 2, false);
            this.zzd.zzh(0);
            if (!zzsx.zzf(this.zzd.zzo())) {
                zznvVar.zzl();
                i4++;
                if (i4 - i >= 8192) {
                    return false;
                }
                zznpVar2.zzj(i4, false);
                i2 = 0;
                i3 = 0;
            } else {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                zznpVar2.zzh(this.zzd.zzi(), 0, 4, false);
                this.zze.zzd(14);
                int zzh = this.zze.zzh(13);
                if (zzh <= 6) {
                    return false;
                }
                zznpVar2.zzj(zzh - 6, false);
                i3 += zzh;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzf = zznxVar;
        this.zzb.zzb(zznxVar, new zzun(Integer.MIN_VALUE, 0, 1));
        zznxVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final int zzc(zznv zznvVar, zzoq zzoqVar) throws IOException {
        zzakt.zze(this.zzf);
        int zzg = zznvVar.zzg(this.zzc.zzi(), 0, 2048);
        if (!this.zzj) {
            this.zzf.zzD(new zzos(-9223372036854775807L, 0L));
            this.zzj = true;
        }
        if (zzg == -1) {
            return -1;
        }
        this.zzc.zzh(0);
        this.zzc.zzf(zzg);
        if (!this.zzi) {
            this.zzb.zzc(this.zzg, 4);
            this.zzi = true;
        }
        this.zzb.zzd(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        this.zzi = false;
        this.zzb.zza();
        this.zzg = j2;
    }
}
