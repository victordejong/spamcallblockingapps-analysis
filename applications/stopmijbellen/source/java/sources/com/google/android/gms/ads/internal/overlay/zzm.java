package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzdmd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzm.class */
public final class zzm {
    public static final void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzk != 4 || adOverlayInfoParcel.zzc != null) {
            Intent intent = new Intent();
            intent.setClassName(context, AdActivity.CLASS_NAME);
            intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzm.zzd);
            intent.putExtra("shouldCallOnOverlayOpened", z);
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
            intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
            if (!PlatformVersion.isAtLeastLollipop()) {
                intent.addFlags(524288);
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzQ(context, intent);
            return;
        }
        zzbes zzbesVar = adOverlayInfoParcel.zzb;
        if (zzbesVar != null) {
            zzbesVar.onAdClicked();
        }
        zzdmd zzdmdVar = adOverlayInfoParcel.zzy;
        if (zzdmdVar != null) {
            zzdmdVar.zzq();
        }
        Activity zzk = adOverlayInfoParcel.zzd.zzk();
        zzc zzcVar = adOverlayInfoParcel.zza;
        Activity activity = context;
        if (zzcVar != null) {
            activity = context;
            if (zzcVar.zzj) {
                activity = context;
                if (zzk != null) {
                    activity = zzk;
                }
            }
        }
        zzt.zzi();
        zzc zzcVar2 = adOverlayInfoParcel.zza;
        zza.zzb(activity, zzcVar2, adOverlayInfoParcel.zzi, zzcVar2 != null ? zzcVar2.zzi : null);
    }
}
