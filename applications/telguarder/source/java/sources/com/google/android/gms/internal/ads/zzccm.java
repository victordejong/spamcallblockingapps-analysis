package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccm.class */
public final class zzccm implements zzeqb<zzcck> {
    private final zzeqo<JSONObject> zzfiy;
    private final zzeqo<zzdmw> zzfta;

    public zzccm(zzeqo<zzdmw> zzeqoVar, zzeqo<JSONObject> zzeqoVar2) {
        this.zzfta = zzeqoVar;
        this.zzfiy = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcck(this.zzfta.get(), this.zzfiy.get());
    }
}
