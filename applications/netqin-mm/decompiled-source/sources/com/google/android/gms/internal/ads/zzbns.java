package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
import p131c.p161d.p170b.p224d.p252g.p253a.C3689jc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbns.class */
public final class zzbns implements zzeoy<zzua.zza.EnumC10505zza> {
    /* renamed from: a */
    public static zzbns m15269a() {
        zzbns zzbnsVar;
        zzbnsVar = C3689jc.f13771a;
        return zzbnsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzua.zza.EnumC10505zza zzaVar = zzua.zza.EnumC10505zza.APP_OPEN;
        zzepe.m12187a(zzaVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzaVar;
    }
}
