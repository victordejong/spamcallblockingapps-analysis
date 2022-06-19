package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.dj0;
/* renamed from: com.google.android.gms.ads.internal.util.m1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/m1.class */
public final class C5716m1 {

    /* renamed from: a */
    private final View f18509a;

    /* renamed from: b */
    private Activity f18510b;

    /* renamed from: c */
    private boolean f18511c;

    /* renamed from: d */
    private boolean f18512d;

    /* renamed from: e */
    private boolean f18513e;

    /* renamed from: f */
    private final ViewTreeObserver.OnGlobalLayoutListener f18514f;

    public C5716m1(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f18510b = activity;
        this.f18509a = view;
        this.f18514f = onGlobalLayoutListener;
    }

    /* renamed from: f */
    private final void m17994f() {
        if (!this.f18511c) {
            Activity activity = this.f18510b;
            if (activity != null) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f18514f;
                ViewTreeObserver m17992h = m17992h(activity);
                if (m17992h != null) {
                    m17992h.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            C5667s.m18164A();
            dj0.m15789a(this.f18509a, this.f18514f);
            this.f18511c = true;
        }
    }

    /* renamed from: g */
    private final void m17993g() {
        Activity activity = this.f18510b;
        if (activity != null && this.f18511c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f18514f;
            ViewTreeObserver m17992h = m17992h(activity);
            if (m17992h != null) {
                C5667s.m18158f();
                m17992h.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f18511c = false;
        }
    }

    /* renamed from: h */
    private static ViewTreeObserver m17992h(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    /* renamed from: a */
    public final void m17999a(Activity activity) {
        this.f18510b = activity;
    }

    /* renamed from: b */
    public final void m17998b() {
        this.f18513e = true;
        if (this.f18512d) {
            m17994f();
        }
    }

    /* renamed from: c */
    public final void m17997c() {
        this.f18513e = false;
        m17993g();
    }

    /* renamed from: d */
    public final void m17996d() {
        this.f18512d = true;
        if (this.f18513e) {
            m17994f();
        }
    }

    /* renamed from: e */
    public final void m17995e() {
        this.f18512d = false;
        m17993g();
    }
}
