package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkn.class */
public final class zzbkn implements zzeqb<JSONObject> {
    private final zzeqo<zzdmw> zzfta;

    private zzbkn(zzeqo<zzdmw> zzeqoVar) {
        this.zzfta = zzeqoVar;
    }

    public static zzbkn zzc(zzeqo<zzdmw> zzeqoVar) {
        return new zzbkn(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzbko.zza(this.zzfta.get());
    }
}
