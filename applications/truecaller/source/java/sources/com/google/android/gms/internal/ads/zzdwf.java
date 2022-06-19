package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwf.class */
public final class zzdwf implements zzddx, zzbcv, zzdbc, zzdbw, zzdbx, zzdcq, zzdbf, zzamv, zzfet {
    private final List<Object> zza;
    private final zzdvt zzb;
    private long zzc;

    public zzdwf(zzdvt zzdvtVar, zzcoj zzcojVar) {
        this.zzb = zzdvtVar;
        this.zza = Collections.singletonList(zzcojVar);
    }

    private final void zze(Class<?> cls, String str, Object... objArr) {
        zzdvt zzdvtVar = this.zzb;
        List<Object> list = this.zza;
        String simpleName = cls.getSimpleName();
        zzdvtVar.zza(list, simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        zze(zzbcv.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zza(Context context) {
        zze(zzdbx.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzb(Context context) {
        zze(zzdbx.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzbC(String str, String str2) {
        zze(zzamv.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zze(zzdbf.class, "onAdFailedToLoad", Integer.valueOf(zzbczVar.zza), zzbczVar.zzb, zzbczVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbE(zzfem zzfemVar, String str) {
        zze(zzfel.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzbF(zzfem zzfemVar, String str) {
        zze(zzfel.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
        this.zzc = zzt.zzj().mo38789a();
        zze(zzddx.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzbo(Context context) {
        zze(zzdbx.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzc(zzfem zzfemVar, String str, Throwable th) {
        zze(zzfel.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzfet
    public final void zzd(zzfem zzfemVar, String str) {
        zze(zzfel.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        long mo38789a = zzt.zzj().mo38789a();
        long j = this.zzc;
        StringBuilder m8554x = C22128a.m8554x(41, "Ad Request Latency : ");
        m8554x.append(mo38789a - j);
        zze.zza(m8554x.toString());
        zze(zzdcq.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        zze(zzdbw.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        zze(zzdbc.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        zze(zzdbc.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
        zze(zzdbc.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
        zze(zzdbc.class, "onRewarded", zzcbzVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
        zze(zzdbc.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
        zze(zzdbc.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
    }
}
