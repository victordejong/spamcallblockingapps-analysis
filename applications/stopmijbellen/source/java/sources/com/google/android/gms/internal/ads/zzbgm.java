package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.p058h5.OnH5AdsEventListener;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgm.class */
public final class zzbgm {
    private final zzbfc zza;
    private final zzbfa zzb;
    private final zzbjv zzc;
    private final zzbqh zzd;
    private final zzcfl zze;
    private final zzcbp zzf;
    private final zzbqi zzg;
    private zzccv zzh;

    public zzbgm(zzbfc zzbfcVar, zzbfa zzbfaVar, zzbjv zzbjvVar, zzbqh zzbqhVar, zzcfl zzcflVar, zzcbp zzcbpVar, zzbqi zzbqiVar) {
        this.zza = zzbfcVar;
        this.zzb = zzbfaVar;
        this.zzc = zzbjvVar;
        this.zzd = zzbqhVar;
        this.zze = zzcflVar;
        this.zzf = zzcbpVar;
        this.zzg = zzbqiVar;
    }

    public static /* bridge */ /* synthetic */ void zzs(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzbgo.zzb().zzi(context, zzbgo.zzc().zza, "gmob-apps", bundle, true);
    }

    public final zzbhg zzc(Context context, String str, zzbxh zzbxhVar) {
        return new zzbge(this, context, str, zzbxhVar).zzd(context, false);
    }

    public final zzbhk zzd(Context context, zzbfi zzbfiVar, String str, zzbxh zzbxhVar) {
        return new zzbga(this, context, zzbfiVar, str, zzbxhVar).zzd(context, false);
    }

    public final zzbhk zze(Context context, zzbfi zzbfiVar, String str, zzbxh zzbxhVar) {
        return new zzbgc(this, context, zzbfiVar, str, zzbxhVar).zzd(context, false);
    }

    public final zzbom zzg(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new zzbgi(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzbos zzh(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new zzbgk(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    public final zzbsr zzk(Context context, zzbxh zzbxhVar, OnH5AdsEventListener onH5AdsEventListener) {
        return new zzbfy(this, context, zzbxhVar, onH5AdsEventListener).zzd(context, false);
    }

    public final zzcbg zzl(Context context, zzbxh zzbxhVar) {
        return new zzbfw(this, context, zzbxhVar).zzd(context, false);
    }

    public final zzcbs zzn(Activity activity) {
        zzbfs zzbfsVar = new zzbfs(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzciz.zzg("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return zzbfsVar.zzd(activity, z);
    }

    public final zzcez zzp(Context context, String str, zzbxh zzbxhVar) {
        return new zzbgl(this, context, str, zzbxhVar).zzd(context, false);
    }

    public final zzcht zzq(Context context, zzbxh zzbxhVar) {
        return new zzbfu(this, context, zzbxhVar).zzd(context, false);
    }
}
