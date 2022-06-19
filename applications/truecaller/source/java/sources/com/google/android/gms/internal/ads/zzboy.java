package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboy.class */
public final /* synthetic */ class zzboy implements zzfln {
    public static final zzfln zza = new zzboy();

    private zzboy() {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final Object apply(Object obj) {
        Throwable th = (Throwable) obj;
        zzbpr<zzcml> zzbprVar = zzbpq.zza;
        if (zzbkx.zzk.zze().booleanValue()) {
            zzt.zzg().zzk(th, "prepareClickUrl.attestation1");
            return "failure_click_attok";
        }
        return "failure_click_attok";
    }
}
