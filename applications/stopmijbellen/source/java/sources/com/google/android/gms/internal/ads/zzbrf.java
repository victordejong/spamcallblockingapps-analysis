package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrf.class */
public final /* synthetic */ class zzbrf implements zzfpv {
    public static final /* synthetic */ zzbrf zza = new zzbrf();

    private /* synthetic */ zzbrf() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final Object apply(Object obj) {
        Throwable th = (Throwable) obj;
        zzbrt<zzcop> zzbrtVar = zzbrs.zza;
        if (zzbmw.zzk.zze().booleanValue()) {
            zzt.zzo().zzs(th, "prepareClickUrl.attestation1");
            return "failure_click_attok";
        }
        return "failure_click_attok";
    }
}
