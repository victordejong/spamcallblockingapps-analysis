package p012b.p042i.p054p;

import android.view.View;
import android.view.ViewParent;
/* renamed from: b.i.p.m */
/* loaded from: classes-dex2jar.jar:b/i/p/m.class */
public class C0994m {

    /* renamed from: a */
    public ViewParent f4243a;

    /* renamed from: b */
    public ViewParent f4244b;

    /* renamed from: c */
    public final View f4245c;

    /* renamed from: d */
    public boolean f4246d;

    /* renamed from: e */
    public int[] f4247e;

    public C0994m(View view) {
        this.f4245c = view;
    }

    /* renamed from: a */
    public final ViewParent m35285a(int i) {
        if (i == 0) {
            return this.f4243a;
        }
        if (i != 1) {
            return null;
        }
        return this.f4244b;
    }

    /* renamed from: a */
    public void m35282a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m35275b(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public final void m35279a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f4243a = viewParent;
        } else if (i == 1) {
            this.f4244b = viewParent;
        }
    }

    /* renamed from: a */
    public void m35278a(boolean z) {
        if (this.f4246d) {
            C1002u.m35252E(this.f4245c);
        }
        this.f4246d = z;
    }

    /* renamed from: a */
    public boolean m35287a(float f, float f2) {
        ViewParent a;
        if (!m35274c() || (a = m35285a(0)) == null) {
            return false;
        }
        return C1016x.m35172a(a, this.f4245c, f, f2);
    }

    /* renamed from: a */
    public boolean m35286a(float f, float f2, boolean z) {
        ViewParent a;
        if (!m35274c() || (a = m35285a(0)) == null) {
            return false;
        }
        return C1016x.m35171a(a, this.f4245c, f, f2, z);
    }

    /* renamed from: a */
    public boolean m35284a(int i, int i2) {
        if (m35276b(i2)) {
            return true;
        }
        if (!m35274c()) {
            return false;
        }
        View view = this.f4245c;
        for (ViewParent parent = this.f4245c.getParent(); parent != null; parent = parent.getParent()) {
            if (C1016x.m35166b(parent, view, this.f4245c, i, i2)) {
                m35279a(i2, parent);
                C1016x.m35167a(parent, view, this.f4245c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: a */
    public boolean m35283a(int i, int i2, int i3, int i4, int[] iArr) {
        return m35275b(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: a */
    public boolean m35281a(int i, int i2, int[] iArr, int[] iArr2) {
        return m35280a(i, i2, iArr, iArr2, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
        if (r19[1] != 0) goto L_0x00c5;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m35280a(int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p042i.p054p.C0994m.m35280a(int, int, int[], int[], int):boolean");
    }

    /* renamed from: a */
    public final int[] m35288a() {
        if (this.f4247e == null) {
            this.f4247e = new int[2];
        }
        return this.f4247e;
    }

    /* renamed from: b */
    public boolean m35277b() {
        return m35276b(0);
    }

    /* renamed from: b */
    public boolean m35276b(int i) {
        return m35285a(i) != null;
    }

    /* renamed from: b */
    public final boolean m35275b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent a;
        int i6;
        int i7;
        if (!m35274c() || (a = m35285a(i5)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.f4245c.getLocationInWindow(iArr);
                i7 = iArr[0];
                i6 = iArr[1];
            } else {
                i7 = 0;
                i6 = 0;
            }
            if (iArr2 == null) {
                iArr2 = m35288a();
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            C1016x.m35169a(a, this.f4245c, i, i2, i3, i4, i5, iArr2);
            if (iArr == null) {
                return true;
            }
            this.f4245c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i6;
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    /* renamed from: c */
    public boolean m35274c() {
        return this.f4246d;
    }

    /* renamed from: c */
    public boolean m35273c(int i) {
        return m35284a(i, 0);
    }

    /* renamed from: d */
    public void m35272d() {
        m35271d(0);
    }

    /* renamed from: d */
    public void m35271d(int i) {
        ViewParent a = m35285a(i);
        if (a != null) {
            C1016x.m35170a(a, this.f4245c, i);
            m35279a(i, (ViewParent) null);
        }
    }
}
