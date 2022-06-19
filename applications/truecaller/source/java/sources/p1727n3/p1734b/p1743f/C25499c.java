package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.C0032R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.f.c */
/* loaded from: classes-dex2jar.jar:n3/b/f/c.class */
public class C25499c {

    /* renamed from: a */
    public final View f71347a;

    /* renamed from: d */
    public C25535p0 f71350d;

    /* renamed from: e */
    public C25535p0 f71351e;

    /* renamed from: f */
    public C25535p0 f71352f;

    /* renamed from: c */
    public int f71349c = -1;

    /* renamed from: b */
    public final C25502e f71348b = C25502e.m3380a();

    public C25499c(View view) {
        this.f71347a = view;
    }

    /* renamed from: a */
    public void m3393a() {
        boolean z;
        Drawable background = this.f71347a.getBackground();
        if (background != null) {
            if (this.f71350d != null) {
                if (this.f71352f == null) {
                    this.f71352f = new C25535p0();
                }
                C25535p0 c25535p0 = this.f71352f;
                c25535p0.f71441a = null;
                c25535p0.f71444d = false;
                c25535p0.f71442b = null;
                c25535p0.f71443c = false;
                View view = this.f71347a;
                AtomicInteger atomicInteger = C26614s.f74505a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    c25535p0.f71444d = true;
                    c25535p0.f71441a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = this.f71347a.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    c25535p0.f71443c = true;
                    c25535p0.f71442b = backgroundTintMode;
                }
                if (c25535p0.f71444d || c25535p0.f71443c) {
                    C25502e.m3375f(background, c25535p0, this.f71347a.getDrawableState());
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            C25535p0 c25535p02 = this.f71351e;
            if (c25535p02 != null) {
                C25502e.m3375f(background, c25535p02, this.f71347a.getDrawableState());
                return;
            }
            C25535p0 c25535p03 = this.f71350d;
            if (c25535p03 == null) {
                return;
            }
            C25502e.m3375f(background, c25535p03, this.f71347a.getDrawableState());
        }
    }

    /* renamed from: b */
    public ColorStateList m3392b() {
        C25535p0 c25535p0 = this.f71351e;
        return c25535p0 != null ? c25535p0.f71441a : null;
    }

    /* renamed from: c */
    public PorterDuff.Mode m3391c() {
        C25535p0 c25535p0 = this.f71351e;
        return c25535p0 != null ? c25535p0.f71442b : null;
    }

    /* renamed from: d */
    public void m3390d(AttributeSet attributeSet, int i) {
        Context context = this.f71347a.getContext();
        int[] iArr = C0032R.styleable.ViewBackgroundHelper;
        C25540r0 m3306q = C25540r0.m3306q(context, attributeSet, iArr, i, 0);
        View view = this.f71347a;
        C26614s.m1565p(view, view.getContext(), iArr, attributeSet, m3306q.f71466b, i, 0);
        try {
            int i2 = C0032R.styleable.ViewBackgroundHelper_android_background;
            if (m3306q.m3308o(i2)) {
                this.f71349c = m3306q.m3311l(i2, -1);
                ColorStateList m3377d = this.f71348b.m3377d(this.f71347a.getContext(), this.f71349c);
                if (m3377d != null) {
                    m3387g(m3377d);
                }
            }
            int i3 = C0032R.styleable.ViewBackgroundHelper_backgroundTint;
            if (m3306q.m3308o(i3)) {
                this.f71347a.setBackgroundTintList(m3306q.m3320c(i3));
            }
            int i4 = C0032R.styleable.ViewBackgroundHelper_backgroundTintMode;
            if (m3306q.m3308o(i4)) {
                this.f71347a.setBackgroundTintMode(C25553w.m3248c(m3306q.m3313j(i4, -1), null));
            }
        } finally {
            m3306q.f71466b.recycle();
        }
    }

    /* renamed from: e */
    public void m3389e() {
        this.f71349c = -1;
        m3387g(null);
        m3393a();
    }

    /* renamed from: f */
    public void m3388f(int i) {
        this.f71349c = i;
        C25502e c25502e = this.f71348b;
        m3387g(c25502e != null ? c25502e.m3377d(this.f71347a.getContext(), i) : null);
        m3393a();
    }

    /* renamed from: g */
    public void m3387g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f71350d == null) {
                this.f71350d = new C25535p0();
            }
            C25535p0 c25535p0 = this.f71350d;
            c25535p0.f71441a = colorStateList;
            c25535p0.f71444d = true;
        } else {
            this.f71350d = null;
        }
        m3393a();
    }

    /* renamed from: h */
    public void m3386h(ColorStateList colorStateList) {
        if (this.f71351e == null) {
            this.f71351e = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71351e;
        c25535p0.f71441a = colorStateList;
        c25535p0.f71444d = true;
        m3393a();
    }

    /* renamed from: i */
    public void m3385i(PorterDuff.Mode mode) {
        if (this.f71351e == null) {
            this.f71351e = new C25535p0();
        }
        C25535p0 c25535p0 = this.f71351e;
        c25535p0.f71442b = mode;
        c25535p0.f71443c = true;
        m3393a();
    }
}
