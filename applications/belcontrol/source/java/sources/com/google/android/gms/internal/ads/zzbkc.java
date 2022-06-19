package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkc.class */
public final /* synthetic */ class zzbkc implements Runnable {
    private final zzbeb zzeuk;
    private final JSONObject zzfst;

    public zzbkc(zzbeb zzbebVar, JSONObject jSONObject) {
        this.zzeuk = zzbebVar;
        this.zzfst = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzeuk.zzb("AFMA_updateActiveView", this.zzfst);
    }
}
