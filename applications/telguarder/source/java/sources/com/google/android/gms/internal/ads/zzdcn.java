package com.google.android.gms.internal.ads;

import androidx.work.WorkRequest;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcn.class */
public final class zzdcn implements zzeqb<zzdch<zzdby>> {
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzdcb> zzhbu;

    public zzdcn(zzeqo<zzdcb> zzeqoVar, zzeqo<Clock> zzeqoVar2) {
        this.zzhbu = zzeqoVar;
        this.zzfsz = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdch) zzeqh.zza(new zzdch(this.zzhbu.get(), WorkRequest.MIN_BACKOFF_MILLIS, this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
