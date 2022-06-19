package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzedb;
import com.google.android.gms.internal.ads.zzedc;
import com.google.android.gms.internal.ads.zzfxb;
import com.google.android.gms.internal.ads.zzgpr;
import com.google.android.gms.internal.ads.zzgpz;
import com.google.android.gms.internal.ads.zzgqe;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzag.class */
public final class zzag implements zzgpr<zzaf> {
    private final zzgqe<Executor> zza;
    private final zzgqe<zzedb> zzb;

    public zzag(zzgqe<Executor> zzgqeVar, zzgqe<zzedb> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzaf zzb() {
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        return new zzaf(zzfxbVar, ((zzedc) this.zzb).zzb());
    }
}
