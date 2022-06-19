package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhv.class */
public final class zzhv extends zzgq<Integer> {
    private static final zzagk zza;
    private final zzhh[] zzb;
    private final zzaiq[] zzc;
    private final ArrayList<zzhh> zzd;
    private zzhu zzi;
    private final zzgs zzj;
    private int zzg = -1;
    private long[][] zzh = new long[0];
    private final Map<Object, Long> zze = new HashMap();
    private final zzfpj<Object, zzgm> zzf = zzfpr.zzb(8).zzb(2).zza();

    static {
        zzagb zzagbVar = new zzagb();
        zzagbVar.zza("MergingMediaSource");
        zza = zzagbVar.zzc();
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [long[], long[][]] */
    public zzhv(boolean z, boolean z2, zzhh... zzhhVarArr) {
        zzgs zzgsVar = new zzgs();
        this.zzb = zzhhVarArr;
        this.zzj = zzgsVar;
        this.zzd = new ArrayList<>(Arrays.asList(zzhhVarArr));
        this.zzc = new zzaiq[zzhhVarArr.length];
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzA(zzhe zzheVar) {
        zzht zzhtVar = (zzht) zzheVar;
        int i = 0;
        while (true) {
            zzhh[] zzhhVarArr = this.zzb;
            if (i < zzhhVarArr.length) {
                zzhhVarArr[i].zzA(zzhtVar.zza(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final zzhe zzC(zzhf zzhfVar, zzko zzkoVar, long j) {
        int length = this.zzb.length;
        zzhe[] zzheVarArr = new zzhe[length];
        int zzi = this.zzc[0].zzi(zzhfVar.zza);
        for (int i = 0; i < length; i++) {
            zzheVarArr[i] = this.zzb[i].zzC(zzhfVar.zzc(this.zzc[i].zzj(zzi)), zzkoVar, j - this.zzh[zzi][i]);
        }
        return new zzht(this.zzj, this.zzh[zzi], zzheVarArr, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgi
    public final void zza(zzay zzayVar) {
        super.zza(zzayVar);
        for (int i = 0; i < this.zzb.length; i++) {
            zzw(Integer.valueOf(i), this.zzb[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgi
    public final void zzd() {
        super.zzd();
        Arrays.fill(this.zzc, (Object) null);
        this.zzg = -1;
        this.zzi = null;
        this.zzd.clear();
        Collections.addAll(this.zzd, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzhh
    public final void zzu() throws IOException {
        zzhu zzhuVar = this.zzi;
        if (zzhuVar == null) {
            super.zzu();
            return;
        }
        throw zzhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final /* bridge */ /* synthetic */ void zzv(Integer num, zzhh zzhhVar, zzaiq zzaiqVar) {
        int i;
        if (this.zzi != null) {
            return;
        }
        if (this.zzg == -1) {
            i = zzaiqVar.zzg();
            this.zzg = i;
        } else {
            int zzg = zzaiqVar.zzg();
            i = this.zzg;
            if (zzg != i) {
                this.zzi = new zzhu(0);
                return;
            }
        }
        if (this.zzh.length == 0) {
            this.zzh = new long[i][this.zzc.length];
        }
        this.zzd.remove(zzhhVar);
        this.zzc[num.intValue()] = zzaiqVar;
        if (!this.zzd.isEmpty()) {
            return;
        }
        zze(this.zzc[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final /* bridge */ /* synthetic */ zzhf zzx(Integer num, zzhf zzhfVar) {
        if (num.intValue() == 0) {
            return zzhfVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final zzagk zzz() {
        zzhh[] zzhhVarArr = this.zzb;
        return zzhhVarArr.length > 0 ? zzhhVarArr[0].zzz() : zza;
    }
}
