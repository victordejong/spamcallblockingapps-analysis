package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzf.class */
public final class zzbzf implements zzeoy<Set<zzcab<AdMetadataListener>>> {

    /* renamed from: a */
    public final zzbys f25633a;

    public zzbzf(zzbys zzbysVar) {
        this.f25633a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbzf m14885a(zzbys zzbysVar) {
        return new zzbzf(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<AdMetadataListener>> e = this.f25633a.m14931e();
        zzepe.m12187a(e, "Cannot return null from a non-@Nullable @Provides method");
        return e;
    }
}
