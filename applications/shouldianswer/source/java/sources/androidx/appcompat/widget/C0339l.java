package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.core.widget.C0601e;
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
public class C0339l {

    /* renamed from: a */
    private final ImageView f1378a;

    /* renamed from: b */
    private C0309aq f1379b;

    /* renamed from: c */
    private C0309aq f1380c;

    /* renamed from: d */
    private C0309aq f1381d;

    public C0339l(ImageView imageView) {
        this.f1378a = imageView;
    }

    /* renamed from: a */
    private boolean m7048a(Drawable drawable) {
        if (this.f1381d == null) {
            this.f1381d = new C0309aq();
        }
        C0309aq c0309aq = this.f1381d;
        c0309aq.m7165a();
        ColorStateList m5992a = C0601e.m5992a(this.f1378a);
        if (m5992a != null) {
            c0309aq.f1279d = true;
            c0309aq.f1276a = m5992a;
        }
        PorterDuff.Mode m5989b = C0601e.m5989b(this.f1378a);
        if (m5989b != null) {
            c0309aq.f1278c = true;
            c0309aq.f1277b = m5989b;
        }
        if (c0309aq.f1279d || c0309aq.f1278c) {
            C0335i.m7069a(drawable, c0309aq, this.f1378a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: e */
    private boolean m7043e() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f1379b == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m7051a(int i) {
        if (i != 0) {
            Drawable m7983b = C0062a.m7983b(this.f1378a.getContext(), i);
            if (m7983b != null) {
                C0268aa.m7304b(m7983b);
            }
            this.f1378a.setImageDrawable(m7983b);
        } else {
            this.f1378a.setImageDrawable(null);
        }
        m7044d();
    }

    /* renamed from: a */
    public void m7050a(ColorStateList colorStateList) {
        if (this.f1380c == null) {
            this.f1380c = new C0309aq();
        }
        C0309aq c0309aq = this.f1380c;
        c0309aq.f1276a = colorStateList;
        c0309aq.f1279d = true;
        m7044d();
    }

    /* renamed from: a */
    public void m7049a(PorterDuff.Mode mode) {
        if (this.f1380c == null) {
            this.f1380c = new C0309aq();
        }
        C0309aq c0309aq = this.f1380c;
        c0309aq.f1277b = mode;
        c0309aq.f1278c = true;
        m7044d();
    }

    /* renamed from: a */
    public void m7047a(AttributeSet attributeSet, int i) {
        C0311as m7156a = C0311as.m7156a(this.f1378a.getContext(), attributeSet, C0051a.C0061j.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.f1378a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m7143g = m7156a.m7143g(C0051a.C0061j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (m7143g != -1) {
                    Drawable m7983b = C0062a.m7983b(this.f1378a.getContext(), m7143g);
                    drawable2 = m7983b;
                    if (m7983b != null) {
                        this.f1378a.setImageDrawable(m7983b);
                        drawable2 = m7983b;
                    }
                }
            }
            if (drawable2 != null) {
                C0268aa.m7304b(drawable2);
            }
            if (m7156a.m7144g(C0051a.C0061j.AppCompatImageView_tint)) {
                C0601e.m5991a(this.f1378a, m7156a.m7148e(C0051a.C0061j.AppCompatImageView_tint));
            }
            if (m7156a.m7144g(C0051a.C0061j.AppCompatImageView_tintMode)) {
                C0601e.m5990a(this.f1378a, C0268aa.m7306a(m7156a.m7161a(C0051a.C0061j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            m7156a.m7164a();
        }
    }

    /* renamed from: a */
    public boolean m7052a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1378a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: b */
    public ColorStateList m7046b() {
        C0309aq c0309aq = this.f1380c;
        return c0309aq != null ? c0309aq.f1276a : null;
    }

    /* renamed from: c */
    public PorterDuff.Mode m7045c() {
        C0309aq c0309aq = this.f1380c;
        return c0309aq != null ? c0309aq.f1277b : null;
    }

    /* renamed from: d */
    public void m7044d() {
        Drawable drawable = this.f1378a.getDrawable();
        if (drawable != null) {
            C0268aa.m7304b(drawable);
        }
        if (drawable != null) {
            if (m7043e() && m7048a(drawable)) {
                return;
            }
            C0309aq c0309aq = this.f1380c;
            if (c0309aq != null) {
                C0335i.m7069a(drawable, c0309aq, this.f1378a.getDrawableState());
                return;
            }
            C0309aq c0309aq2 = this.f1379b;
            if (c0309aq2 == null) {
                return;
            }
            C0335i.m7069a(drawable, c0309aq2, this.f1378a.getDrawableState());
        }
    }
}
