package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclo.class */
public final class zzclo implements AppEventListener, zzbrm, zzbrr, zzbse, zzbsh, zzbtb, zzbua, zzdrp, zzvc {
    private long startTime;
    private final List<Object> zzehu;
    private final zzclc zzgmo;

    public zzclo(zzclc zzclcVar, zzbgc zzbgcVar) {
        this.zzgmo = zzclcVar;
        this.zzehu = Collections.singletonList(zzbgcVar);
    }

    private final void zza(Class<?> cls, String str, Object... objArr) {
        zzclc zzclcVar = this.zzgmo;
        List<Object> list = this.zzehu;
        String valueOf = String.valueOf(cls.getSimpleName());
        zzclcVar.zza(list, valueOf.length() != 0 ? "Event-".concat(valueOf) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        zza(zzvc.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        zza(zzbrm.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        zza(zzbse.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
        zza(zzbrm.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        long elapsedRealtime = zzr.zzky().elapsedRealtime();
        long j = this.startTime;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(elapsedRealtime - j);
        zzd.zzeb(sb.toString());
        zza(zzbtb.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        zza(zzbrm.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zza(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
        zza(zzbrm.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
        zza(zzbrm.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str) {
        zza(zzdrh.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str, Throwable th) {
        zza(zzdrh.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    @ParametersAreNonnullByDefault
    public final void zzb(zzauk zzaukVar, String str, String str2) {
        zza(zzbrm.class, "onRewarded", zzaukVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzb(zzdnl zzdnlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrkVar, String str) {
        zza(zzdrh.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrkVar, String str) {
        zza(zzdrh.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvgVar) {
        zza(zzbrr.class, "onAdFailedToLoad", Integer.valueOf(zzvgVar.errorCode), zzvgVar.zzchg, zzvgVar.zzchh);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        zza(zzbsh.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        zza(zzbsh.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        zza(zzbsh.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzbua
    public final void zzd(zzatq zzatqVar) {
        this.startTime = zzr.zzky().elapsedRealtime();
        zza(zzbua.class, "onAdRequest", new Object[0]);
    }
}
