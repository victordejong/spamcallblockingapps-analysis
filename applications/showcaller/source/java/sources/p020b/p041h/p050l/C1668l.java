package p020b.p041h.p050l;

import android.view.View;
import android.view.ViewParent;
/* renamed from: b.h.l.l */
/* loaded from: classes-dex2jar.jar:b/h/l/l.class */
public class C1668l {

    /* renamed from: a */
    private ViewParent f6328a;

    /* renamed from: b */
    private ViewParent f6329b;

    /* renamed from: c */
    private final View f6330c;

    /* renamed from: d */
    private boolean f6331d;

    /* renamed from: e */
    private int[] f6332e;

    public C1668l(View view) {
        this.f6330c = view;
    }

    /* renamed from: g */
    private boolean m29378g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m29377h;
        int i6;
        int i7;
        if (!m29373l() || (m29377h = m29377h(i5)) == null) {
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
            this.f6330c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            iArr2 = m29376i();
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        C1695z.m29209d(m29377h, this.f6330c, i, i2, i3, i4, i5, iArr2);
        if (iArr == null) {
            return true;
        }
        this.f6330c.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i7;
        iArr[1] = iArr[1] - i6;
        return true;
    }

    /* renamed from: h */
    private ViewParent m29377h(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f6329b;
            }
            return null;
        }
        return this.f6328a;
    }

    /* renamed from: i */
    private int[] m29376i() {
        if (this.f6332e == null) {
            this.f6332e = new int[2];
        }
        return this.f6332e;
    }

    /* renamed from: n */
    private void m29371n(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f6328a = viewParent;
        } else if (i != 1) {
        } else {
            this.f6329b = viewParent;
        }
    }

    /* renamed from: a */
    public boolean m29384a(float f, float f2, boolean z) {
        ViewParent m29377h;
        if (!m29373l() || (m29377h = m29377h(0)) == null) {
            return false;
        }
        return C1695z.m29212a(m29377h, this.f6330c, f, f2, z);
    }

    /* renamed from: b */
    public boolean m29383b(float f, float f2) {
        ViewParent m29377h;
        if (!m29373l() || (m29377h = m29377h(0)) == null) {
            return false;
        }
        return C1695z.m29211b(m29377h, this.f6330c, f, f2);
    }

    /* renamed from: c */
    public boolean m29382c(int i, int i2, int[] iArr, int[] iArr2) {
        return m29381d(i, i2, iArr, iArr2, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
        if (r19[1] != 0) goto L28;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m29381d(int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p041h.p050l.C1668l.m29381d(int, int, int[], int[], int):boolean");
    }

    /* renamed from: e */
    public void m29380e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m29378g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: f */
    public boolean m29379f(int i, int i2, int i3, int i4, int[] iArr) {
        return m29378g(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: j */
    public boolean m29375j() {
        return m29374k(0);
    }

    /* renamed from: k */
    public boolean m29374k(int i) {
        return m29377h(i) != null;
    }

    /* renamed from: l */
    public boolean m29373l() {
        return this.f6331d;
    }

    /* renamed from: m */
    public void m29372m(boolean z) {
        if (this.f6331d) {
            C1679w.m29321O0(this.f6330c);
        }
        this.f6331d = z;
    }

    /* renamed from: o */
    public boolean m29370o(int i) {
        return m29369p(i, 0);
    }

    /* renamed from: p */
    public boolean m29369p(int i, int i2) {
        if (m29374k(i2)) {
            return true;
        }
        if (!m29373l()) {
            return false;
        }
        View view = this.f6330c;
        for (ViewParent parent = this.f6330c.getParent(); parent != null; parent = parent.getParent()) {
            if (C1695z.m29207f(parent, view, this.f6330c, i, i2)) {
                m29371n(i2, parent);
                C1695z.m29208e(parent, view, this.f6330c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: q */
    public void m29368q() {
        m29367r(0);
    }

    /* renamed from: r */
    public void m29367r(int i) {
        ViewParent m29377h = m29377h(i);
        if (m29377h != null) {
            C1695z.m29206g(m29377h, this.f6330c, i);
            m29371n(i, null);
        }
    }
}
