package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaw.class */
public final class zzcaw implements zzeqb<Set<String>> {
    private final zzeqo<zzcco> zzfuw;

    public zzcaw(zzeqo<zzcco> zzeqoVar) {
        this.zzfuw = zzeqoVar;
    }

    public static Set<String> zza(zzcco zzccoVar) {
        return (Set) zzeqh.zza(zzccoVar.zzaom() != null ? Collections.singleton(POBConstants.KEY_BANNER) : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfuw.get());
    }
}
