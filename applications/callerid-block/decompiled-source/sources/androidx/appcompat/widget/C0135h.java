package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.widget.C0296e;
import d.a.j;
import d.a.k.a.a;
import d.h.m.t;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
public class C0135h {

    /* renamed from: a */
    private final ImageView f620a;

    /* renamed from: b */
    private C0124b0 f621b;

    /* renamed from: c */
    private C0124b0 f622c;

    /* renamed from: d */
    private C0124b0 f623d;

    public C0135h(ImageView imageView) {
        this.f620a = imageView;
    }

    /* renamed from: a */
    private boolean m14589a(Drawable drawable) {
        if (this.f623d == null) {
            this.f623d = new C0124b0();
        }
        C0124b0 b0Var = this.f623d;
        b0Var.m14656a();
        ColorStateList a = C0296e.m13413a(this.f620a);
        if (a != null) {
            b0Var.f586d = true;
            b0Var.f583a = a;
        }
        PorterDuff.Mode b = C0296e.m13412b(this.f620a);
        if (b != null) {
            b0Var.f585c = true;
            b0Var.f584b = b;
        }
        if (!b0Var.f586d && !b0Var.f585c) {
            return false;
        }
        C0129f.m14600i(drawable, b0Var, this.f620a.getDrawableState());
        return true;
    }

    /* renamed from: j */
    private boolean m14580j() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f621b == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    void m14588b() {
        Drawable drawable = this.f620a.getDrawable();
        if (drawable != null) {
            C0147p.m14473b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!m14580j() || !m14589a(drawable)) {
            C0124b0 b0Var = this.f622c;
            if (b0Var != null) {
                C0129f.m14600i(drawable, b0Var, this.f620a.getDrawableState());
                return;
            }
            C0124b0 b0Var2 = this.f621b;
            if (b0Var2 != null) {
                C0129f.m14600i(drawable, b0Var2, this.f620a.getDrawableState());
            }
        }
    }

    /* renamed from: c */
    ColorStateList m14587c() {
        C0124b0 b0Var = this.f622c;
        return b0Var != null ? b0Var.f583a : null;
    }

    /* renamed from: d */
    PorterDuff.Mode m14586d() {
        C0124b0 b0Var = this.f622c;
        return b0Var != null ? b0Var.f584b : null;
    }

    /* renamed from: e */
    boolean m14585e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f620a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: f */
    public void m14584f(AttributeSet attributeSet, int i) {
        Context context = this.f620a.getContext();
        int[] iArr = j.AppCompatImageView;
        C0127d0 v = C0127d0.m14618v(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f620a;
        t.l0(imageView, imageView.getContext(), iArr, attributeSet, v.m14622r(), i, 0);
        try {
            Drawable drawable = this.f620a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int n = v.m14626n(j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (n != -1) {
                    Drawable d = a.d(this.f620a.getContext(), n);
                    drawable2 = d;
                    if (d != null) {
                        this.f620a.setImageDrawable(d);
                        drawable2 = d;
                    }
                }
            }
            if (drawable2 != null) {
                C0147p.m14473b(drawable2);
            }
            int i2 = j.AppCompatImageView_tint;
            if (v.m14621s(i2)) {
                C0296e.m13411c(this.f620a, v.m14637c(i2));
            }
            int i3 = j.AppCompatImageView_tintMode;
            if (v.m14621s(i3)) {
                C0296e.m13410d(this.f620a, C0147p.m14470e(v.m14629k(i3, -1), null));
            }
        } finally {
            v.m14617w();
        }
    }

    /* renamed from: g */
    public void m14583g(int i) {
        if (i != 0) {
            Drawable d = a.d(this.f620a.getContext(), i);
            if (d != null) {
                C0147p.m14473b(d);
            }
            this.f620a.setImageDrawable(d);
        } else {
            this.f620a.setImageDrawable(null);
        }
        m14588b();
    }

    /* renamed from: h */
    void m14582h(ColorStateList colorStateList) {
        if (this.f622c == null) {
            this.f622c = new C0124b0();
        }
        C0124b0 b0Var = this.f622c;
        b0Var.f583a = colorStateList;
        b0Var.f586d = true;
        m14588b();
    }

    /* renamed from: i */
    void m14581i(PorterDuff.Mode mode) {
        if (this.f622c == null) {
            this.f622c = new C0124b0();
        }
        C0124b0 b0Var = this.f622c;
        b0Var.f584b = mode;
        b0Var.f585c = true;
        m14588b();
    }
}
