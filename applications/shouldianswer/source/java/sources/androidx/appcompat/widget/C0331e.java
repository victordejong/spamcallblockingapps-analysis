package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.C0051a;
import androidx.core.p023g.C0552u;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public class C0331e {

    /* renamed from: a */
    private final View f1355a;

    /* renamed from: d */
    private C0309aq f1358d;

    /* renamed from: e */
    private C0309aq f1359e;

    /* renamed from: f */
    private C0309aq f1360f;

    /* renamed from: c */
    private int f1357c = -1;

    /* renamed from: b */
    private final C0335i f1356b = C0335i.m7068b();

    public C0331e(View view) {
        this.f1355a = view;
    }

    /* renamed from: b */
    private boolean m7085b(Drawable drawable) {
        if (this.f1360f == null) {
            this.f1360f = new C0309aq();
        }
        C0309aq c0309aq = this.f1360f;
        c0309aq.m7165a();
        ColorStateList m6224w = C0552u.m6224w(this.f1355a);
        if (m6224w != null) {
            c0309aq.f1279d = true;
            c0309aq.f1276a = m6224w;
        }
        PorterDuff.Mode m6223x = C0552u.m6223x(this.f1355a);
        if (m6223x != null) {
            c0309aq.f1278c = true;
            c0309aq.f1277b = m6223x;
        }
        if (c0309aq.f1279d || c0309aq.f1278c) {
            C0335i.m7069a(drawable, c0309aq, this.f1355a.getDrawableState());
            return true;
        }
        return false;
    }

    /* renamed from: d */
    private boolean m7083d() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f1358d == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public ColorStateList m7093a() {
        C0309aq c0309aq = this.f1359e;
        return c0309aq != null ? c0309aq.f1276a : null;
    }

    /* renamed from: a */
    public void m7092a(int i) {
        this.f1357c = i;
        C0335i c0335i = this.f1356b;
        m7086b(c0335i != null ? c0335i.m7067b(this.f1355a.getContext(), i) : null);
        m7084c();
    }

    /* renamed from: a */
    public void m7091a(ColorStateList colorStateList) {
        if (this.f1359e == null) {
            this.f1359e = new C0309aq();
        }
        C0309aq c0309aq = this.f1359e;
        c0309aq.f1276a = colorStateList;
        c0309aq.f1279d = true;
        m7084c();
    }

    /* renamed from: a */
    public void m7090a(PorterDuff.Mode mode) {
        if (this.f1359e == null) {
            this.f1359e = new C0309aq();
        }
        C0309aq c0309aq = this.f1359e;
        c0309aq.f1277b = mode;
        c0309aq.f1278c = true;
        m7084c();
    }

    /* renamed from: a */
    public void m7089a(Drawable drawable) {
        this.f1357c = -1;
        m7086b((ColorStateList) null);
        m7084c();
    }

    /* renamed from: a */
    public void m7088a(AttributeSet attributeSet, int i) {
        C0311as m7156a = C0311as.m7156a(this.f1355a.getContext(), attributeSet, C0051a.C0061j.ViewBackgroundHelper, i, 0);
        try {
            if (m7156a.m7144g(C0051a.C0061j.ViewBackgroundHelper_android_background)) {
                this.f1357c = m7156a.m7143g(C0051a.C0061j.ViewBackgroundHelper_android_background, -1);
                ColorStateList m7067b = this.f1356b.m7067b(this.f1355a.getContext(), this.f1357c);
                if (m7067b != null) {
                    m7086b(m7067b);
                }
            }
            if (m7156a.m7144g(C0051a.C0061j.ViewBackgroundHelper_backgroundTint)) {
                C0552u.m6275a(this.f1355a, m7156a.m7148e(C0051a.C0061j.ViewBackgroundHelper_backgroundTint));
            }
            if (m7156a.m7144g(C0051a.C0061j.ViewBackgroundHelper_backgroundTintMode)) {
                C0552u.m6274a(this.f1355a, C0268aa.m7306a(m7156a.m7161a(C0051a.C0061j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            m7156a.m7164a();
        }
    }

    /* renamed from: b */
    public PorterDuff.Mode m7087b() {
        C0309aq c0309aq = this.f1359e;
        return c0309aq != null ? c0309aq.f1277b : null;
    }

    /* renamed from: b */
    void m7086b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1358d == null) {
                this.f1358d = new C0309aq();
            }
            C0309aq c0309aq = this.f1358d;
            c0309aq.f1276a = colorStateList;
            c0309aq.f1279d = true;
        } else {
            this.f1358d = null;
        }
        m7084c();
    }

    /* renamed from: c */
    public void m7084c() {
        Drawable background = this.f1355a.getBackground();
        if (background != null) {
            if (m7083d() && m7085b(background)) {
                return;
            }
            C0309aq c0309aq = this.f1359e;
            if (c0309aq != null) {
                C0335i.m7069a(background, c0309aq, this.f1355a.getDrawableState());
                return;
            }
            C0309aq c0309aq2 = this.f1358d;
            if (c0309aq2 == null) {
                return;
            }
            C0335i.m7069a(background, c0309aq2, this.f1355a.getDrawableState());
        }
    }
}
