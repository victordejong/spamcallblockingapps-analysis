package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
import p131c.p161d.p170b.p224d.p252g.p253a.C3763lc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbod.class */
public final class zzbod implements zzeoy<zzua.zza.EnumC10505zza> {
    /* renamed from: a */
    public static zzbod m15245a() {
        zzbod zzbodVar;
        zzbodVar = C3763lc.f13953a;
        return zzbodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzua.zza.EnumC10505zza zzaVar = zzua.zza.EnumC10505zza.APP_OPEN;
        zzepe.m12187a(zzaVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzaVar;
    }
}
