package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* renamed from: androidx.core.view.m */
/* loaded from: classes-dex2jar.jar:androidx/core/view/m.class */
public final class C0917m {

    /* renamed from: a */
    public boolean f3749a;

    /* renamed from: b */
    private ViewParent f3750b;

    /* renamed from: c */
    private ViewParent f3751c;

    /* renamed from: d */
    private final View f3752d;

    /* renamed from: e */
    private int[] f3753e;

    public C0917m(View view) {
        this.f3752d = view;
    }

    /* renamed from: a */
    private void m44169a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f3750b = viewParent;
        } else if (i != 1) {
        } else {
            this.f3751c = viewParent;
        }
    }

    /* renamed from: a */
    private int[] m44178a() {
        if (this.f3753e == null) {
            this.f3753e = new int[2];
        }
        return this.f3753e;
    }

    /* renamed from: b */
    private boolean m44166b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m44165c;
        int i6;
        int i7;
        if (!this.f3749a || (m44165c = m44165c(i5)) == null) {
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
            this.f3752d.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            iArr2 = m44178a();
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        C0939x.m44054a(m44165c, this.f3752d, i, i2, i3, i4, i5, iArr2);
        if (iArr == null) {
            return true;
        }
        this.f3752d.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i6;
        iArr[1] = iArr[1] - i7;
        return true;
    }

    /* renamed from: c */
    private ViewParent m44165c(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f3751c;
            }
            return null;
        }
        return this.f3750b;
    }

    /* renamed from: a */
    public final void m44172a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m44166b(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    public final void m44168a(boolean z) {
        if (this.f3749a) {
            C0926v.m44073z(this.f3752d);
        }
        this.f3749a = z;
    }

    /* renamed from: a */
    public final boolean m44177a(float f, float f2) {
        ViewParent m44165c;
        if (!this.f3749a || (m44165c = m44165c(0)) == null) {
            return false;
        }
        return C0939x.m44056a(m44165c, this.f3752d, f, f2);
    }

    /* renamed from: a */
    public final boolean m44176a(float f, float f2, boolean z) {
        ViewParent m44165c;
        if (!this.f3749a || (m44165c = m44165c(0)) == null) {
            return false;
        }
        return C0939x.m44055a(m44165c, this.f3752d, f, f2, z);
    }

    /* renamed from: a */
    public final boolean m44175a(int i) {
        return m44165c(i) != null;
    }

    /* renamed from: a */
    public final boolean m44174a(int i, int i2) {
        if (m44175a(i2)) {
            return true;
        }
        if (!this.f3749a) {
            return false;
        }
        View view = this.f3752d;
        for (ViewParent parent = this.f3752d.getParent(); parent != null; parent = parent.getParent()) {
            if (C0939x.m44052a(parent, view, this.f3752d, i, i2)) {
                m44169a(i2, parent);
                View view2 = this.f3752d;
                if (parent instanceof AbstractC0919o) {
                    ((AbstractC0919o) parent).mo44010b(view, view2, i, i2);
                    return true;
                } else if (i2 != 0) {
                    return true;
                } else {
                    if (Build.VERSION.SDK_INT < 21) {
                        if (!(parent instanceof AbstractC0918n)) {
                            return true;
                        }
                        ((AbstractC0918n) parent).onNestedScrollAccepted(view, view2, i);
                        return true;
                    }
                    try {
                        parent.onNestedScrollAccepted(view, view2, i);
                        return true;
                    } catch (AbstractMethodError e) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e);
                        return true;
                    }
                }
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m44173a(int i, int i2, int i3, int i4, int[] iArr) {
        return m44166b(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: a */
    public final boolean m44171a(int i, int i2, int[] iArr, int[] iArr2) {
        return m44170a(i, i2, iArr, iArr2, 0);
    }

    /* renamed from: a */
    public final boolean m44170a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent m44165c;
        int i4;
        int i5;
        if (!this.f3749a || (m44165c = m44165c(i3)) == null) {
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
            this.f3752d.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i4 = iArr2[1];
        } else {
            i5 = 0;
            i4 = 0;
        }
        int[] iArr3 = iArr;
        if (iArr == null) {
            iArr3 = m44178a();
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        C0939x.m44053a(m44165c, this.f3752d, i, i2, iArr3, i3);
        if (iArr2 != null) {
            this.f3752d.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i4;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    /* renamed from: b */
    public final void m44167b(int i) {
        ViewParent m44165c = m44165c(i);
        if (m44165c != null) {
            View view = this.f3752d;
            if (m44165c instanceof AbstractC0919o) {
                ((AbstractC0919o) m44165c).mo44023a(view, i);
            } else if (i == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        m44165c.onStopNestedScroll(view);
                    } catch (AbstractMethodError e) {
                        Log.e("ViewParentCompat", "ViewParent " + m44165c + " does not implement interface method onStopNestedScroll", e);
                    }
                } else if (m44165c instanceof AbstractC0918n) {
                    ((AbstractC0918n) m44165c).onStopNestedScroll(view);
                }
            }
            m44169a(i, (ViewParent) null);
        }
    }
}
