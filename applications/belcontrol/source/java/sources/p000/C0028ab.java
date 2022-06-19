package p000;

import android.view.View;
import android.view.ViewParent;
/* renamed from: ab */
/* loaded from: classes-dex2jar.jar:ab.class */
public class C0028ab {

    /* renamed from: a */
    public ViewParent f229a;

    /* renamed from: b */
    public ViewParent f230b;

    /* renamed from: c */
    public final View f231c;

    /* renamed from: d */
    public boolean f232d;

    /* renamed from: e */
    public int[] f233e;

    public C0028ab(View view) {
        this.f231c = view;
    }

    /* renamed from: a */
    public boolean m7295a(float f, float f2, boolean z) {
        ViewParent m7287i;
        if (!m7283m() || (m7287i = m7287i(0)) == null) {
            return false;
        }
        return mb.a(m7287i, this.f231c, f, f2, z);
    }

    /* renamed from: b */
    public boolean m7294b(float f, float f2) {
        ViewParent m7287i;
        if (!m7283m() || (m7287i = m7287i(0)) == null) {
            return false;
        }
        return mb.b(m7287i, this.f231c, f, f2);
    }

    /* renamed from: c */
    public boolean m7293c(int i, int i2, int[] iArr, int[] iArr2) {
        return m7292d(i, i2, iArr, iArr2, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
        if (r19[1] != 0) goto L28;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7292d(int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.C0028ab.m7292d(int, int, int[], int[], int):boolean");
    }

    /* renamed from: e */
    public void m7291e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m7288h(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: f */
    public boolean m7290f(int i, int i2, int i3, int i4, int[] iArr) {
        return m7288h(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: g */
    public boolean m7289g(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return m7288h(i, i2, i3, i4, iArr, i5, null);
    }

    /* renamed from: h */
    public final boolean m7288h(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m7287i;
        int i6;
        int i7;
        if (!m7283m() || (m7287i = m7287i(i5)) == null) {
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
            this.f231c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            iArr2 = m7286j();
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        mb.d(m7287i, this.f231c, i, i2, i3, i4, i5, iArr2);
        if (iArr == null) {
            return true;
        }
        this.f231c.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i7;
        iArr[1] = iArr[1] - i6;
        return true;
    }

    /* renamed from: i */
    public final ViewParent m7287i(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f230b;
            }
            return null;
        }
        return this.f229a;
    }

    /* renamed from: j */
    public final int[] m7286j() {
        if (this.f233e == null) {
            this.f233e = new int[2];
        }
        return this.f233e;
    }

    /* renamed from: k */
    public boolean m7285k() {
        return m7284l(0);
    }

    /* renamed from: l */
    public boolean m7284l(int i) {
        return m7287i(i) != null;
    }

    /* renamed from: m */
    public boolean m7283m() {
        return this.f232d;
    }

    /* renamed from: n */
    public void m7282n(boolean z) {
        if (this.f232d) {
            jb.H0(this.f231c);
        }
        this.f232d = z;
    }

    /* renamed from: o */
    public final void m7281o(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f229a = viewParent;
        } else if (i != 1) {
        } else {
            this.f230b = viewParent;
        }
    }

    /* renamed from: p */
    public boolean m7280p(int i) {
        return m7279q(i, 0);
    }

    /* renamed from: q */
    public boolean m7279q(int i, int i2) {
        if (m7284l(i2)) {
            return true;
        }
        if (!m7283m()) {
            return false;
        }
        View view = this.f231c;
        for (ViewParent parent = this.f231c.getParent(); parent != null; parent = parent.getParent()) {
            if (mb.f(parent, view, this.f231c, i, i2)) {
                m7281o(i2, parent);
                mb.e(parent, view, this.f231c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: r */
    public void m7278r() {
        m7277s(0);
    }

    /* renamed from: s */
    public void m7277s(int i) {
        ViewParent m7287i = m7287i(i);
        if (m7287i != null) {
            mb.g(m7287i, this.f231c, i);
            m7281o(i, null);
        }
    }
}
