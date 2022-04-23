package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztu;
import p131c.p161d.p170b.p224d.p252g.p253a.C3359al;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclx.class */
public final class zzclx implements zzeoy<zzcmg> {
    /* renamed from: a */
    public static zzclx m14073a() {
        zzclx zzclxVar;
        zzclxVar = C3359al.f12298a;
        return zzclxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcmg zzcmgVar = new zzcmg(zztu.zza.zzb.REQUEST_WILL_MAKE_NETWORK_REQUEST, zztu.zza.zzb.REQUEST_DID_RECEIVE_NETWORK_RESPONSE, zztu.zza.zzb.REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST);
        zzepe.m12187a(zzcmgVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcmgVar;
    }
}
