package p1727n3.p1807k.p1821i;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.view.ViewParent;
/* renamed from: n3.k.i.j */
/* loaded from: classes-dex2jar.jar:n3/k/i/j.class */
public class C26605j {

    /* renamed from: a */
    public ViewParent f74494a;

    /* renamed from: b */
    public ViewParent f74495b;

    /* renamed from: c */
    public final View f74496c;

    /* renamed from: d */
    public boolean f74497d;

    /* renamed from: e */
    public int[] f74498e;

    public C26605j(View view) {
        this.f74496c = view;
    }

    /* renamed from: a */
    public boolean m1599a(float f, float f2, boolean z) {
        ViewParent m1594f;
        if (!this.f74497d || (m1594f = m1594f(0)) == null) {
            return false;
        }
        return MediaSessionCompat.m43251b1(m1594f, this.f74496c, f, f2, z);
    }

    /* renamed from: b */
    public boolean m1598b(float f, float f2) {
        ViewParent m1594f;
        if (!this.f74497d || (m1594f = m1594f(0)) == null) {
            return false;
        }
        return MediaSessionCompat.m43248c1(m1594f, this.f74496c, f, f2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dd, code lost:
        if (r20[1] != 0) goto L31;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1597c(int r8, int r9, int[] r10, int[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1821i.C26605j.m1597c(int, int, int[], int[], int):boolean");
    }

    /* renamed from: d */
    public boolean m1596d(int i, int i2, int i3, int i4, int[] iArr) {
        return m1595e(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: e */
    public final boolean m1595e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m1594f;
        int i6;
        int i7;
        if (!this.f74497d || (m1594f = m1594f(i5)) == null) {
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
            this.f74496c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            if (this.f74498e == null) {
                this.f74498e = new int[2];
            }
            iArr2 = this.f74498e;
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        MediaSessionCompat.m43242e1(m1594f, this.f74496c, i, i2, i3, i4, i5, iArr2);
        if (iArr == null) {
            return true;
        }
        this.f74496c.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i7;
        iArr[1] = iArr[1] - i6;
        return true;
    }

    /* renamed from: f */
    public final ViewParent m1594f(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f74495b;
            }
            return null;
        }
        return this.f74494a;
    }

    /* renamed from: g */
    public boolean m1593g(int i) {
        return m1594f(i) != null;
    }

    /* renamed from: h */
    public boolean m1592h(int i, int i2) {
        boolean z;
        if (m1594f(i2) != null) {
            return true;
        }
        if (!this.f74497d) {
            return false;
        }
        View view = this.f74496c;
        for (ViewParent parent = this.f74496c.getParent(); parent != null; parent = parent.getParent()) {
            View view2 = this.f74496c;
            boolean z2 = parent instanceof AbstractC26606k;
            if (z2) {
                z = ((AbstractC26606k) parent).m1590A0(view, view2, i, i2);
            } else {
                if (i2 == 0) {
                    try {
                        z = parent.onStartNestedScroll(view, view2, i);
                    } catch (AbstractMethodError e) {
                        String str = "ViewParent " + parent + " does not implement interface method onStartNestedScroll";
                    }
                }
                z = false;
            }
            if (z) {
                if (i2 == 0) {
                    this.f74494a = parent;
                } else if (i2 == 1) {
                    this.f74495b = parent;
                }
                View view3 = this.f74496c;
                if (z2) {
                    ((AbstractC26606k) parent).m1587t(view, view3, i, i2);
                    return true;
                } else if (i2 != 0) {
                    return true;
                } else {
                    try {
                        parent.onNestedScrollAccepted(view, view3, i);
                        return true;
                    } catch (AbstractMethodError e2) {
                        String str2 = "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted";
                        return true;
                    }
                }
            }
            if (parent instanceof View) {
                view = parent;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m1591i(int i) {
        ViewParent m1594f = m1594f(i);
        if (m1594f != null) {
            View view = this.f74496c;
            if (m1594f instanceof AbstractC26606k) {
                ((AbstractC26606k) m1594f).m1586u(view, i);
            } else if (i == 0) {
                try {
                    m1594f.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    String str = "ViewParent " + m1594f + " does not implement interface method onStopNestedScroll";
                }
            }
            if (i == 0) {
                this.f74494a = null;
            } else if (i != 1) {
            } else {
                this.f74495b = null;
            }
        }
    }
}
