package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqp.class */
public final class zzqp extends zzpk<Integer> {
    private static final zzaz zza;
    private final zzqb[] zzb;
    private final zzcd[] zzc;
    private final ArrayList<zzqb> zzd;
    private zzqo zzi;
    private final zzpm zzj;
    private int zzg = -1;
    private long[][] zzh = new long[0];
    private final Map<Object, Long> zze = new HashMap();
    private final zzfts<Object, zzpg> zzf = zzfua.zzb(8).zzb(2).zza();

    static {
        zzaf zzafVar = new zzaf();
        zzafVar.zza("MergingMediaSource");
        zza = zzafVar.zzc();
    }

    /* JADX WARN: Type inference failed for: r1v9, types: [long[], long[][]] */
    public zzqp(boolean z, boolean z2, zzqb... zzqbVarArr) {
        zzpm zzpmVar = new zzpm();
        this.zzb = zzqbVarArr;
        this.zzj = zzpmVar;
        this.zzd = new ArrayList<>(Arrays.asList(zzqbVarArr));
        this.zzc = new zzcd[zzqbVarArr.length];
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzA(zzpy zzpyVar) {
        zzqn zzqnVar = (zzqn) zzpyVar;
        int i = 0;
        while (true) {
            zzqb[] zzqbVarArr = this.zzb;
            if (i < zzqbVarArr.length) {
                zzqbVarArr[i].zzA(zzqnVar.zzm(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzpy zzC(zzpz zzpzVar, zztk zztkVar, long j) {
        int length = this.zzb.length;
        zzpy[] zzpyVarArr = new zzpy[length];
        int zza2 = this.zzc[0].zza(zzpzVar.zza);
        for (int i = 0; i < length; i++) {
            zzpyVarArr[i] = this.zzb[i].zzC(zzpzVar.zzc(this.zzc[i].zzf(zza2)), zztkVar, j - this.zzh[zza2][i]);
        }
        return new zzqn(this.zzj, this.zzh[zza2], zzpyVarArr, null);
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzpc
    public final void zzm(zzdx zzdxVar) {
        super.zzm(zzdxVar);
        for (int i = 0; i < this.zzb.length; i++) {
            zzx(Integer.valueOf(i), this.zzb[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzpc
    public final void zzp() {
        super.zzp();
        Arrays.fill(this.zzc, (Object) null);
        this.zzg = -1;
        this.zzi = null;
        this.zzd.clear();
        Collections.addAll(this.zzd, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final /* bridge */ /* synthetic */ zzpz zzu(Integer num, zzpz zzpzVar) {
        if (num.intValue() == 0) {
            return zzpzVar;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzqb
    public final void zzv() throws IOException {
        zzqo zzqoVar = this.zzi;
        if (zzqoVar == null) {
            super.zzv();
            return;
        }
        throw zzqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final /* bridge */ /* synthetic */ void zzw(Integer num, zzqb zzqbVar, zzcd zzcdVar) {
        int i;
        if (this.zzi != null) {
            return;
        }
        if (this.zzg == -1) {
            i = zzcdVar.zzb();
            this.zzg = i;
        } else {
            int zzb = zzcdVar.zzb();
            i = this.zzg;
            if (zzb != i) {
                this.zzi = new zzqo(0);
                return;
            }
        }
        if (this.zzh.length == 0) {
            this.zzh = new long[i][this.zzc.length];
        }
        this.zzd.remove(zzqbVar);
        this.zzc[num.intValue()] = zzcdVar;
        if (!this.zzd.isEmpty()) {
            return;
        }
        zzn(this.zzc[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzaz zzy() {
        zzqb[] zzqbVarArr = this.zzb;
        return zzqbVarArr.length > 0 ? zzqbVarArr[0].zzy() : zza;
    }
}
