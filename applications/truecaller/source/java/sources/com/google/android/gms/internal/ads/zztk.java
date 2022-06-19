package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zztk.class */
public final class zztk implements zztb {
    private final zzuc zza;
    private long zze;
    private String zzg;
    private zzox zzh;
    private zztj zzi;
    private boolean zzj;
    private boolean zzl;
    private final boolean[] zzf = new boolean[3];
    private final zztq zzb = new zztq(7, 128);
    private final zztq zzc = new zztq(8, 128);
    private final zztq zzd = new zztq(6, 128);
    private long zzk = -9223372036854775807L;
    private final zzamf zzm = new zzamf();

    public zztk(zzuc zzucVar, boolean z, boolean z2) {
        this.zza = zzucVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        if (!this.zzj) {
            this.zzb.zzd(bArr, i, i2);
            this.zzc.zzd(bArr, i, i2);
        }
        this.zzd.zzd(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zza() {
        this.zze = 0L;
        this.zzl = false;
        this.zzk = -9223372036854775807L;
        zzalw.zze(this.zzf);
        this.zzb.zza();
        this.zzc.zza();
        this.zzd.zza();
        zztj zztjVar = this.zzi;
        if (zztjVar != null) {
            zztjVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzb(zznx zznxVar, zzun zzunVar) {
        zzunVar.zza();
        this.zzg = zzunVar.zzc();
        zzox zzB = zznxVar.zzB(zzunVar.zzb(), 2);
        this.zzh = zzB;
        this.zzi = new zztj(zzB, false, false);
        this.zza.zza(zznxVar, zzunVar);
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzc(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzk = j;
        }
        this.zzl |= (i & 2) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zzd(zzamf zzamfVar) {
        zzakt.zze(this.zzh);
        int i = zzamq.zza;
        int zzg = zzamfVar.zzg();
        int zze = zzamfVar.zze();
        byte[] zzi = zzamfVar.zzi();
        this.zze += zzamfVar.zzd();
        zzov.zzb(this.zzh, zzamfVar, zzamfVar.zzd());
        while (true) {
            int zzd = zzalw.zzd(zzi, zzg, zze, this.zzf);
            if (zzd == zze) {
                zzf(zzi, zzg, zze);
                return;
            }
            int i2 = zzd + 3;
            int i3 = zzi[i2] & 31;
            int i4 = zzd - zzg;
            if (i4 > 0) {
                zzf(zzi, zzg, zzd);
            }
            int i5 = zze - zzd;
            long j = this.zze - i5;
            int i6 = i4 < 0 ? -i4 : 0;
            long j2 = this.zzk;
            if (!this.zzj) {
                this.zzb.zze(i6);
                this.zzc.zze(i6);
                if (!this.zzj) {
                    if (this.zzb.zzb() && this.zzc.zzb()) {
                        ArrayList arrayList = new ArrayList();
                        zztq zztqVar = this.zzb;
                        arrayList.add(Arrays.copyOf(zztqVar.zza, zztqVar.zzb));
                        zztq zztqVar2 = this.zzc;
                        arrayList.add(Arrays.copyOf(zztqVar2.zza, zztqVar2.zzb));
                        zztq zztqVar3 = this.zzb;
                        zzalv zzb = zzalw.zzb(zztqVar3.zza, 3, zztqVar3.zzb);
                        zztq zztqVar4 = this.zzc;
                        zzalu zzc = zzalw.zzc(zztqVar4.zza, 3, zztqVar4.zzb);
                        String zza = zzakv.zza(zzb.zza, zzb.zzb, zzb.zzc);
                        zzox zzoxVar = this.zzh;
                        zzaft zzaftVar = new zzaft();
                        zzaftVar.zzD(this.zzg);
                        zzaftVar.zzN("video/avc");
                        zzaftVar.zzK(zza);
                        zzaftVar.zzS(zzb.zze);
                        zzaftVar.zzT(zzb.zzf);
                        zzaftVar.zzW(zzb.zzg);
                        zzaftVar.zzP(arrayList);
                        zzoxVar.zzs(zzaftVar.zzah());
                        this.zzj = true;
                        this.zzi.zza(zzb);
                        this.zzi.zzb(zzc);
                        this.zzb.zza();
                        this.zzc.zza();
                    }
                } else if (this.zzb.zzb()) {
                    zztq zztqVar5 = this.zzb;
                    this.zzi.zza(zzalw.zzb(zztqVar5.zza, 3, zztqVar5.zzb));
                    this.zzb.zza();
                } else if (this.zzc.zzb()) {
                    zztq zztqVar6 = this.zzc;
                    this.zzi.zzb(zzalw.zzc(zztqVar6.zza, 3, zztqVar6.zzb));
                    this.zzc.zza();
                }
            }
            if (this.zzd.zze(i6)) {
                zztq zztqVar7 = this.zzd;
                this.zzm.zzb(this.zzd.zza, zzalw.zza(zztqVar7.zza, zztqVar7.zzb));
                this.zzm.zzh(4);
                this.zza.zzb(j2, this.zzm);
            }
            if (this.zzi.zze(j, i5, this.zzj, this.zzl)) {
                this.zzl = false;
            }
            long j3 = this.zzk;
            if (!this.zzj) {
                this.zzb.zzc(i3);
                this.zzc.zzc(i3);
            }
            this.zzd.zzc(i3);
            this.zzi.zzd(j, i3, j3);
            zzg = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztb
    public final void zze() {
    }
}
