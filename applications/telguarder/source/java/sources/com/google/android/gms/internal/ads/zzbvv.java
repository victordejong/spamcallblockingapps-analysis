package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvv.class */
public final class zzbvv implements zzeqb<zzbvt> {
    private final zzeqo<Set<zzbya<AppEventListener>>> zzfvd;

    private zzbvv(zzeqo<Set<zzbya<AppEventListener>>> zzeqoVar) {
        this.zzfvd = zzeqoVar;
    }

    public static zzbvv zzr(zzeqo<Set<zzbya<AppEventListener>>> zzeqoVar) {
        return new zzbvv(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvt(this.zzfvd.get());
    }
}
