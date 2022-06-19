package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzvc;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzm.class */
public final class zzm {
    public static void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzdta == 4 && adOverlayInfoParcel.zzdsv == null) {
            zzvc zzvcVar = adOverlayInfoParcel.zzchd;
            if (zzvcVar != null) {
                zzvcVar.onAdClicked();
            }
            zzr.zzkp();
            if (adOverlayInfoParcel.zzdsu.zzdsg) {
                context = adOverlayInfoParcel.zzdjd.zzabe();
            }
            zzd zzdVar = adOverlayInfoParcel.zzdsu;
            zzb.zza(context, zzdVar, adOverlayInfoParcel.zzdsz, zzdVar.zzdif);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzbpn.zzeia);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(PKIFailureInfo.signerNotTrusted);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        zzr.zzkr();
        zzj.zza(context, intent);
    }
}
