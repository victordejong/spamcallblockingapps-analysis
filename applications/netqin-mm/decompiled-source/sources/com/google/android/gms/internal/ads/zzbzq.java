package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzq.class */
public final class zzbzq implements zzeoy<Set<zzcab<VideoController.VideoLifecycleCallbacks>>> {
    public zzbzq(zzbys zzbysVar) {
    }

    /* renamed from: a */
    public static zzbzq m14872a(zzbys zzbysVar) {
        return new zzbzq(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set emptySet = Collections.emptySet();
        zzepe.m12187a(emptySet, "Cannot return null from a non-@Nullable @Provides method");
        return emptySet;
    }
}
