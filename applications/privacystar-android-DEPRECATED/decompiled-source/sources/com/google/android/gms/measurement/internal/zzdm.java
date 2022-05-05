package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.text.TextUtils;
import com.privacystar.core.util.pdus.PduHeaders;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
@MainThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdm.class */
public final class zzdm implements Application.ActivityLifecycleCallbacks {
    private final /* synthetic */ zzcs zzarc;

    private zzdm(zzcs zzcsVar) {
        this.zzarc = zzcsVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdm(zzcs zzcsVar, zzct zzctVar) {
        this(zzcsVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        try {
            this.zzarc.zzgo().zzjl().zzbx("onActivityCreated");
            Intent intent = activity.getIntent();
            if (!(intent == null || (data = intent.getData()) == null || !data.isHierarchical())) {
                if (bundle == null) {
                    Bundle zza = this.zzarc.zzgm().zza(data);
                    this.zzarc.zzgm();
                    String str = zzfk.zzd(intent) ? "gs" : PduHeaders.MESSAGE_CLASS_AUTO_STR;
                    if (zza != null) {
                        this.zzarc.logEvent(str, "_cmp", zza);
                    }
                }
                String queryParameter = data.getQueryParameter("referrer");
                if (!TextUtils.isEmpty(queryParameter)) {
                    if (!(queryParameter.contains("gclid") && (queryParameter.contains("utm_campaign") || queryParameter.contains("utm_source") || queryParameter.contains("utm_medium") || queryParameter.contains("utm_term") || queryParameter.contains("utm_content")))) {
                        this.zzarc.zzgo().zzjk().zzbx("Activity created with data 'referrer' param without gclid and at least one utm field");
                        return;
                    }
                    this.zzarc.zzgo().zzjk().zzg("Activity created with referrer", queryParameter);
                    if (!TextUtils.isEmpty(queryParameter)) {
                        this.zzarc.zzb(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_ldl", (Object) queryParameter, true);
                    }
                } else {
                    return;
                }
            }
        } catch (Exception e) {
            this.zzarc.zzgo().zzjd().zzg("Throwable caught in onActivityCreated", e);
        }
        this.zzarc.zzgh().onActivityCreated(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zzarc.zzgh().onActivityDestroyed(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.zzarc.zzgh().onActivityPaused(activity);
        zzeq zzgj = this.zzarc.zzgj();
        zzgj.zzgn().zzc(new zzeu(zzgj, zzgj.zzbx().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        this.zzarc.zzgh().onActivityResumed(activity);
        zzeq zzgj = this.zzarc.zzgj();
        zzgj.zzgn().zzc(new zzet(zzgj, zzgj.zzbx().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zzarc.zzgh().onActivitySaveInstanceState(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
