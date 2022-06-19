package androidx.core.p026h;

import android.view.View;
import android.view.ViewParent;
/* renamed from: androidx.core.h.l */
/* loaded from: classes-dex2jar.jar:androidx/core/h/l.class */
public class C0586l {

    /* renamed from: a */
    private ViewParent f2079a;

    /* renamed from: b */
    private ViewParent f2080b;

    /* renamed from: c */
    private final View f2081c;

    /* renamed from: d */
    private boolean f2082d;

    /* renamed from: e */
    private int[] f2083e;

    public C0586l(View view) {
        this.f2081c = view;
    }

    /* renamed from: a */
    private void m20389a(int i, ViewParent viewParent) {
        switch (i) {
            case 0:
                this.f2079a = viewParent;
                return;
            case 1:
                this.f2080b = viewParent;
                return;
            default:
                return;
        }
    }

    /* renamed from: b */
    private boolean m20385b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        boolean z;
        int i6;
        int i7;
        if (m20399a()) {
            ViewParent m20381d = m20381d(i5);
            if (m20381d == null) {
                z = false;
            } else if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
                if (iArr != null) {
                    this.f2081c.getLocationInWindow(iArr);
                    i7 = iArr[0];
                    i6 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    iArr2 = m20382d();
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                }
                C0606x.m20261a(m20381d, this.f2081c, i, i2, i3, i4, i5, iArr2);
                if (iArr != null) {
                    this.f2081c.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i7;
                    iArr[1] = iArr[1] - i6;
                }
                z = true;
            } else if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    private ViewParent m20381d(int i) {
        ViewParent viewParent;
        switch (i) {
            case 0:
                viewParent = this.f2079a;
                break;
            case 1:
                viewParent = this.f2080b;
                break;
            default:
                viewParent = null;
                break;
        }
        return viewParent;
    }

    /* renamed from: d */
    private int[] m20382d() {
        if (this.f2083e == null) {
            this.f2083e = new int[2];
        }
        return this.f2083e;
    }

    /* renamed from: a */
    public void m20392a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m20385b(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public void m20388a(boolean z) {
        if (this.f2082d) {
            C0595u.m20300x(this.f2081c);
        }
        this.f2082d = z;
    }

    /* renamed from: a */
    public boolean m20399a() {
        return this.f2082d;
    }

    /* renamed from: a */
    public boolean m20398a(float f, float f2) {
        boolean z = false;
        if (m20399a()) {
            ViewParent m20381d = m20381d(0);
            z = false;
            if (m20381d != null) {
                z = C0606x.m20264a(m20381d, this.f2081c, f, f2);
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m20397a(float f, float f2, boolean z) {
        boolean z2 = false;
        if (m20399a()) {
            ViewParent m20381d = m20381d(0);
            z2 = false;
            if (m20381d != null) {
                z2 = C0606x.m20263a(m20381d, this.f2081c, f, f2, z);
            }
        }
        return z2;
    }

    /* renamed from: a */
    public boolean m20396a(int i) {
        return m20381d(i) != null;
    }

    /* renamed from: a */
    public boolean m20395a(int i, int i2) {
        boolean z;
        if (m20396a(i2)) {
            z = true;
        } else {
            if (m20399a()) {
                View view = this.f2081c;
                for (ViewParent parent = this.f2081c.getParent(); parent != null; parent = parent.getParent()) {
                    if (C0606x.m20259a(parent, view, this.f2081c, i, i2)) {
                        m20389a(i2, parent);
                        C0606x.m20257b(parent, view, this.f2081c, i, i2);
                        z = true;
                        break;
                    }
                    if (parent instanceof View) {
                        view = (View) parent;
                    }
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m20394a(int i, int i2, int i3, int i4, int[] iArr) {
        return m20385b(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: a */
    public boolean m20393a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return m20385b(i, i2, i3, i4, iArr, i5, null);
    }

    /* renamed from: a */
    public boolean m20391a(int i, int i2, int[] iArr, int[] iArr2) {
        return m20390a(i, i2, iArr, iArr2, 0);
    }

    /* renamed from: a */
    public boolean m20390a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        int i4;
        int i5;
        boolean z = false;
        if (m20399a()) {
            ViewParent m20381d = m20381d(i3);
            if (m20381d == null) {
                z = false;
            } else if (i == 0 && i2 == 0) {
                z = false;
                if (iArr2 != null) {
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    z = false;
                }
            } else {
                if (iArr2 != null) {
                    this.f2081c.getLocationInWindow(iArr2);
                    i5 = iArr2[0];
                    i4 = iArr2[1];
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                if (iArr == null) {
                    iArr = m20382d();
                }
                iArr[0] = 0;
                iArr[1] = 0;
                C0606x.m20260a(m20381d, this.f2081c, i, i2, iArr, i3);
                if (iArr2 != null) {
                    this.f2081c.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i5;
                    iArr2[1] = iArr2[1] - i4;
                }
                z = (iArr[0] == 0 && iArr[1] == 0) ? false : true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m20387b() {
        return m20396a(0);
    }

    /* renamed from: b */
    public boolean m20386b(int i) {
        return m20395a(i, 0);
    }

    /* renamed from: c */
    public void m20384c() {
        m20383c(0);
    }

    /* renamed from: c */
    public void m20383c(int i) {
        ViewParent m20381d = m20381d(i);
        if (m20381d != null) {
            C0606x.m20262a(m20381d, this.f2081c, i);
            m20389a(i, (ViewParent) null);
        }
    }
}
