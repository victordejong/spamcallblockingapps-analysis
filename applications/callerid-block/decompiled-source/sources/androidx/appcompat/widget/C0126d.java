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
        C0124b0 b0Var = this.f592f;
        b0Var.m14656a();
        ColorStateList s = t.s(this.f587a);
        if (s != null) {
            b0Var.f586d = true;
            b0Var.f583a = s;
        }
        PorterDuff.Mode t = t.t(this.f587a);
        if (t != null) {
            b0Var.f585c = true;
            b0Var.f584b = t;
        }
        if (!b0Var.f586d && !b0Var.f585c) {
            return false;
        }
        C0129f.m14600i(drawable, b0Var, this.f587a.getDrawableState());
        return true;
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
        if (background == null) {
            return;
        }
        if (!m14640k() || !m14650a(background)) {
            C0124b0 b0Var = this.f591e;
            if (b0Var != null) {
                C0129f.m14600i(background, b0Var, this.f587a.getDrawableState());
                return;
            }
            C0124b0 b0Var2 = this.f590d;
            if (b0Var2 != null) {
                C0129f.m14600i(background, b0Var2, this.f587a.getDrawableState());
            }
        }
    }

    /* renamed from: c */
    ColorStateList m14648c() {
        C0124b0 b0Var = this.f591e;
        return b0Var != null ? b0Var.f583a : null;
    }

    /* renamed from: d */
    PorterDuff.Mode m14647d() {
        C0124b0 b0Var = this.f591e;
        return b0Var != null ? b0Var.f584b : null;
    }

    /* renamed from: e */
    void m14646e(AttributeSet attributeSet, int i) {
        Context context = this.f587a.getContext();
        int[] iArr = j.ViewBackgroundHelper;
        C0127d0 v = C0127d0.m14618v(context, attributeSet, iArr, i, 0);
        View view = this.f587a;
        t.l0(view, view.getContext(), iArr, attributeSet, v.m14622r(), i, 0);
        try {
            int i2 = j.ViewBackgroundHelper_android_background;
            if (v.m14621s(i2)) {
                this.f589c = v.m14626n(i2, -1);
                ColorStateList f = this.f588b.m14603f(this.f587a.getContext(), this.f589c);
                if (f != null) {
                    m14643h(f);
                }
            }
            int i3 = j.ViewBackgroundHelper_backgroundTint;
            if (v.m14621s(i3)) {
                t.r0(this.f587a, v.m14637c(i3));
            }
            int i4 = j.ViewBackgroundHelper_backgroundTintMode;
            if (v.m14621s(i4)) {
                t.s0(this.f587a, C0147p.m14470e(v.m14629k(i4, -1), null));
            }
        } finally {
            v.m14617w();
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
        C0129f fVar = this.f588b;
        m14643h(fVar != null ? fVar.m14603f(this.f587a.getContext(), i) : null);
        m14649b();
    }

    /* renamed from: h */
    void m14643h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f590d == null) {
                this.f590d = new C0124b0();
            }
            C0124b0 b0Var = this.f590d;
            b0Var.f583a = colorStateList;
            b0Var.f586d = true;
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
        C0124b0 b0Var = this.f591e;
        b0Var.f583a = colorStateList;
        b0Var.f586d = true;
        m14649b();
    }

    /* renamed from: j */
    void m14641j(PorterDuff.Mode mode) {
        if (this.f591e == null) {
            this.f591e = new C0124b0();
        }
        C0124b0 b0Var = this.f591e;
        b0Var.f584b = mode;
        b0Var.f585c = true;
        m14649b();
    }
}
