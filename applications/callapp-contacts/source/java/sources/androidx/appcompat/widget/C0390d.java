package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.C0142a;
import androidx.core.view.C0926v;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
public final class C0390d {

    /* renamed from: a */
    private final View f1563a;

    /* renamed from: d */
    private C0427z f1566d;

    /* renamed from: e */
    private C0427z f1567e;

    /* renamed from: f */
    private C0427z f1568f;

    /* renamed from: c */
    private int f1565c = -1;

    /* renamed from: b */
    private final C0392f f1564b = C0392f.m45727b();

    public C0390d(View view) {
        this.f1563a = view;
    }

    /* renamed from: a */
    private boolean m45745a(Drawable drawable) {
        if (this.f1568f == null) {
            this.f1568f = new C0427z();
        }
        C0427z c0427z = this.f1568f;
        c0427z.m45568a();
        ColorStateList m44076w = C0926v.m44076w(this.f1563a);
        if (m44076w != null) {
            c0427z.f1700d = true;
            c0427z.f1697a = m44076w;
        }
        PorterDuff.Mode m44075x = C0926v.m44075x(this.f1563a);
        if (m44075x != null) {
            c0427z.f1699c = true;
            c0427z.f1698b = m44075x;
        }
        if (c0427z.f1700d || c0427z.f1699c) {
            C0392f.m45728a(drawable, c0427z, this.f1563a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m45742b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1566d == null) {
                this.f1566d = new C0427z();
            }
            this.f1566d.f1697a = colorStateList;
            this.f1566d.f1700d = true;
        } else {
            this.f1566d = null;
        }
        m45740d();
    }

    /* renamed from: e */
    private boolean m45739e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f1566d != null : i == 21;
    }

    /* renamed from: a */
    public final void m45749a() {
        this.f1565c = -1;
        m45742b(null);
        m45740d();
    }

    /* renamed from: a */
    public final void m45748a(int i) {
        this.f1565c = i;
        C0392f c0392f = this.f1564b;
        m45742b(c0392f != null ? c0392f.m45724c(this.f1563a.getContext(), i) : null);
        m45740d();
    }

    /* renamed from: a */
    public final void m45747a(ColorStateList colorStateList) {
        if (this.f1567e == null) {
            this.f1567e = new C0427z();
        }
        this.f1567e.f1697a = colorStateList;
        this.f1567e.f1700d = true;
        m45740d();
    }

    /* renamed from: a */
    public final void m45746a(PorterDuff.Mode mode) {
        if (this.f1567e == null) {
            this.f1567e = new C0427z();
        }
        this.f1567e.f1698b = mode;
        this.f1567e.f1699c = true;
        m45740d();
    }

    /* renamed from: a */
    public final void m45744a(AttributeSet attributeSet, int i) {
        C0370ab m45804a = C0370ab.m45804a(this.f1563a.getContext(), attributeSet, C0142a.C0152j.ViewBackgroundHelper, i, 0);
        View view = this.f1563a;
        C0926v.m44133a(view, view.getContext(), C0142a.C0152j.ViewBackgroundHelper, attributeSet, m45804a.f1491a, i);
        try {
            if (m45804a.m45793g(C0142a.C0152j.ViewBackgroundHelper_android_background)) {
                this.f1565c = m45804a.m45792g(C0142a.C0152j.ViewBackgroundHelper_android_background, -1);
                ColorStateList m45724c = this.f1564b.m45724c(this.f1563a.getContext(), this.f1565c);
                if (m45724c != null) {
                    m45742b(m45724c);
                }
            }
            if (m45804a.m45793g(C0142a.C0152j.ViewBackgroundHelper_backgroundTint)) {
                C0926v.m44132a(this.f1563a, m45804a.m45797e(C0142a.C0152j.ViewBackgroundHelper_backgroundTint));
            }
            if (m45804a.m45793g(C0142a.C0152j.ViewBackgroundHelper_backgroundTintMode)) {
                C0926v.m44130a(this.f1563a, C0407p.m45622a(m45804a.m45809a(C0142a.C0152j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            m45804a.f1491a.recycle();
        }
    }

    /* renamed from: b */
    public final ColorStateList m45743b() {
        C0427z c0427z = this.f1567e;
        if (c0427z != null) {
            return c0427z.f1697a;
        }
        return null;
    }

    /* renamed from: c */
    public final PorterDuff.Mode m45741c() {
        C0427z c0427z = this.f1567e;
        if (c0427z != null) {
            return c0427z.f1698b;
        }
        return null;
    }

    /* renamed from: d */
    public final void m45740d() {
        Drawable background = this.f1563a.getBackground();
        if (background != null) {
            if (m45739e() && m45745a(background)) {
                return;
            }
            C0427z c0427z = this.f1567e;
            if (c0427z != null) {
                C0392f.m45728a(background, c0427z, this.f1563a.getDrawableState());
                return;
            }
            C0427z c0427z2 = this.f1566d;
            if (c0427z2 == null) {
                return;
            }
            C0392f.m45728a(background, c0427z2, this.f1563a.getDrawableState());
        }
    }
}
