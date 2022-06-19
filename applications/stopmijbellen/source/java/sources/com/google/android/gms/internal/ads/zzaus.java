package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaus.class */
public final class zzaus implements zzauo {
    private final zzauo[] zza;
    private final ArrayList<zzauo> zzb;
    private zzaun zzd;
    private zzapr zze;
    private zzaur zzg;
    private final zzapq zzc = new zzapq();
    private int zzf = -1;

    public zzaus(zzauo... zzauoVarArr) {
        this.zza = zzauoVarArr;
        this.zzb = new ArrayList<>(Arrays.asList(zzauoVarArr));
    }

    public static /* bridge */ /* synthetic */ void zze(zzaus zzausVar, int i, zzapr zzaprVar, Object obj) {
        zzaur zzaurVar;
        if (zzausVar.zzg == null) {
            for (int i2 = 0; i2 <= 0; i2++) {
                zzaprVar.zzg(i2, zzausVar.zzc, false);
            }
            int i3 = zzausVar.zzf;
            if (i3 == -1) {
                zzausVar.zzf = 1;
            } else if (i3 != 1) {
                zzaurVar = new zzaur(1);
                zzausVar.zzg = zzaurVar;
            }
            zzaurVar = null;
            zzausVar.zzg = zzaurVar;
        }
        if (zzausVar.zzg != null) {
            return;
        }
        zzausVar.zzb.remove(zzausVar.zza[i]);
        if (i == 0) {
            zzausVar.zze = zzaprVar;
        }
        if (!zzausVar.zzb.isEmpty()) {
            return;
        }
        zzausVar.zzd.zze(zzausVar.zze, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zza() throws IOException {
        zzaur zzaurVar = this.zzg;
        if (zzaurVar == null) {
            for (zzauo zzauoVar : this.zza) {
                zzauoVar.zza();
            }
            return;
        }
        throw zzaurVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzb(zzaow zzaowVar, boolean z, zzaun zzaunVar) {
        this.zzd = zzaunVar;
        int i = 0;
        while (true) {
            zzauo[] zzauoVarArr = this.zza;
            if (i < zzauoVarArr.length) {
                zzauoVarArr[i].zzb(zzaowVar, false, new zzauq(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzc(zzaum zzaumVar) {
        zzaup zzaupVar = (zzaup) zzaumVar;
        int i = 0;
        while (true) {
            zzauo[] zzauoVarArr = this.zza;
            if (i < zzauoVarArr.length) {
                zzauoVarArr[i].zzc(zzaupVar.zza[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zzd() {
        for (zzauo zzauoVar : this.zza) {
            zzauoVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final zzaum zzf(int i, zzavz zzavzVar) {
        int length = this.zza.length;
        zzaum[] zzaumVarArr = new zzaum[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzaumVarArr[i2] = this.zza[i2].zzf(i, zzavzVar);
        }
        return new zzaup(zzaumVarArr);
    }
}
