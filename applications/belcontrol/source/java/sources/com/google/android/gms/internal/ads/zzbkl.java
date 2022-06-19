package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkl.class */
public final /* synthetic */ class zzbkl implements Runnable {
    private final JSONObject zzfst;
    private final zzbkm zzftf;

    public zzbkl(zzbkm zzbkmVar, JSONObject jSONObject) {
        this.zzftf = zzbkmVar;
        this.zzfst = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzftf.zzi(this.zzfst);
    }
}
