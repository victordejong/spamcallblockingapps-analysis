package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import d.a.j;
import d.h.m.t;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
class C0126d {

    /* renamed from: a */
    private final View f587a;

    /* renamed from: d */
    private C0124b0 f590d;

    /* renamed from: e */
    private C0124b0 f591e;

    /* renamed from: f */
    private C0124b0 f592f;

    /* renamed from: c */
    private int f589c = -1;

    /* renamed from: b */
    private final C0129f f588b = C0129f.m14607b();

    C0126d(View view) {
        this.f587a = view;
    }

    /* renamed from: a */
    private boolean m14650a(Drawable drawable) {
        if (this.f592f == null) {
            this.f592f = new C0124b0();
        }
        C0124b0 c0124b0 = this.f592f;
        c0124b0.m14656a();
        ColorStateList s = t.s(this.f587a);
        if (s != null) {
            c0124b0.f586d = true;
            c0124b0.f583a = s;
        }
        PorterDuff.Mode t = t.t(this.f587a);
        if (t != null) {
            c0124b0.f585c = true;
            c0124b0.f584b = t;
        }
        if (c0124b0.f586d || c0124b0.f585c) {
            C0129f.m14600i(drawable, c0124b0, this.f587a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: k */
    private boolean m14640k() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f590d == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    void m14649b() {
        Drawable background = this.f587a.getBackground();
        if (background != null) {
            if (m14640k() && m14650a(background)) {
                return;
            }
            C0124b0 c0124b0 = this.f591e;
            if (c0124b0 != null) {
                C0129f.m14600i(background, c0124b0, this.f587a.getDrawableState());
                return;
            }
            C0124b0 c0124b02 = this.f590d;
            if (c0124b02 == null) {
                return;
            }
            C0129f.m14600i(background, c0124b02, this.f587a.getDrawableState());
        }
    }

    /* renamed from: c */
    ColorStateList m14648c() {
        C0124b0 c0124b0 = this.f591e;
        return c0124b0 != null ? c0124b0.f583a : null;
    }

    /* renamed from: d */
    PorterDuff.Mode m14647d() {
        C0124b0 c0124b0 = this.f591e;
        return c0124b0 != null ? c0124b0.f584b : null;
    }

    /* renamed from: e */
    void m14646e(AttributeSet attributeSet, int i) {
        Context context = this.f587a.getContext();
        int[] iArr = j.ViewBackgroundHelper;
        C0127d0 m14618v = C0127d0.m14618v(context, attributeSet, iArr, i, 0);
        View view = this.f587a;
        t.l0(view, view.getContext(), iArr, attributeSet, m14618v.m14622r(), i, 0);
        try {
            int i2 = j.ViewBackgroundHelper_android_background;
            if (m14618v.m14621s(i2)) {
                this.f589c = m14618v.m14626n(i2, -1);
                ColorStateList m14603f = this.f588b.m14603f(this.f587a.getContext(), this.f589c);
                if (m14603f != null) {
                    m14643h(m14603f);
                }
            }
            int i3 = j.ViewBackgroundHelper_backgroundTint;
            if (m14618v.m14621s(i3)) {
                t.r0(this.f587a, m14618v.m14637c(i3));
            }
            int i4 = j.ViewBackgroundHelper_backgroundTintMode;
            if (m14618v.m14621s(i4)) {
                t.s0(this.f587a, C0147p.m14470e(m14618v.m14629k(i4, -1), null));
            }
        } finally {
            m14618v.m14617w();
        }
    }

    /* renamed from: f */
    void m14645f(Drawable drawable) {
        this.f589c = -1;
        m14643h(null);
        m14649b();
    }

    /* renamed from: g */
    void m14644g(int i) {
        this.f589c = i;
        C0129f c0129f = this.f588b;
        m14643h(c0129f != null ? c0129f.m14603f(this.f587a.getContext(), i) : null);
        m14649b();
    }

    /* renamed from: h */
    void m14643h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f590d == null) {
                this.f590d = new C0124b0();
            }
            C0124b0 c0124b0 = this.f590d;
            c0124b0.f583a = colorStateList;
            c0124b0.f586d = true;
        } else {
            this.f590d = null;
        }
        m14649b();
    }

    /* renamed from: i */
    void m14642i(ColorStateList colorStateList) {
        if (this.f591e == null) {
            this.f591e = new C0124b0();
        }
        C0124b0 c0124b0 = this.f591e;
        c0124b0.f583a = colorStateList;
        c0124b0.f586d = true;
        m14649b();
    }

    /* renamed from: j */
    void m14641j(PorterDuff.Mode mode) {
        if (this.f591e == null) {
            this.f591e = new C0124b0();
        }
        C0124b0 c0124b0 = this.f591e;
        c0124b0.f584b = mode;
        c0124b0.f585c = true;
        m14649b();
    }
}
