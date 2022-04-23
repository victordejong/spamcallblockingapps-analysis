package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import p131c.p161d.p170b.p224d.p252g.p253a.C3360am;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpa.class */
public final class zzcpa implements zzeoy<String> {
    /* renamed from: a */
    public static zzcpa m13959a() {
        zzcpa zzcpaVar;
        zzcpaVar = C3360am.f12299a;
        return zzcpaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzp.m17969c();
        String b = zzayu.m16115b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
