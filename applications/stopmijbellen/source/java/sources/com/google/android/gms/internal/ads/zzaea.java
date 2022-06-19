package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaea.class */
public final class zzaea implements zzadr {
    private final zzaes zza;
    private long zze;
    private String zzg;
    private zzxt zzh;
    private zzadz zzi;
    private boolean zzj;
    private boolean zzl;
    private final boolean[] zzf = new boolean[3];
    private final zzaeg zzb = new zzaeg(7, 128);
    private final zzaeg zzc = new zzaeg(8, 128);
    private final zzaeg zzd = new zzaeg(6, 128);
    private long zzk = -9223372036854775807L;
    private final zzfd zzm = new zzfd();

    public zzaea(zzaes zzaesVar, boolean z, boolean z2) {
        this.zza = zzaesVar;
    }

    @RequiresNonNull({"sampleReader"})
    private final void zzf(byte[] bArr, int i, int i2) {
        if (!this.zzj) {
            this.zzb.zza(bArr, i, i2);
            this.zzc.zza(bArr, i, i2);
        }
        this.zzd.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zza(zzfd zzfdVar) {
        zzdy.zzb(this.zzh);
        int i = zzfn.zza;
        int zzc = zzfdVar.zzc();
        int zzd = zzfdVar.zzd();
        byte[] zzH = zzfdVar.zzH();
        this.zze += zzfdVar.zza();
        zzxr.zzb(this.zzh, zzfdVar, zzfdVar.zza());
        while (true) {
            int zza = zzeu.zza(zzH, zzc, zzd, this.zzf);
            if (zza == zzd) {
                zzf(zzH, zzc, zzd);
                return;
            }
            int i2 = zza + 3;
            int i3 = zzH[i2] & 31;
            int i4 = zza - zzc;
            if (i4 > 0) {
                zzf(zzH, zzc, zza);
            }
            int i5 = zzd - zza;
            long j = this.zze - i5;
            int i6 = i4 < 0 ? -i4 : 0;
            long j2 = this.zzk;
            if (!this.zzj) {
                this.zzb.zzd(i6);
                this.zzc.zzd(i6);
                if (!this.zzj) {
                    if (this.zzb.zze() && this.zzc.zze()) {
                        ArrayList arrayList = new ArrayList();
                        zzaeg zzaegVar = this.zzb;
                        arrayList.add(Arrays.copyOf(zzaegVar.zza, zzaegVar.zzb));
                        zzaeg zzaegVar2 = this.zzc;
                        arrayList.add(Arrays.copyOf(zzaegVar2.zza, zzaegVar2.zzb));
                        zzaeg zzaegVar3 = this.zzb;
                        zzet zzd2 = zzeu.zzd(zzaegVar3.zza, 4, zzaegVar3.zzb);
                        zzaeg zzaegVar4 = this.zzc;
                        zzes zzc2 = zzeu.zzc(zzaegVar4.zza, 4, zzaegVar4.zzb);
                        String zza2 = zzea.zza(zzd2.zza, zzd2.zzb, zzd2.zzc);
                        zzxt zzxtVar = this.zzh;
                        zzz zzzVar = new zzz();
                        zzzVar.zzH(this.zzg);
                        zzzVar.zzS("video/avc");
                        zzzVar.zzx(zza2);
                        zzzVar.zzX(zzd2.zze);
                        zzzVar.zzF(zzd2.zzf);
                        zzzVar.zzP(zzd2.zzg);
                        zzzVar.zzI(arrayList);
                        zzxtVar.zzk(zzzVar.zzY());
                        this.zzj = true;
                        this.zzi.zzb(zzd2);
                        this.zzi.zza(zzc2);
                        this.zzb.zzb();
                        this.zzc.zzb();
                    }
                } else if (this.zzb.zze()) {
                    zzaeg zzaegVar5 = this.zzb;
                    this.zzi.zzb(zzeu.zzd(zzaegVar5.zza, 4, zzaegVar5.zzb));
                    this.zzb.zzb();
                } else if (this.zzc.zze()) {
                    zzaeg zzaegVar6 = this.zzc;
                    this.zzi.zza(zzeu.zzc(zzaegVar6.zza, 4, zzaegVar6.zzb));
                    this.zzc.zzb();
                }
            }
            if (this.zzd.zzd(i6)) {
                zzaeg zzaegVar7 = this.zzd;
                this.zzm.zzD(this.zzd.zza, zzeu.zzb(zzaegVar7.zza, zzaegVar7.zzb));
                this.zzm.zzF(4);
                this.zza.zza(j2, this.zzm);
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
            zzc = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        zzafdVar.zzc();
        this.zzg = zzafdVar.zzb();
        zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 2);
        this.zzh = zzv;
        this.zzi = new zzadz(zzv, false, false);
        this.zza.zzb(zzwsVar, zzafdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zzd(long j, int i) {
        if (j != -9223372036854775807L) {
            this.zzk = j;
        }
        this.zzl |= (i & 2) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadr
    public final void zze() {
        this.zze = 0L;
        this.zzl = false;
        this.zzk = -9223372036854775807L;
        zzeu.zze(this.zzf);
        this.zzb.zzb();
        this.zzc.zzb();
        this.zzd.zzb();
        zzadz zzadzVar = this.zzi;
        if (zzadzVar != null) {
            zzadzVar.zzc();
        }
    }
}
