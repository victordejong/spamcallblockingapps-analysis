package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcht;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcl.class */
public final class zzcl {
    private final View zza;
    private Activity zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final ViewTreeObserver.OnGlobalLayoutListener zzf;

    public zzcl(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzb = activity;
        this.zza = view;
        this.zzf = onGlobalLayoutListener;
    }

    private final void zzf() {
        if (!this.zzc) {
            Activity activity = this.zzb;
            if (activity != null) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzf;
                ViewTreeObserver zzh = zzh(activity);
                if (zzh != null) {
                    zzh.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            zzt.zzz();
            zzcht.zza(this.zza, this.zzf);
            this.zzc = true;
        }
    }

    private final void zzg() {
        Activity activity = this.zzb;
        if (activity != null && this.zzc) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzf;
            ViewTreeObserver zzh = zzh(activity);
            if (zzh != null) {
                zzt.zze();
                zzh.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.zzc = false;
        }
    }

    private static ViewTreeObserver zzh(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    public final void zza(Activity activity) {
        this.zzb = activity;
    }

    public final void zzb() {
        this.zze = true;
        if (this.zzd) {
            zzf();
        }
    }

    public final void zzc() {
        this.zze = false;
        zzg();
    }

    public final void zzd() {
        this.zzd = true;
        if (this.zze) {
            zzf();
        }
    }

    public final void zze() {
        this.zzd = false;
        zzg();
    }
}
