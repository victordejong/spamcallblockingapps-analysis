package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C4070tk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclm.class */
public final class zzclm implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclm m14084a() {
        zzclm zzclmVar;
        zzclmVar = C4070tk.f15412a;
        return zzclmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_RENDER, zztu.zza.zzb.REQUEST_DID_RENDER, zztu.zza.zzb.REQUEST_FAILED_TO_RENDER);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
