package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
public class C0283d {

    /* renamed from: a */
    private final View f1240a;

    /* renamed from: d */
    private C0282c0 f1243d;

    /* renamed from: e */
    private C0282c0 f1244e;

    /* renamed from: f */
    private C0282c0 f1245f;

    /* renamed from: c */
    private int f1242c = -1;

    /* renamed from: b */
    private final C0287f f1241b = C0287f.m34943b();

    public C0283d(View view) {
        this.f1240a = view;
    }

    /* renamed from: a */
    private boolean m34986a(Drawable drawable) {
        if (this.f1245f == null) {
            this.f1245f = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1245f;
        c0282c0.m34987a();
        ColorStateList m29272s = C1679w.m29272s(this.f1240a);
        if (m29272s != null) {
            c0282c0.f1239d = true;
            c0282c0.f1236a = m29272s;
        }
        PorterDuff.Mode m29270t = C1679w.m29270t(this.f1240a);
        if (m29270t != null) {
            c0282c0.f1238c = true;
            c0282c0.f1237b = m29270t;
        }
        if (c0282c0.f1239d || c0282c0.f1238c) {
            C0287f.m34936i(drawable, c0282c0, this.f1240a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: k */
    private boolean m34976k() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f1243d == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void m34985b() {
        Drawable background = this.f1240a.getBackground();
        if (background != null) {
            if (m34976k() && m34986a(background)) {
                return;
            }
            C0282c0 c0282c0 = this.f1244e;
            if (c0282c0 != null) {
                C0287f.m34936i(background, c0282c0, this.f1240a.getDrawableState());
                return;
            }
            C0282c0 c0282c02 = this.f1243d;
            if (c0282c02 == null) {
                return;
            }
            C0287f.m34936i(background, c0282c02, this.f1240a.getDrawableState());
        }
    }

    /* renamed from: c */
    public ColorStateList m34984c() {
        C0282c0 c0282c0 = this.f1244e;
        return c0282c0 != null ? c0282c0.f1236a : null;
    }

    /* renamed from: d */
    public PorterDuff.Mode m34983d() {
        C0282c0 c0282c0 = this.f1244e;
        return c0282c0 != null ? c0282c0.f1237b : null;
    }

    /* renamed from: e */
    public void m34982e(AttributeSet attributeSet, int i) {
        Context context = this.f1240a.getContext();
        int[] iArr = C1432j.ViewBackgroundHelper;
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, iArr, i, 0);
        View view = this.f1240a;
        C1679w.m29277p0(view, view.getContext(), iArr, attributeSet, m34946v.m34950r(), i, 0);
        try {
            int i2 = C1432j.ViewBackgroundHelper_android_background;
            if (m34946v.m34949s(i2)) {
                this.f1242c = m34946v.m34954n(i2, -1);
                ColorStateList m34939f = this.f1241b.m34939f(this.f1240a.getContext(), this.f1242c);
                if (m34939f != null) {
                    m34979h(m34939f);
                }
            }
            int i3 = C1432j.ViewBackgroundHelper_backgroundTint;
            if (m34946v.m34949s(i3)) {
                C1679w.m29265v0(this.f1240a, m34946v.m34965c(i3));
            }
            int i4 = C1432j.ViewBackgroundHelper_backgroundTintMode;
            if (m34946v.m34949s(i4)) {
                C1679w.m29263w0(this.f1240a, C0317q.m34773e(m34946v.m34957k(i4, -1), null));
            }
        } finally {
            m34946v.m34945w();
        }
    }

    /* renamed from: f */
    public void m34981f(Drawable drawable) {
        this.f1242c = -1;
        m34979h(null);
        m34985b();
    }

    /* renamed from: g */
    public void m34980g(int i) {
        this.f1242c = i;
        C0287f c0287f = this.f1241b;
        m34979h(c0287f != null ? c0287f.m34939f(this.f1240a.getContext(), i) : null);
        m34985b();
    }

    /* renamed from: h */
    void m34979h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1243d == null) {
                this.f1243d = new C0282c0();
            }
            C0282c0 c0282c0 = this.f1243d;
            c0282c0.f1236a = colorStateList;
            c0282c0.f1239d = true;
        } else {
            this.f1243d = null;
        }
        m34985b();
    }

    /* renamed from: i */
    public void m34978i(ColorStateList colorStateList) {
        if (this.f1244e == null) {
            this.f1244e = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1244e;
        c0282c0.f1236a = colorStateList;
        c0282c0.f1239d = true;
        m34985b();
    }

    /* renamed from: j */
    public void m34977j(PorterDuff.Mode mode) {
        if (this.f1244e == null) {
            this.f1244e = new C0282c0();
        }
        C0282c0 c0282c0 = this.f1244e;
        c0282c0.f1237b = mode;
        c0282c0.f1238c = true;
        m34985b();
    }
}
