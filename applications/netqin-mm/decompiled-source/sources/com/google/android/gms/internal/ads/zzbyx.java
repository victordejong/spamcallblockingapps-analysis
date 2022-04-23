package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyx.class */
public final class zzbyx implements zzeoy<Set<zzcab<zzp>>> {

    /* renamed from: a */
    public final zzbys f25626a;

    public zzbyx(zzbys zzbysVar) {
        this.f25626a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbyx m14894a(zzbys zzbysVar) {
        return new zzbyx(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzp>> k = this.f25626a.m14925k();
        zzepe.m12187a(k, "Cannot return null from a non-@Nullable @Provides method");
        return k;
    }
}
