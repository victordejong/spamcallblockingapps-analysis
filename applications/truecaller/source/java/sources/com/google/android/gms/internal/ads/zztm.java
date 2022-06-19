package com.google.android.gms.internal.ads;

import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztm.class */
public final class zztm implements zztb {
    private final zzuc zza;
    private String zzb;
    private zzox zzc;
    private zztl zzd;
    private boolean zze;
    private long zzl;
    private final boolean[] zzf = new boolean[3];
    private final zztq zzg = new zztq(32, 128);
    private final zztq zzh = new zztq(33, 128);
    private final zztq zzi = new zztq(34, 128);
    private final zztq zzj = new zztq(39, 128);
    private final zztq zzk = new zztq(40, 128);
    private long zzm = -9223372036854775807L;
    private final zzamf zzn = new zzamf();

    public zztm(zzuc zzucVar) {
        this.zza = zzucVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        this.zzd.zzc(bArr, i, i2);
        if (!this.zze) {
            this.zzg.zzd(bArr, i, i2);
            this.zzh.zzd(bArr, i, i2);
            this.zzi.zzd(bArr, i, i2);
        }
        this.zzj.zzd(bArr, i, i2);
        this.zzk.zzd(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zzl = 0L;
        this.zzm = -9223372036854775807L;
        zzalw.zze(this.zzf);
        this.zzg.zza();
        this.zzh.zza();
        this.zzi.zza();
        this.zzj.zza();
        this.zzk.zza();
        zztl zztlVar = this.zzd;
        if (zztlVar != null) {
            zztlVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzb = zzunVar.zzc();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 2);
        this.zzc = zzB;
        this.zzd = new zztl(zzB);
        this.zza.zza(zznxVar, zzunVar);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzm = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) {
        int i;
        int i2;
        int i3;
        zzakt.zze(this.zzc);
        int i4 = zzamq.zza;
        while (zzamfVar.zzd() > 0) {
            int zzg = zzamfVar.zzg();
            int zze = zzamfVar.zze();
            byte[] zzi = zzamfVar.zzi();
            this.zzl += zzamfVar.zzd();
            zzov.zzb(this.zzc, zzamfVar, zzamfVar.zzd());
            while (zzg < zze) {
                int zzd = zzalw.zzd(zzi, zzg, zze, this.zzf);
                if (zzd == zze) {
                    zzf(zzi, zzg, zze);
                    return;
                }
                int i5 = zzd + 3;
                int i6 = (zzi[i5] & 126) >> 1;
                int i7 = zzd - zzg;
                if (i7 > 0) {
                    zzf(zzi, zzg, zzd);
                }
                int i8 = zze - zzd;
                long j = this.zzl - i8;
                int i9 = i7 < 0 ? -i7 : 0;
                long j2 = this.zzm;
                this.zzd.zzd(j, i8, this.zze);
                if (!this.zze) {
                    this.zzg.zze(i9);
                    this.zzh.zze(i9);
                    this.zzi.zze(i9);
                    if (this.zzg.zzb() && this.zzh.zzb() && this.zzi.zzb()) {
                        zzox zzoxVar = this.zzc;
                        String str = this.zzb;
                        zztq zztqVar = this.zzg;
                        zztq zztqVar2 = this.zzh;
                        zztq zztqVar3 = this.zzi;
                        int i10 = zztqVar.zzb;
                        byte[] bArr = new byte[zztqVar2.zzb + i10 + zztqVar3.zzb];
                        System.arraycopy(zztqVar.zza, 0, bArr, 0, i10);
                        System.arraycopy(zztqVar2.zza, 0, bArr, zztqVar.zzb, zztqVar2.zzb);
                        System.arraycopy(zztqVar3.zza, 0, bArr, zztqVar.zzb + zztqVar2.zzb, zztqVar3.zzb);
                        zzamg zzamgVar = new zzamg(zztqVar2.zza, 0, zztqVar2.zzb);
                        zzamgVar.zzc(44);
                        int zze2 = zzamgVar.zze(3);
                        zzamgVar.zzb();
                        zzamgVar.zzc(88);
                        zzamgVar.zzc(8);
                        int i11 = 0;
                        for (int i12 = 0; i12 < zze2; i12++) {
                            int i13 = i11;
                            if (zzamgVar.zzd()) {
                                i13 = i11 + 89;
                            }
                            i11 = i13;
                            if (zzamgVar.zzd()) {
                                i11 = i13 + 8;
                            }
                        }
                        zzamgVar.zzc(i11);
                        if (zze2 > 0) {
                            int i14 = 8 - zze2;
                            zzamgVar.zzc(i14 + i14);
                        }
                        zzamgVar.zzf();
                        int zzf = zzamgVar.zzf();
                        if (zzf == 3) {
                            zzamgVar.zzb();
                            zzf = 3;
                        }
                        int zzf2 = zzamgVar.zzf();
                        int zzf3 = zzamgVar.zzf();
                        if (zzamgVar.zzd()) {
                            int zzf4 = zzamgVar.zzf();
                            int zzf5 = zzamgVar.zzf();
                            int zzf6 = zzamgVar.zzf();
                            int zzf7 = zzamgVar.zzf();
                            if (zzf == 1) {
                                i3 = 2;
                            } else if (zzf == 2) {
                                i3 = 2;
                                zzf = 2;
                            } else {
                                i3 = 1;
                            }
                            int i15 = zzf == 1 ? 2 : 1;
                            zzf2 = C22128a.m8592n1(zzf4, zzf5, i3, zzf2);
                            i = C22128a.m8592n1(zzf6, zzf7, i15, zzf3);
                        } else {
                            i = zzf3;
                        }
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        int zzf8 = zzamgVar.zzf();
                        for (int i16 = true != zzamgVar.zzd() ? zze2 : 0; i16 <= zze2; i16++) {
                            zzamgVar.zzf();
                            zzamgVar.zzf();
                            zzamgVar.zzf();
                        }
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        zzamgVar.zzf();
                        if (zzamgVar.zzd() && zzamgVar.zzd()) {
                            for (int i17 = 0; i17 < 4; i17++) {
                                int i18 = 0;
                                while (true) {
                                    int i19 = i18;
                                    if (i19 < 6) {
                                        if (!zzamgVar.zzd()) {
                                            zzamgVar.zzf();
                                        } else {
                                            int min = Math.min(64, 1 << ((i17 + i17) + 4));
                                            if (i17 > 1) {
                                                zzamgVar.zzg();
                                            }
                                            for (int i20 = 0; i20 < min; i20++) {
                                                zzamgVar.zzg();
                                            }
                                        }
                                        int i21 = 3;
                                        if (i17 != 3) {
                                            i21 = 1;
                                        }
                                        i18 = i19 + i21;
                                    }
                                }
                            }
                        }
                        zzamgVar.zzc(2);
                        if (zzamgVar.zzd()) {
                            zzamgVar.zzc(8);
                            zzamgVar.zzf();
                            zzamgVar.zzf();
                            zzamgVar.zzb();
                        }
                        int zzf9 = zzamgVar.zzf();
                        int i22 = 0;
                        boolean z = false;
                        int i23 = 0;
                        while (true) {
                            int i24 = i23;
                            if (i22 >= zzf9) {
                                break;
                            }
                            if (i22 != 0) {
                                z = zzamgVar.zzd();
                            }
                            if (z) {
                                zzamgVar.zzb();
                                zzamgVar.zzf();
                                int i25 = 0;
                                while (true) {
                                    i2 = i24;
                                    if (i25 <= i24) {
                                        if (zzamgVar.zzd()) {
                                            zzamgVar.zzb();
                                        }
                                        i25++;
                                    }
                                }
                            } else {
                                int zzf10 = zzamgVar.zzf();
                                int zzf11 = zzamgVar.zzf();
                                for (int i26 = 0; i26 < zzf10; i26++) {
                                    zzamgVar.zzf();
                                    zzamgVar.zzb();
                                }
                                for (int i27 = 0; i27 < zzf11; i27++) {
                                    zzamgVar.zzf();
                                    zzamgVar.zzb();
                                }
                                i2 = zzf10 + zzf11;
                            }
                            i22++;
                            i23 = i2;
                        }
                        if (zzamgVar.zzd()) {
                            for (int i28 = 0; i28 < zzamgVar.zzf(); i28++) {
                                zzamgVar.zzc(zzf8 + 5);
                            }
                        }
                        zzamgVar.zzc(2);
                        float f = 1.0f;
                        int i29 = i;
                        if (zzamgVar.zzd()) {
                            float f2 = 1.0f;
                            if (zzamgVar.zzd()) {
                                int zze3 = zzamgVar.zze(8);
                                if (zze3 == 255) {
                                    int zze4 = zzamgVar.zze(16);
                                    int zze5 = zzamgVar.zze(16);
                                    f2 = 1.0f;
                                    if (zze4 != 0) {
                                        f2 = 1.0f;
                                        if (zze5 != 0) {
                                            f2 = zze4 / zze5;
                                        }
                                    }
                                } else {
                                    f2 = 1.0f;
                                    if (zze3 < 17) {
                                        f2 = zzalw.zzb[zze3];
                                    }
                                }
                            }
                            if (zzamgVar.zzd()) {
                                zzamgVar.zzb();
                            }
                            if (zzamgVar.zzd()) {
                                zzamgVar.zzc(4);
                                if (zzamgVar.zzd()) {
                                    zzamgVar.zzc(24);
                                }
                            }
                            if (zzamgVar.zzd()) {
                                zzamgVar.zzf();
                                zzamgVar.zzf();
                            }
                            zzamgVar.zzb();
                            f = f2;
                            i29 = i;
                            if (zzamgVar.zzd()) {
                                i29 = i + i;
                                f = f2;
                            }
                        }
                        zzamgVar.zza(zztqVar2.zza, 0, zztqVar2.zzb);
                        zzamgVar.zzc(24);
                        String zzb = zzakv.zzb(zzamgVar);
                        zzaft zzaftVar = new zzaft();
                        zzaftVar.zzD(str);
                        zzaftVar.zzN("video/hevc");
                        zzaftVar.zzK(zzb);
                        zzaftVar.zzS(zzf2);
                        zzaftVar.zzT(i29);
                        zzaftVar.zzW(f);
                        zzaftVar.zzP(Collections.singletonList(bArr));
                        zzoxVar.zzs(zzaftVar.zzah());
                        this.zze = true;
                    }
                }
                int i30 = i9;
                if (this.zzj.zze(i30)) {
                    zztq zztqVar4 = this.zzj;
                    this.zzn.zzb(this.zzj.zza, zzalw.zza(zztqVar4.zza, zztqVar4.zzb));
                    this.zzn.zzk(5);
                    this.zza.zzb(j2, this.zzn);
                }
                if (this.zzk.zze(i30)) {
                    zztq zztqVar5 = this.zzk;
                    this.zzn.zzb(this.zzk.zza, zzalw.zza(zztqVar5.zza, zztqVar5.zzb));
                    this.zzn.zzk(5);
                    this.zza.zzb(j2, this.zzn);
                }
                this.zzd.zzb(j, i8, i6, this.zzm, this.zze);
                if (!this.zze) {
                    this.zzg.zzc(i6);
                    this.zzh.zzc(i6);
                    this.zzi.zzc(i6);
                }
                this.zzj.zzc(i6);
                this.zzk.zzc(i6);
                zzg = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
