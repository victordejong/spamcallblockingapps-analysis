package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zztw;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcju.class */
public final class zzcju implements zzeqb<zzcjz> {
    public static zzcju zzaql() {
        zzcju zzcjuVar;
        zzcjuVar = zzcjt.zzglb;
        return zzcjuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcjz) zzeqh.zza(new zzcjz(zztw.zza.EnumC2616zza.REQUEST_WILL_MAKE_NETWORK_REQUEST, zztw.zza.EnumC2616zza.REQUEST_DID_RECEIVE_NETWORK_RESPONSE, zztw.zza.EnumC2616zza.REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST), "Cannot return null from a non-@Nullable @Provides method");
    }
}
