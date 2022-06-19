package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.C0142a;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.view.C0926v;
import androidx.core.widget.C0956e;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
public final class C0395h {

    /* renamed from: a */
    private final ImageView f1584a;

    /* renamed from: b */
    private C0427z f1585b;

    /* renamed from: c */
    private C0427z f1586c;

    /* renamed from: d */
    private C0427z f1587d;

    public C0395h(ImageView imageView) {
        this.f1584a = imageView;
    }

    /* renamed from: a */
    private boolean m45715a(Drawable drawable) {
        if (this.f1587d == null) {
            this.f1587d = new C0427z();
        }
        C0427z c0427z = this.f1587d;
        c0427z.m45568a();
        ColorStateList m43974a = C0956e.m43974a(this.f1584a);
        if (m43974a != null) {
            c0427z.f1700d = true;
            c0427z.f1697a = m43974a;
        }
        PorterDuff.Mode m43971b = C0956e.m43971b(this.f1584a);
        if (m43971b != null) {
            c0427z.f1699c = true;
            c0427z.f1698b = m43971b;
        }
        if (c0427z.f1700d || c0427z.f1699c) {
            C0392f.m45728a(drawable, c0427z, this.f1584a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: e */
    private boolean m45710e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1585b != null : i == 21;
    }

    /* renamed from: a */
    public final void m45718a(int i) {
        if (i != 0) {
            Drawable m46374b = C0153a.m46374b(this.f1584a.getContext(), i);
            if (m46374b != null) {
                C0407p.m45620b(m46374b);
            }
            this.f1584a.setImageDrawable(m46374b);
        } else {
            this.f1584a.setImageDrawable(null);
        }
        m45711d();
    }

    /* renamed from: a */
    public final void m45717a(ColorStateList colorStateList) {
        if (this.f1586c == null) {
            this.f1586c = new C0427z();
        }
        this.f1586c.f1697a = colorStateList;
        this.f1586c.f1700d = true;
        m45711d();
    }

    /* renamed from: a */
    public final void m45716a(PorterDuff.Mode mode) {
        if (this.f1586c == null) {
            this.f1586c = new C0427z();
        }
        this.f1586c.f1698b = mode;
        this.f1586c.f1699c = true;
        m45711d();
    }

    /* renamed from: a */
    public final void m45714a(AttributeSet attributeSet, int i) {
        C0370ab m45804a = C0370ab.m45804a(this.f1584a.getContext(), attributeSet, C0142a.C0152j.AppCompatImageView, i, 0);
        ImageView imageView = this.f1584a;
        C0926v.m44133a(imageView, imageView.getContext(), C0142a.C0152j.AppCompatImageView, attributeSet, m45804a.f1491a, i);
        try {
            Drawable drawable = this.f1584a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m45792g = m45804a.m45792g(C0142a.C0152j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (m45792g != -1) {
                    Drawable m46374b = C0153a.m46374b(this.f1584a.getContext(), m45792g);
                    drawable2 = m46374b;
                    if (m46374b != null) {
                        this.f1584a.setImageDrawable(m46374b);
                        drawable2 = m46374b;
                    }
                }
            }
            if (drawable2 != null) {
                C0407p.m45620b(drawable2);
            }
            if (m45804a.m45793g(C0142a.C0152j.AppCompatImageView_tint)) {
                C0956e.m43973a(this.f1584a, m45804a.m45797e(C0142a.C0152j.AppCompatImageView_tint));
            }
            if (m45804a.m45793g(C0142a.C0152j.AppCompatImageView_tintMode)) {
                C0956e.m43972a(this.f1584a, C0407p.m45622a(m45804a.m45809a(C0142a.C0152j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            m45804a.f1491a.recycle();
        }
    }

    /* renamed from: a */
    public final boolean m45719a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1584a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: b */
    public final ColorStateList m45713b() {
        C0427z c0427z = this.f1586c;
        if (c0427z != null) {
            return c0427z.f1697a;
        }
        return null;
    }

    /* renamed from: c */
    public final PorterDuff.Mode m45712c() {
        C0427z c0427z = this.f1586c;
        if (c0427z != null) {
            return c0427z.f1698b;
        }
        return null;
    }

    /* renamed from: d */
    public final void m45711d() {
        Drawable drawable = this.f1584a.getDrawable();
        if (drawable != null) {
            C0407p.m45620b(drawable);
        }
        if (drawable != null) {
            if (m45710e() && m45715a(drawable)) {
                return;
            }
            C0427z c0427z = this.f1586c;
            if (c0427z != null) {
                C0392f.m45728a(drawable, c0427z, this.f1584a.getDrawableState());
                return;
            }
            C0427z c0427z2 = this.f1585b;
            if (c0427z2 == null) {
                return;
            }
            C0392f.m45728a(drawable, c0427z2, this.f1584a.getDrawableState());
        }
    }
}
