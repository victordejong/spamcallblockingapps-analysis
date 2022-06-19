package androidx.core.p023g;

import android.view.View;
import android.view.ViewParent;
/* renamed from: androidx.core.g.l */
/* loaded from: classes-dex2jar.jar:androidx/core/g/l.class */
public class C0543l {

    /* renamed from: a */
    private ViewParent f1870a;

    /* renamed from: b */
    private ViewParent f1871b;

    /* renamed from: c */
    private final View f1872c;

    /* renamed from: d */
    private boolean f1873d;

    /* renamed from: e */
    private int[] f1874e;

    public C0543l(View view) {
        this.f1872c = view;
    }

    /* renamed from: a */
    private void m6312a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f1870a = viewParent;
        } else if (i != 1) {
        } else {
            this.f1871b = viewParent;
        }
    }

    /* renamed from: b */
    private boolean m6308b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m6304d;
        int i6;
        int i7;
        if (!m6322a() || (m6304d = m6304d(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr == null) {
                return false;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
        if (iArr != null) {
            this.f1872c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            iArr2 = m6305d();
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        C0563x.m6194a(m6304d, this.f1872c, i, i2, i3, i4, i5, iArr2);
        if (iArr == null) {
            return true;
        }
        this.f1872c.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i7;
        iArr[1] = iArr[1] - i6;
        return true;
    }

    /* renamed from: d */
    private ViewParent m6304d(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f1871b;
            }
            return null;
        }
        return this.f1870a;
    }

    /* renamed from: d */
    private int[] m6305d() {
        if (this.f1874e == null) {
            this.f1874e = new int[2];
        }
        return this.f1874e;
    }

    /* renamed from: a */
    public void m6315a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m6308b(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public void m6311a(boolean z) {
        if (this.f1873d) {
            C0552u.m6221z(this.f1872c);
        }
        this.f1873d = z;
    }

    /* renamed from: a */
    public boolean m6322a() {
        return this.f1873d;
    }

    /* renamed from: a */
    public boolean m6321a(float f, float f2) {
        ViewParent m6304d;
        if (!m6322a() || (m6304d = m6304d(0)) == null) {
            return false;
        }
        return C0563x.m6197a(m6304d, this.f1872c, f, f2);
    }

    /* renamed from: a */
    public boolean m6320a(float f, float f2, boolean z) {
        ViewParent m6304d;
        if (!m6322a() || (m6304d = m6304d(0)) == null) {
            return false;
        }
        return C0563x.m6196a(m6304d, this.f1872c, f, f2, z);
    }

    /* renamed from: a */
    public boolean m6319a(int i) {
        return m6304d(i) != null;
    }

    /* renamed from: a */
    public boolean m6318a(int i, int i2) {
        if (m6319a(i2)) {
            return true;
        }
        if (!m6322a()) {
            return false;
        }
        View view = this.f1872c;
        for (ViewParent parent = this.f1872c.getParent(); parent != null; parent = parent.getParent()) {
            if (C0563x.m6192a(parent, view, this.f1872c, i, i2)) {
                m6312a(i2, parent);
                C0563x.m6190b(parent, view, this.f1872c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m6317a(int i, int i2, int i3, int i4, int[] iArr) {
        return m6308b(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: a */
    public boolean m6316a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return m6308b(i, i2, i3, i4, iArr, i5, null);
    }

    /* renamed from: a */
    public boolean m6314a(int i, int i2, int[] iArr, int[] iArr2) {
        return m6313a(i, i2, iArr, iArr2, 0);
    }

    /* renamed from: a */
    public boolean m6313a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent m6304d;
        int i4;
        int i5;
        if (!m6322a() || (m6304d = m6304d(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f1872c.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i4 = iArr2[1];
        } else {
            i5 = 0;
            i4 = 0;
        }
        int[] iArr3 = iArr;
        if (iArr == null) {
            iArr3 = m6305d();
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        C0563x.m6193a(m6304d, this.f1872c, i, i2, iArr3, i3);
        if (iArr2 != null) {
            this.f1872c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i4;
        }
        boolean z = true;
        if (iArr3[0] == 0) {
            z = iArr3[1] != 0;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m6310b() {
        return m6319a(0);
    }

    /* renamed from: b */
    public boolean m6309b(int i) {
        return m6318a(i, 0);
    }

    /* renamed from: c */
    public void m6307c() {
        m6306c(0);
    }

    /* renamed from: c */
    public void m6306c(int i) {
        ViewParent m6304d = m6304d(i);
        if (m6304d != null) {
            C0563x.m6195a(m6304d, this.f1872c, i);
            m6312a(i, (ViewParent) null);
        }
    }
}
