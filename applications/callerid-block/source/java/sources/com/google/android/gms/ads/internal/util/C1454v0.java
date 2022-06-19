package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.internal.ads.C1863np;
/* renamed from: com.google.android.gms.ads.internal.util.v0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/v0.class */
public final class C1454v0 {

    /* renamed from: a */
    private final View f5647a;

    /* renamed from: b */
    private Activity f5648b;

    /* renamed from: c */
    private boolean f5649c;

    /* renamed from: d */
    private boolean f5650d;

    /* renamed from: e */
    private boolean f5651e;

    /* renamed from: f */
    private final ViewTreeObserver.OnGlobalLayoutListener f5652f;

    public C1454v0(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f5648b = activity;
        this.f5647a = view;
        this.f5652f = onGlobalLayoutListener;
    }

    /* renamed from: f */
    private final void m8704f() {
        ViewTreeObserver m8702h;
        if (!this.f5649c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f5652f;
            Activity activity = this.f5648b;
            if (activity != null && (m8702h = m8702h(activity)) != null) {
                m8702h.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            C1407r.m8924A();
            C1863np.m6408a(this.f5647a, this.f5652f);
            this.f5649c = true;
        }
    }

    /* renamed from: g */
    private final void m8703g() {
        Activity activity = this.f5648b;
        if (activity != null && this.f5649c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f5652f;
            ViewTreeObserver m8702h = m8702h(activity);
            if (m8702h != null) {
                C1407r.m8918f();
                m8702h.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f5649c = false;
        }
    }

    /* renamed from: h */
    private static ViewTreeObserver m8702h(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    /* renamed from: a */
    public final void m8709a(Activity activity) {
        this.f5648b = activity;
    }

    /* renamed from: b */
    public final void m8708b() {
        this.f5651e = true;
        if (this.f5650d) {
            m8704f();
        }
    }

    /* renamed from: c */
    public final void m8707c() {
        this.f5651e = false;
        m8703g();
    }

    /* renamed from: d */
    public final void m8706d() {
        this.f5650d = true;
        if (this.f5651e) {
            m8704f();
        }
    }

    /* renamed from: e */
    public final void m8705e() {
        this.f5650d = false;
        m8703g();
    }
}
