package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzj.class */
public class zzj<T extends zzj> {
    private final zzk zzsn;
    public final zzg zzso;
    private final List<zzh> zzsp = new ArrayList();

    @VisibleForTesting
    public zzj(zzk zzkVar, Clock clock) {
        Preconditions.checkNotNull(zzkVar);
        this.zzsn = zzkVar;
        zzg zzgVar = new zzg(this, clock);
        zzgVar.zzar();
        this.zzso = zzgVar;
    }

    public void zza(zzg zzgVar) {
    }

    public zzg zzac() {
        zzg zzai = this.zzso.zzai();
        zzd(zzai);
        return zzai;
    }

    public final zzk zzas() {
        return this.zzsn;
    }

    public final void zzd(zzg zzgVar) {
        for (zzh zzhVar : this.zzsp) {
            zzhVar.zza(this, zzgVar);
        }
    }
}
