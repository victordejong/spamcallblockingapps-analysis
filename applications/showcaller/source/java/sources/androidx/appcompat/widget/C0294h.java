package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.widget.C0645g;
import p020b.p021a.C1432j;
import p020b.p021a.p022k.p023a.C1433a;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
public class C0294h {

    /* renamed from: a */
    private final ImageView f1287a;

    /* renamed from: b */
    private C0282c0 f1288b;

    /* renamed from: c */
    private C0282c0 f1289c;

    /* renamed from: d */
    private C0282c0 f1290d;

    public C0294h(ImageView imageView) {
        this.f1287a = imageView;
    }

    /* renamed from: a */
    private boolean m34912a(Drawable drawable) {
        if (this.f1290d == null) {
            this.f1290d = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1290d;
        c0282c0.m34987a();
        ColorStateList m33102a = C0645g.m33102a(this.f1287a);
        if (m33102a != null) {
            c0282c0.f1239d = true;
            c0282c0.f1236a = m33102a;
        }
        PorterDuff.Mode m33101b = C0645g.m33101b(this.f1287a);
        if (m33101b != null) {
            c0282c0.f1238c = true;
            c0282c0.f1237b = m33101b;
        }
        if (c0282c0.f1239d || c0282c0.f1238c) {
            C0287f.m34936i(drawable, c0282c0, this.f1287a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: j */
    private boolean m34903j() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f1288b == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void m34911b() {
        Drawable drawable = this.f1287a.getDrawable();
        if (drawable != null) {
            C0317q.m34776b(drawable);
        }
        if (drawable != null) {
            if (m34903j() && m34912a(drawable)) {
                return;
            }
            C0282c0 c0282c0 = this.f1289c;
            if (c0282c0 != null) {
                C0287f.m34936i(drawable, c0282c0, this.f1287a.getDrawableState());
                return;
            }
            C0282c0 c0282c02 = this.f1288b;
            if (c0282c02 == null) {
                return;
            }
            C0287f.m34936i(drawable, c0282c02, this.f1287a.getDrawableState());
        }
    }

    /* renamed from: c */
    public ColorStateList m34910c() {
        C0282c0 c0282c0 = this.f1289c;
        return c0282c0 != null ? c0282c0.f1236a : null;
    }

    /* renamed from: d */
    public PorterDuff.Mode m34909d() {
        C0282c0 c0282c0 = this.f1289c;
        return c0282c0 != null ? c0282c0.f1237b : null;
    }

    /* renamed from: e */
    public boolean m34908e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1287a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: f */
    public void m34907f(AttributeSet attributeSet, int i) {
        Context context = this.f1287a.getContext();
        int[] iArr = C1432j.AppCompatImageView;
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, iArr, i, 0);
        ImageView imageView = this.f1287a;
        C1679w.m29277p0(imageView, imageView.getContext(), iArr, attributeSet, m34946v.m34950r(), i, 0);
        try {
            Drawable drawable = this.f1287a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m34954n = m34946v.m34954n(C1432j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (m34954n != -1) {
                    Drawable m30126d = C1433a.m30126d(this.f1287a.getContext(), m34954n);
                    drawable2 = m30126d;
                    if (m30126d != null) {
                        this.f1287a.setImageDrawable(m30126d);
                        drawable2 = m30126d;
                    }
                }
            }
            if (drawable2 != null) {
                C0317q.m34776b(drawable2);
            }
            int i2 = C1432j.AppCompatImageView_tint;
            if (m34946v.m34949s(i2)) {
                C0645g.m33100c(this.f1287a, m34946v.m34965c(i2));
            }
            int i3 = C1432j.AppCompatImageView_tintMode;
            if (m34946v.m34949s(i3)) {
                C0645g.m33099d(this.f1287a, C0317q.m34773e(m34946v.m34957k(i3, -1), null));
            }
        } finally {
            m34946v.m34945w();
        }
    }

    /* renamed from: g */
    public void m34906g(int i) {
        if (i != 0) {
            Drawable m30126d = C1433a.m30126d(this.f1287a.getContext(), i);
            if (m30126d != null) {
                C0317q.m34776b(m30126d);
            }
            this.f1287a.setImageDrawable(m30126d);
        } else {
            this.f1287a.setImageDrawable(null);
        }
        m34911b();
    }

    /* renamed from: h */
    public void m34905h(ColorStateList colorStateList) {
        if (this.f1289c == null) {
            this.f1289c = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1289c;
        c0282c0.f1236a = colorStateList;
        c0282c0.f1239d = true;
        m34911b();
    }

    /* renamed from: i */
    public void m34904i(PorterDuff.Mode mode) {
        if (this.f1289c == null) {
            this.f1289c = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1289c;
        c0282c0.f1237b = mode;
        c0282c0.f1238c = true;
        m34911b();
    }
}
