package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzo.class */
public final class zzo {
    public static void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzduk == 4 && adOverlayInfoParcel.zzduf == null) {
            if (adOverlayInfoParcel.zzchr != null) {
                adOverlayInfoParcel.zzchr.onAdClicked();
            }
            zzr.zzkt();
            if (adOverlayInfoParcel.zzdue.zzdsy) {
                context = adOverlayInfoParcel.zzdkm.mo13751d();
            }
            zza.zza(context, adOverlayInfoParcel.zzdue, adOverlayInfoParcel.zzduj, adOverlayInfoParcel.zzdue.zzdjj);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzbpx.zzekc);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!C12110n.m19015g()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        zzr.zzkv();
        zzj.zza(context, intent);
    }
}
