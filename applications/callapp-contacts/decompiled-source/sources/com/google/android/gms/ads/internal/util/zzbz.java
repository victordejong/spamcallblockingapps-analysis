package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbz.class */
public final class zzbz {
    private final View view;
    private boolean zzbsf;
    private boolean zzbwt;
    private Activity zzeji;
    private boolean zzejj;
    private ViewTreeObserver.OnGlobalLayoutListener zzejk;
    private ViewTreeObserver.OnScrollChangedListener zzejl = null;

    public zzbz(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzeji = activity;
        this.view = view;
        this.zzejk = onGlobalLayoutListener;
    }

    private final void zzaan() {
        ViewTreeObserver zzk;
        if (!this.zzejj) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzejk;
            if (onGlobalLayoutListener != null) {
                Activity activity = this.zzeji;
                if (!(activity == null || (zzk = zzk(activity)) == null)) {
                    zzk.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                zzr.zzls();
                zx.a(this.view, this.zzejk);
            }
            this.zzejj = true;
        }
    }

    private final void zzaao() {
        ViewTreeObserver zzk;
        Activity activity = this.zzeji;
        if (activity != null && this.zzejj) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzejk;
            if (!(onGlobalLayoutListener == null || (zzk = zzk(activity)) == null)) {
                zzr.zzkx();
                zzk.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.zzejj = false;
        }
    }

    private static ViewTreeObserver zzk(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    public final void onAttachedToWindow() {
        this.zzbsf = true;
        if (this.zzbwt) {
            zzaan();
        }
    }

    public final void onDetachedFromWindow() {
        this.zzbsf = false;
        zzaao();
    }

    public final void zzaal() {
        this.zzbwt = true;
        if (this.zzbsf) {
            zzaan();
        }
    }

    public final void zzaam() {
        this.zzbwt = false;
        zzaao();
    }

    public final void zzj(Activity activity) {
        this.zzeji = activity;
    }
}
