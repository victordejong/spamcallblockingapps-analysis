package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkj.class */
public final class zzbkj implements zzeqb<Set<zzbya<zzq>>> {
    private final zzeqo<zzbjz> zzewe;
    private final zzeqo<Executor> zzewf;
    private final zzeqo<JSONObject> zzftd;

    private zzbkj(zzeqo<zzbjz> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<JSONObject> zzeqoVar3) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
        this.zzftd = zzeqoVar3;
    }

    public static zzbkj zzd(zzeqo<zzbjz> zzeqoVar, zzeqo<Executor> zzeqoVar2, zzeqo<JSONObject> zzeqoVar3) {
        return new zzbkj(zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzftd.get() == null ? Collections.emptySet() : Collections.singleton(new zzbya(this.zzewe.get(), this.zzewf.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
