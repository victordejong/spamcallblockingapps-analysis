package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpg.class */
public final class zzbpg implements zzbpr<zzcml> {
    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        JSONObject zzd;
        zzcml zzcmlVar2 = zzcmlVar;
        zzblt zzaq = zzcmlVar2.zzaq();
        if (zzaq == null || (zzd = zzaq.zzd()) == null) {
            zzcmlVar2.zzd("nativeClickMetaReady", new JSONObject());
        } else {
            zzcmlVar2.zzd("nativeClickMetaReady", zzd);
        }
    }
}
