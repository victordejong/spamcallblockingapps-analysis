package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhv.class */
public final class zzhv implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ zzhw zza;

    public /* synthetic */ zzhv(zzhw zzhwVar, zzhi zzhiVar) {
        this.zza = zzhwVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzfu zzfuVar;
        try {
            try {
                this.zza.zzs.zzau().zzk().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (intent == null) {
                    zzfuVar = this.zza.zzs;
                } else {
                    Uri data = intent.getData();
                    if (data != null && data.isHierarchical()) {
                        this.zza.zzs.zzl();
                        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                        boolean z = true;
                        String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                        String queryParameter = data.getQueryParameter("referrer");
                        if (bundle != null) {
                            z = false;
                        }
                        this.zza.zzs.zzav().zzh(new zzhu(this, z, data, str, queryParameter));
                        zzfuVar = this.zza.zzs;
                    }
                    zzfuVar = this.zza.zzs;
                }
            } catch (RuntimeException e) {
                this.zza.zzs.zzau().zzb().zzb("Throwable caught in onActivityCreated", e);
                zzfuVar = this.zza.zzs;
            }
            zzfuVar.zzx().zzo(activity, bundle);
        } catch (Throwable th) {
            this.zza.zzs.zzx().zzo(activity, bundle);
            throw th;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.zza.zzs.zzx().zzt(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.zza.zzs.zzx().zzr(activity);
        zzjz zzh = this.zza.zzs.zzh();
        zzh.zzs.zzav().zzh(new zzjs(zzh, zzh.zzs.zzay().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzjz zzh = this.zza.zzs.zzh();
        zzh.zzs.zzav().zzh(new zzjr(zzh, zzh.zzs.zzay().elapsedRealtime()));
        this.zza.zzs.zzx().zzq(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.zza.zzs.zzx().zzs(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
