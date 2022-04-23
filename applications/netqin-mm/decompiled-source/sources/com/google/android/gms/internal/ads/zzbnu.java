package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3726kc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnu.class */
public final class zzbnu implements zzeoy<String> {
    /* renamed from: a */
    public static zzbnu m15268a() {
        zzbnu zzbnuVar;
        zzbnuVar = C3726kc.f13863a;
        return zzbnuVar;
    }

    /* renamed from: b */
    public static String m15267b() {
        zzepe.m12187a("app_open_ad", "Cannot return null from a non-@Nullable @Provides method");
        return "app_open_ad";
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15267b();
    }
}
