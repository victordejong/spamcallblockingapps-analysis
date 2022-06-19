package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbai;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbz.class */
public final class zzbz {
    private final View view;
    private boolean zzbrv;
    private boolean zzbwh;
    private Activity zzehf;
    private boolean zzehg;
    private ViewTreeObserver.OnGlobalLayoutListener zzehh;
    private ViewTreeObserver.OnScrollChangedListener zzehi = null;

    public zzbz(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzehf = activity;
        this.view = view;
        this.zzehh = onGlobalLayoutListener;
    }

    private static ViewTreeObserver zzk(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void zzzu() {
        ViewTreeObserver zzk;
        if (!this.zzehg) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzehh;
            if (onGlobalLayoutListener != null) {
                Activity activity = this.zzehf;
                if (activity != null && (zzk = zzk(activity)) != null) {
                    zzk.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                zzr.zzlo();
                zzbai.zza(this.view, this.zzehh);
            }
            this.zzehg = true;
        }
    }

    private final void zzzv() {
        ViewTreeObserver zzk;
        Activity activity = this.zzehf;
        if (activity != null && this.zzehg) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzehh;
            if (onGlobalLayoutListener != null && (zzk = zzk(activity)) != null) {
                zzr.zzkt();
                zzk.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.zzehg = false;
        }
    }

    public final void onAttachedToWindow() {
        this.zzbrv = true;
        if (this.zzbwh) {
            zzzu();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzbrv = false;
        zzzv();
    }

    public final void zzj(Activity activity) {
        this.zzehf = activity;
    }

    public final void zzzs() {
        this.zzbwh = true;
        if (this.zzbrv) {
            zzzu();
        }
    }

    public final void zzzt() {
        this.zzbwh = false;
        zzzv();
    }
}
