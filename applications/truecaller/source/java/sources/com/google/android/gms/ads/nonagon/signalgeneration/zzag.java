package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzchg;
import com.google.android.gms.internal.ads.zzdzk;
import com.google.android.gms.internal.ads.zzdzl;
import com.google.android.gms.internal.ads.zzfsn;
import com.google.android.gms.internal.ads.zzgla;
import com.google.android.gms.internal.ads.zzgli;
import com.google.android.gms.internal.ads.zzgln;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzag.class */
public final class zzag implements zzgla<zzaf> {
    private final zzgln<Executor> zza;
    private final zzgln<zzdzk> zzb;

    public zzag(zzgln<Executor> zzglnVar, zzgln<zzdzk> zzglnVar2) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
    }

    /* renamed from: zza */
    public final zzaf zzb() {
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        return new zzaf(zzfsnVar, ((zzdzl) this.zzb).zzb());
    }
}
