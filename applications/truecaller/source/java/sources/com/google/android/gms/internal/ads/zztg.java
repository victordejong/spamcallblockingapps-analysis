package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztg.class */
public final class zztg implements zztb {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final zzuq zzb;
    private final zzamf zzc;
    private final boolean[] zzd;
    private final zzte zze;
    private final zztq zzf;
    private zztf zzg;
    private long zzh;
    private String zzi;
    private zzox zzj;
    private boolean zzk;
    private long zzl;

    public zztg() {
        this(null);
    }

    public zztg(zzuq zzuqVar) {
        this.zzb = zzuqVar;
        this.zzd = new boolean[4];
        this.zze = new zzte(128);
        this.zzl = -9223372036854775807L;
        this.zzf = new zztq(178, 128);
        this.zzc = new zzamf();
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        zzalw.zze(this.zzd);
        this.zze.zza();
        zztf zztfVar = this.zzg;
        if (zztfVar != null) {
            zztfVar.zza();
        }
        this.zzf.zza();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzi = zzunVar.zzc();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 2);
        this.zzj = zzB;
        this.zzg = new zztf(zzB);
        this.zzb.zza(zznxVar, zzunVar);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzl = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) {
        int i;
        zzakt.zze(this.zzg);
        zzakt.zze(this.zzj);
        int zzg = zzamfVar.zzg();
        int zze = zzamfVar.zze();
        byte[] zzi = zzamfVar.zzi();
        this.zzh += zzamfVar.zzd();
        zzov.zzb(this.zzj, zzamfVar, zzamfVar.zzd());
        while (true) {
            int zzd = zzalw.zzd(zzi, zzg, zze, this.zzd);
            if (zzd == zze) {
                break;
            }
            int i2 = zzd + 3;
            int i3 = zzamfVar.zzi()[i2] & 255;
            int i4 = zzd - zzg;
            if (!this.zzk) {
                if (i4 > 0) {
                    this.zze.zzc(zzi, zzg, zzd);
                }
                if (this.zze.zzb(i3, i4 < 0 ? -i4 : 0)) {
                    zzox zzoxVar = this.zzj;
                    zzte zzteVar = this.zze;
                    int i5 = zzteVar.zzb;
                    String str = this.zzi;
                    Objects.requireNonNull(str);
                    byte[] copyOf = Arrays.copyOf(zzteVar.zzc, zzteVar.zza);
                    zzame zzameVar = new zzame(copyOf, copyOf.length);
                    zzameVar.zzk(i5);
                    zzameVar.zzk(4);
                    zzameVar.zze();
                    zzameVar.zzf(8);
                    if (zzameVar.zzg()) {
                        zzameVar.zzf(4);
                        zzameVar.zzf(3);
                    }
                    int zzh = zzameVar.zzh(4);
                    float f = 1.0f;
                    if (zzh == 15) {
                        int zzh2 = zzameVar.zzh(8);
                        int zzh3 = zzameVar.zzh(8);
                        if (zzh3 != 0) {
                            f = zzh2 / zzh3;
                        }
                    } else if (zzh < 7) {
                        f = zza[zzh];
                    }
                    if (zzameVar.zzg()) {
                        zzameVar.zzf(2);
                        zzameVar.zzf(1);
                        if (zzameVar.zzg()) {
                            zzameVar.zzf(15);
                            zzameVar.zze();
                            zzameVar.zzf(15);
                            zzameVar.zze();
                            zzameVar.zzf(15);
                            zzameVar.zze();
                            zzameVar.zzf(3);
                            zzameVar.zzf(11);
                            zzameVar.zze();
                            zzameVar.zzf(15);
                            zzameVar.zze();
                        }
                    }
                    zzameVar.zzh(2);
                    zzameVar.zze();
                    int zzh4 = zzameVar.zzh(16);
                    zzameVar.zze();
                    if (zzameVar.zzg() && zzh4 != 0) {
                        int i6 = 0;
                        for (int i7 = zzh4 - 1; i7 > 0; i7 >>= 1) {
                            i6++;
                        }
                        zzameVar.zzf(i6);
                    }
                    zzameVar.zze();
                    int zzh5 = zzameVar.zzh(13);
                    zzameVar.zze();
                    int zzh6 = zzameVar.zzh(13);
                    zzameVar.zze();
                    zzameVar.zze();
                    zzaft zzaftVar = new zzaft();
                    zzaftVar.zzD(str);
                    zzaftVar.zzN("video/mp4v-es");
                    zzaftVar.zzS(zzh5);
                    zzaftVar.zzT(zzh6);
                    zzaftVar.zzW(f);
                    zzaftVar.zzP(Collections.singletonList(copyOf));
                    zzoxVar.zzs(zzaftVar.zzah());
                    this.zzk = true;
                }
            }
            this.zzg.zzc(zzi, zzg, zzd);
            zztq zztqVar = this.zzf;
            if (i4 > 0) {
                zztqVar.zzd(zzi, zzg, zzd);
                i = 0;
            } else {
                i = -i4;
            }
            if (this.zzf.zze(i)) {
                zztq zztqVar2 = this.zzf;
                int zza2 = zzalw.zza(zztqVar2.zza, zztqVar2.zzb);
                zzamf zzamfVar2 = this.zzc;
                int i8 = zzamq.zza;
                zzamfVar2.zzb(this.zzf.zza, zza2);
                this.zzb.zzb(this.zzl, this.zzc);
            }
            int i9 = i3;
            if (i3 == 178) {
                if (zzamfVar.zzi()[zzd + 2] == 1) {
                    this.zzf.zzc(178);
                }
                i9 = 178;
            }
            int i10 = zze - zzd;
            this.zzg.zzd(this.zzh - i10, i10, this.zzk);
            this.zzg.zzb(i9, this.zzl);
            zzg = i2;
        }
        if (!this.zzk) {
            this.zze.zzc(zzi, zzg, zze);
        }
        this.zzg.zzc(zzi, zzg, zze);
        this.zzf.zzd(zzi, zzg, zze);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
