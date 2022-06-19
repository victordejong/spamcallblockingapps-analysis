package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.C0083a;
import androidx.core.p026h.C0595u;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f.class */
public class C0347f {

    /* renamed from: a */
    private final View f1443a;

    /* renamed from: d */
    private C0315an f1446d;

    /* renamed from: e */
    private C0315an f1447e;

    /* renamed from: f */
    private C0315an f1448f;

    /* renamed from: c */
    private int f1445c = -1;

    /* renamed from: b */
    private final C0350i f1444b = C0350i.m21307b();

    public C0347f(View view) {
        this.f1443a = view;
    }

    /* renamed from: b */
    private boolean m21324b(Drawable drawable) {
        boolean z = true;
        if (this.f1448f == null) {
            this.f1448f = new C0315an();
        }
        C0315an c0315an = this.f1448f;
        c0315an.m21442a();
        ColorStateList m20303u = C0595u.m20303u(this.f1443a);
        if (m20303u != null) {
            c0315an.f1336d = true;
            c0315an.f1333a = m20303u;
        }
        PorterDuff.Mode m20302v = C0595u.m20302v(this.f1443a);
        if (m20302v != null) {
            c0315an.f1335c = true;
            c0315an.f1334b = m20302v;
        }
        if (c0315an.f1336d || c0315an.f1335c) {
            C0350i.m21308a(drawable, c0315an, this.f1443a.getDrawableState());
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    private boolean m21322d() {
        boolean z = true;
        int i = Build.VERSION.SDK_INT;
        if (i > 21) {
            if (this.f1446d == null) {
                z = false;
            }
        } else if (i != 21) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public ColorStateList m21332a() {
        return this.f1447e != null ? this.f1447e.f1333a : null;
    }

    /* renamed from: a */
    public void m21331a(int i) {
        this.f1445c = i;
        m21325b(this.f1444b != null ? this.f1444b.m21306b(this.f1443a.getContext(), i) : null);
        m21323c();
    }

    /* renamed from: a */
    public void m21330a(ColorStateList colorStateList) {
        if (this.f1447e == null) {
            this.f1447e = new C0315an();
        }
        this.f1447e.f1333a = colorStateList;
        this.f1447e.f1336d = true;
        m21323c();
    }

    /* renamed from: a */
    public void m21329a(PorterDuff.Mode mode) {
        if (this.f1447e == null) {
            this.f1447e = new C0315an();
        }
        this.f1447e.f1334b = mode;
        this.f1447e.f1335c = true;
        m21323c();
    }

    /* renamed from: a */
    public void m21328a(Drawable drawable) {
        this.f1445c = -1;
        m21325b((ColorStateList) null);
        m21323c();
    }

    /* renamed from: a */
    public void m21327a(AttributeSet attributeSet, int i) {
        C0317ap m21433a = C0317ap.m21433a(this.f1443a.getContext(), attributeSet, C0083a.C0093j.ViewBackgroundHelper, i, 0);
        try {
            if (m21433a.m21421g(C0083a.C0093j.ViewBackgroundHelper_android_background)) {
                this.f1445c = m21433a.m21420g(C0083a.C0093j.ViewBackgroundHelper_android_background, -1);
                ColorStateList m21306b = this.f1444b.m21306b(this.f1443a.getContext(), this.f1445c);
                if (m21306b != null) {
                    m21325b(m21306b);
                }
            }
            if (m21433a.m21421g(C0083a.C0093j.ViewBackgroundHelper_backgroundTint)) {
                C0595u.m20353a(this.f1443a, m21433a.m21425e(C0083a.C0093j.ViewBackgroundHelper_backgroundTint));
            }
            if (m21433a.m21421g(C0083a.C0093j.ViewBackgroundHelper_backgroundTintMode)) {
                C0595u.m20352a(this.f1443a, C0369y.m21168a(m21433a.m21438a(C0083a.C0093j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            m21433a.m21441a();
        }
    }

    /* renamed from: b */
    public PorterDuff.Mode m21326b() {
        return this.f1447e != null ? this.f1447e.f1334b : null;
    }

    /* renamed from: b */
    void m21325b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f1446d == null) {
                this.f1446d = new C0315an();
            }
            this.f1446d.f1333a = colorStateList;
            this.f1446d.f1336d = true;
        } else {
            this.f1446d = null;
        }
        m21323c();
    }

    /* renamed from: c */
    public void m21323c() {
        Drawable background = this.f1443a.getBackground();
        if (background != null) {
            if (m21322d() && m21324b(background)) {
                return;
            }
            if (this.f1447e != null) {
                C0350i.m21308a(background, this.f1447e, this.f1443a.getDrawableState());
            } else if (this.f1446d == null) {
            } else {
                C0350i.m21308a(background, this.f1446d, this.f1443a.getDrawableState());
            }
        }
    }
}
