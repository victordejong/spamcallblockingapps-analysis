package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzw.class */
public final class zzdzw implements zzdhm, zzbes, zzder, zzdfl, zzdfm, zzdgf, zzdeu, zzaop, zzfif {
    private final List<Object> zza;
    private final zzdzk zzb;
    private long zzc;

    public zzdzw(zzdzk zzdzkVar, zzcqm zzcqmVar) {
        this.zzb = zzdzkVar;
        this.zza = Collections.singletonList(zzcqmVar);
    }

    private final void zzf(Class<?> cls, String str, Object... objArr) {
        zzdzk zzdzkVar = this.zzb;
        List<Object> list = this.zza;
        String simpleName = cls.getSimpleName();
        zzdzkVar.zza(list, simpleName.length() != 0 ? "Event-".concat(simpleName) : new String("Event-"), str, objArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        zzf(zzbes.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        zzf(zzdeu.class, "onAdFailedToLoad", Integer.valueOf(zzbewVar.zza), zzbewVar.zzb, zzbewVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzb(zzfhy zzfhyVar, String str, Throwable th) {
        zzf(zzfhx.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbA(Context context) {
        zzf(zzdfm.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbB(Context context) {
        zzf(zzdfm.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzaop
    public final void zzbC(String str, String str2) {
        zzf(zzaop.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
        zzf(zzder.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbN(zzfhy zzfhyVar, String str) {
        zzf(zzfhx.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzbO(zzfhy zzfhyVar, String str) {
        zzf(zzfhx.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzby(Context context) {
        zzf(zzdfm.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzfif
    public final void zzc(zzfhy zzfhyVar, String str) {
        zzf(zzfhx.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
        this.zzc = zzt.zzA().elapsedRealtime();
        zzf(zzdhm.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        zzf(zzder.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        zzf(zzdfl.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
        zzf(zzder.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        long elapsedRealtime = zzt.zzA().elapsedRealtime();
        long j = this.zzc;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Ad Request Latency : ");
        sb.append(elapsedRealtime - j);
        zze.zza(sb.toString());
        zzf(zzdgf.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        zzf(zzder.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    @ParametersAreNonnullByDefault
    public final void zzp(zzceg zzcegVar, String str, String str2) {
        zzf(zzder.class, "onRewarded", zzcegVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
        zzf(zzder.class, "onRewardedVideoStarted", new Object[0]);
    }
}
