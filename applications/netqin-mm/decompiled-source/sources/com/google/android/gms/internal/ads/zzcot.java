package com.google.android.gms.internal.ads;

import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.C4294zl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcot.class */
public final class zzcot implements zzeoy<List<String>> {
    /* renamed from: a */
    public static zzcot m13968a() {
        zzcot zzcotVar;
        zzcotVar = C4294zl.f16460a;
        return zzcotVar;
    }

    /* renamed from: b */
    public static List<String> m13967b() {
        List<String> a = zzabb.m16917a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13967b();
    }
}
