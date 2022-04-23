package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbh.class */
public final class zzbbh {

    /* renamed from: a */
    public final View f24746a;

    /* renamed from: b */
    public Activity f24747b;

    /* renamed from: c */
    public boolean f24748c;

    /* renamed from: d */
    public boolean f24749d;

    /* renamed from: e */
    public boolean f24750e;

    /* renamed from: f */
    public ViewTreeObserver.OnGlobalLayoutListener f24751f;

    public zzbbh(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f24747b = activity;
        this.f24746a = view;
        this.f24751f = onGlobalLayoutListener;
    }

    /* renamed from: b */
    public static ViewTreeObserver m15885b(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    /* renamed from: a */
    public final void m15888a() {
        this.f24749d = true;
        if (this.f24750e) {
            m15882e();
        }
    }

    /* renamed from: a */
    public final void m15887a(Activity activity) {
        this.f24747b = activity;
    }

    /* renamed from: b */
    public final void m15886b() {
        this.f24749d = false;
        m15881f();
    }

    /* renamed from: c */
    public final void m15884c() {
        this.f24750e = true;
        if (this.f24749d) {
            m15882e();
        }
    }

    /* renamed from: d */
    public final void m15883d() {
        this.f24750e = false;
        m15881f();
    }

    /* renamed from: e */
    public final void m15882e() {
        ViewTreeObserver b;
        if (!this.f24748c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f24751f;
            if (onGlobalLayoutListener != null) {
                Activity activity = this.f24747b;
                if (!(activity == null || (b = m15885b(activity)) == null)) {
                    b.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                zzp.m17946z();
                zzbco.m15824a(this.f24746a, this.f24751f);
            }
            this.f24748c = true;
        }
    }

    /* renamed from: f */
    public final void m15881f() {
        ViewTreeObserver b;
        Activity activity = this.f24747b;
        if (activity != null && this.f24748c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f24751f;
            if (!(onGlobalLayoutListener == null || (b = m15885b(activity)) == null)) {
                zzp.m17967e();
                b.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f24748c = false;
        }
    }
}
