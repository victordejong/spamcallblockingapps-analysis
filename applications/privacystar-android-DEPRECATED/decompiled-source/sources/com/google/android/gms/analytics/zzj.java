package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzj;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzj.class */
public class zzj<T extends zzj> {
    private final zzk zzsj;
    protected final zzg zzsk;
    private final List<zzh> zzsl = new ArrayList();

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public zzj(zzk zzkVar, Clock clock) {
        Preconditions.checkNotNull(zzkVar);
        this.zzsj = zzkVar;
        zzg zzgVar = new zzg(this, clock);
        zzgVar.zzab();
        this.zzsk = zzgVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zzg zzgVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzk zzac() {
        return this.zzsj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzd(zzg zzgVar) {
        for (zzh zzhVar : this.zzsl) {
            zzhVar.zza(this, zzgVar);
        }
    }

    public zzg zzm() {
        zzg zzs = this.zzsk.zzs();
        zzd(zzs);
        return zzs;
    }
}
