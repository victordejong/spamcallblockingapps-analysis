package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.C0083a;
import androidx.appcompat.p008a.p009a.C0094a;
import androidx.core.widget.C0624e;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
public class C0353k {

    /* renamed from: a */
    private final ImageView f1466a;

    /* renamed from: b */
    private C0315an f1467b;

    /* renamed from: c */
    private C0315an f1468c;

    /* renamed from: d */
    private C0315an f1469d;

    public C0353k(ImageView imageView) {
        this.f1466a = imageView;
    }

    /* renamed from: a */
    private boolean m21287a(Drawable drawable) {
        boolean z = true;
        if (this.f1469d == null) {
            this.f1469d = new C0315an();
        }
        C0315an c0315an = this.f1469d;
        c0315an.m21442a();
        ColorStateList m20158a = C0624e.m20158a(this.f1466a);
        if (m20158a != null) {
            c0315an.f1336d = true;
            c0315an.f1333a = m20158a;
        }
        PorterDuff.Mode m20155b = C0624e.m20155b(this.f1466a);
        if (m20155b != null) {
            c0315an.f1335c = true;
            c0315an.f1334b = m20155b;
        }
        if (c0315an.f1336d || c0315an.f1335c) {
            C0350i.m21308a(drawable, c0315an, this.f1466a.getDrawableState());
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    private boolean m21282e() {
        boolean z = true;
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            if (this.f1467b == null) {
                z = false;
            }
        } else if (i != 21) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m21290a(int i) {
        if (i != 0) {
            Drawable m22275b = C0094a.m22275b(this.f1466a.getContext(), i);
            if (m22275b != null) {
                C0369y.m21167a(m22275b);
            }
            this.f1466a.setImageDrawable(m22275b);
        } else {
            this.f1466a.setImageDrawable(null);
        }
        m21283d();
    }

    /* renamed from: a */
    public void m21289a(ColorStateList colorStateList) {
        if (this.f1468c == null) {
            this.f1468c = new C0315an();
        }
        this.f1468c.f1333a = colorStateList;
        this.f1468c.f1336d = true;
        m21283d();
    }

    /* renamed from: a */
    public void m21288a(PorterDuff.Mode mode) {
        if (this.f1468c == null) {
            this.f1468c = new C0315an();
        }
        this.f1468c.f1334b = mode;
        this.f1468c.f1335c = true;
        m21283d();
    }

    /* renamed from: a */
    public void m21286a(AttributeSet attributeSet, int i) {
        C0317ap m21433a = C0317ap.m21433a(this.f1466a.getContext(), attributeSet, C0083a.C0093j.AppCompatImageView, i, 0);
        try {
            Drawable drawable = this.f1466a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int m21420g = m21433a.m21420g(C0083a.C0093j.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (m21420g != -1) {
                    Drawable m22275b = C0094a.m22275b(this.f1466a.getContext(), m21420g);
                    drawable2 = m22275b;
                    if (m22275b != null) {
                        this.f1466a.setImageDrawable(m22275b);
                        drawable2 = m22275b;
                    }
                }
            }
            if (drawable2 != null) {
                C0369y.m21167a(drawable2);
            }
            if (m21433a.m21421g(C0083a.C0093j.AppCompatImageView_tint)) {
                C0624e.m20157a(this.f1466a, m21433a.m21425e(C0083a.C0093j.AppCompatImageView_tint));
            }
            if (m21433a.m21421g(C0083a.C0093j.AppCompatImageView_tintMode)) {
                C0624e.m20156a(this.f1466a, C0369y.m21168a(m21433a.m21438a(C0083a.C0093j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            m21433a.m21441a();
        }
    }

    /* renamed from: a */
    public boolean m21291a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f1466a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: b */
    public ColorStateList m21285b() {
        return this.f1468c != null ? this.f1468c.f1333a : null;
    }

    /* renamed from: c */
    public PorterDuff.Mode m21284c() {
        return this.f1468c != null ? this.f1468c.f1334b : null;
    }

    /* renamed from: d */
    public void m21283d() {
        Drawable drawable = this.f1466a.getDrawable();
        if (drawable != null) {
            C0369y.m21167a(drawable);
        }
        if (drawable != null) {
            if (m21282e() && m21287a(drawable)) {
                return;
            }
            if (this.f1468c != null) {
                C0350i.m21308a(drawable, this.f1468c, this.f1466a.getDrawableState());
            } else if (this.f1467b == null) {
            } else {
                C0350i.m21308a(drawable, this.f1467b, this.f1466a.getDrawableState());
            }
        }
    }
}
