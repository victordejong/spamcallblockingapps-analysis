package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.p071h5.OnH5AdsEventListener;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbep.class */
public final class zzbep {
    private final zzbdf zza;
    private final zzbdd zzb;
    private final zzbhx zzc;
    private final zzbog zzd;
    private final zzcde zze;
    private final zzbzn zzf;
    private final zzboh zzg;
    private zzcat zzh;

    public zzbep(zzbdf zzbdfVar, zzbdd zzbddVar, zzbhx zzbhxVar, zzbog zzbogVar, zzcde zzcdeVar, zzbzn zzbznVar, zzboh zzbohVar) {
        this.zza = zzbdfVar;
        this.zzb = zzbddVar;
        this.zzc = zzbhxVar;
        this.zzd = zzbogVar;
        this.zze = zzcdeVar;
        this.zzf = zzbznVar;
        this.zzg = zzbohVar;
    }

    public static /* synthetic */ void zzi(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString(AnalyticsConstants.FLOW, str);
        zzber.zza().zze(context, zzber.zzd().zza, "gmob-apps", bundle, true);
    }

    public final zzbfn zzj(Context context, zzbdl zzbdlVar, String str, zzbvg zzbvgVar) {
        return new zzbed(this, context, zzbdlVar, str, zzbvgVar).zzd(context, false);
    }

    public final zzbfn zzk(Context context, zzbdl zzbdlVar, String str, zzbvg zzbvgVar) {
        return new zzbef(this, context, zzbdlVar, str, zzbvgVar).zzd(context, false);
    }

    public final zzbfj zzl(Context context, String str, zzbvg zzbvgVar) {
        return new zzbeh(this, context, str, zzbvgVar).zzd(context, false);
    }

    public final zzbml zzm(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new zzbel(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzbmr zzn(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new zzben(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    public final zzccs zzo(Context context, String str, zzbvg zzbvgVar) {
        return new zzbeo(this, context, str, zzbvgVar).zzd(context, false);
    }

    public final zzbzq zzp(Activity activity) {
        zzbdv zzbdvVar = new zzbdv(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzcgt.zzf("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return zzbdvVar.zzd(activity, z);
    }

    public final zzcfn zzq(Context context, zzbvg zzbvgVar) {
        return new zzbdx(this, context, zzbvgVar).zzd(context, false);
    }

    public final zzbze zzr(Context context, zzbvg zzbvgVar) {
        return new zzbdz(this, context, zzbvgVar).zzd(context, false);
    }

    public final zzbqp zzs(Context context, zzbvg zzbvgVar, OnH5AdsEventListener onH5AdsEventListener) {
        return new zzbeb(this, context, zzbvgVar, onH5AdsEventListener).zzd(context, false);
    }
}
