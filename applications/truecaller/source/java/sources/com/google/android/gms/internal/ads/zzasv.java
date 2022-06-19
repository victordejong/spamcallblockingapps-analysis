package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasv.class */
public final class zzasv implements zzasr {
    private final zzasr[] zza;
    private final ArrayList<zzasr> zzb;
    private zzasq zzd;
    private zzanx zze;
    private zzasu zzg;
    private final zzanw zzc = new zzanw();
    private int zzf = -1;

    public zzasv(zzasr... zzasrVarArr) {
        this.zza = zzasrVarArr;
        this.zzb = new ArrayList<>(Arrays.asList(zzasrVarArr));
    }

    public static /* synthetic */ void zzf(zzasv zzasvVar, int i, zzanx zzanxVar, Object obj) {
        zzasu zzasuVar;
        if (zzasvVar.zzg == null) {
            for (int i2 = 0; i2 <= 0; i2++) {
                zzanxVar.zzg(i2, zzasvVar.zzc, false);
            }
            int i3 = zzasvVar.zzf;
            if (i3 == -1) {
                zzasvVar.zzf = 1;
            } else if (i3 != 1) {
                zzasuVar = new zzasu(1);
                zzasvVar.zzg = zzasuVar;
            }
            zzasuVar = null;
            zzasvVar.zzg = zzasuVar;
        }
        if (zzasvVar.zzg != null) {
            return;
        }
        zzasvVar.zzb.remove(zzasvVar.zza[i]);
        if (i == 0) {
            zzasvVar.zze = zzanxVar;
        }
        if (!zzasvVar.zzb.isEmpty()) {
            return;
        }
        zzasvVar.zzd.zzi(zzasvVar.zze, null);
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zza(zzanc zzancVar, boolean z, zzasq zzasqVar) {
        this.zzd = zzasqVar;
        int i = 0;
        while (true) {
            zzasr[] zzasrVarArr = this.zza;
            if (i < zzasrVarArr.length) {
                zzasrVarArr[i].zza(zzancVar, false, new zzast(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzb() throws IOException {
        zzasu zzasuVar = this.zzg;
        if (zzasuVar == null) {
            for (zzasr zzasrVar : this.zza) {
                zzasrVar.zzb();
            }
            return;
        }
        throw zzasuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzc(zzasp zzaspVar) {
        zzass zzassVar = (zzass) zzaspVar;
        int i = 0;
        while (true) {
            zzasr[] zzasrVarArr = this.zza;
            if (i < zzasrVarArr.length) {
                zzasrVarArr[i].zzc(zzassVar.zza[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final void zzd() {
        for (zzasr zzasrVar : this.zza) {
            zzasrVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasr
    public final zzasp zze(int i, zzauc zzaucVar) {
        int length = this.zza.length;
        zzasp[] zzaspVarArr = new zzasp[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzaspVarArr[i2] = this.zza[i2].zze(i, zzaucVar);
        }
        return new zzass(zzaspVarArr);
    }
}
