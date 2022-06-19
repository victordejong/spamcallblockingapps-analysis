package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.xo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xo.class */
public final class C3631xo {

    /* renamed from: a */
    private final View f17603a;

    /* renamed from: b */
    private Activity f17604b;

    /* renamed from: c */
    private boolean f17605c;

    /* renamed from: d */
    private boolean f17606d;

    /* renamed from: e */
    private boolean f17607e;

    /* renamed from: f */
    private ViewTreeObserver.OnGlobalLayoutListener f17608f;

    /* renamed from: g */
    private ViewTreeObserver.OnScrollChangedListener f17609g = null;

    public C3631xo(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f17604b = activity;
        this.f17603a = view;
        this.f17608f = onGlobalLayoutListener;
    }

    /* renamed from: b */
    private static ViewTreeObserver m6810b(Activity activity) {
        ViewTreeObserver viewTreeObserver;
        if (activity == null) {
            viewTreeObserver = null;
        } else {
            Window window = activity.getWindow();
            viewTreeObserver = null;
            if (window != null) {
                View decorView = window.getDecorView();
                viewTreeObserver = null;
                if (decorView != null) {
                    viewTreeObserver = decorView.getViewTreeObserver();
                }
            }
        }
        return viewTreeObserver;
    }

    /* renamed from: e */
    private final void m6807e() {
        if (!this.f17605c) {
            if (this.f17608f != null) {
                if (this.f17604b != null) {
                    Activity activity = this.f17604b;
                    ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f17608f;
                    ViewTreeObserver m6810b = m6810b(activity);
                    if (m6810b != null) {
                        m6810b.addOnGlobalLayoutListener(onGlobalLayoutListener);
                    }
                }
                C2341q.m14721z();
                C3666yw.m6721a(this.f17603a, this.f17608f);
            }
            this.f17605c = true;
        }
    }

    /* renamed from: f */
    private final void m6806f() {
        if (this.f17604b != null && this.f17605c) {
            if (this.f17608f != null) {
                Activity activity = this.f17604b;
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f17608f;
                ViewTreeObserver m6810b = m6810b(activity);
                if (m6810b != null) {
                    C2341q.m14742e();
                    m6810b.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            this.f17605c = false;
        }
    }

    /* renamed from: a */
    public final void m6813a() {
        this.f17607e = true;
        if (this.f17606d) {
            m6807e();
        }
    }

    /* renamed from: a */
    public final void m6812a(Activity activity) {
        this.f17604b = activity;
    }

    /* renamed from: b */
    public final void m6811b() {
        this.f17607e = false;
        m6806f();
    }

    /* renamed from: c */
    public final void m6809c() {
        this.f17606d = true;
        if (this.f17607e) {
            m6807e();
        }
    }

    /* renamed from: d */
    public final void m6808d() {
        this.f17606d = false;
        m6806f();
    }
}
