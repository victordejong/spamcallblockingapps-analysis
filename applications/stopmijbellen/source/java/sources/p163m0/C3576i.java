package p163m0;

import android.view.View;
import android.view.ViewParent;
import java.util.Objects;
/* renamed from: m0.i */
/* loaded from: classes-dex2jar.jar:m0/i.class */
public class C3576i {

    /* renamed from: a */
    public ViewParent f11769a;

    /* renamed from: b */
    public ViewParent f11770b;

    /* renamed from: c */
    public final View f11771c;

    /* renamed from: d */
    public boolean f11772d;

    /* renamed from: e */
    public int[] f11773e;

    public C3576i(View view) {
        this.f11771c = view;
    }

    /* renamed from: a */
    public boolean m2138a(float f, float f2, boolean z) {
        boolean z2 = false;
        if (this.f11772d) {
            ViewParent m2132g = m2132g(0);
            z2 = false;
            if (m2132g != null) {
                try {
                    z2 = m2132g.onNestedFling(this.f11771c, f, f2, z);
                } catch (AbstractMethodError e) {
                    Objects.toString(m2132g);
                    z2 = false;
                }
            }
        }
        return z2;
    }

    /* renamed from: b */
    public boolean m2137b(float f, float f2) {
        boolean z = false;
        if (this.f11772d) {
            ViewParent m2132g = m2132g(0);
            z = false;
            if (m2132g != null) {
                try {
                    z = m2132g.onNestedPreFling(this.f11771c, f, f2);
                } catch (AbstractMethodError e) {
                    Objects.toString(m2132g);
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public boolean m2136c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        boolean z;
        int i4;
        int i5;
        if (this.f11772d) {
            ViewParent m2132g = m2132g(i3);
            if (m2132g == null) {
                return false;
            }
            if (i != 0 || i2 != 0) {
                if (iArr2 != null) {
                    this.f11771c.getLocationInWindow(iArr2);
                    i4 = iArr2[0];
                    i5 = iArr2[1];
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                if (iArr == null) {
                    if (this.f11773e == null) {
                        this.f11773e = new int[2];
                    }
                    iArr = this.f11773e;
                }
                iArr[0] = 0;
                iArr[1] = 0;
                View view = this.f11771c;
                if (m2132g instanceof AbstractC3577j) {
                    ((AbstractC3577j) m2132g).mo443j(view, i, i2, iArr, i3);
                } else if (i3 == 0) {
                    try {
                        m2132g.onNestedPreScroll(view, i, i2, iArr);
                    } catch (AbstractMethodError e) {
                        Objects.toString(m2132g);
                    }
                }
                if (iArr2 != null) {
                    this.f11771c.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i4;
                    iArr2[1] = iArr2[1] - i5;
                }
                z = true;
                if (iArr[0] == 0) {
                    if (iArr[1] != 0) {
                        z = true;
                    }
                }
                return z;
            } else if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: d */
    public void m2135d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m2133f(i, i2, i3, i4, null, i5, iArr2);
    }

    /* renamed from: e */
    public boolean m2134e(int i, int i2, int i3, int i4, int[] iArr) {
        return m2133f(i, i2, i3, i4, iArr, 0, null);
    }

    /* renamed from: f */
    public final boolean m2133f(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent m2132g;
        int i6;
        int i7;
        if (!this.f11772d || (m2132g = m2132g(i5)) == null) {
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
            this.f11771c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            if (this.f11773e == null) {
                this.f11773e = new int[2];
            }
            iArr2 = this.f11773e;
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        View view = this.f11771c;
        if (m2132g instanceof AbstractC3578k) {
            ((AbstractC3578k) m2132g).mo441m(view, i, i2, i3, i4, i5, iArr2);
        } else {
            iArr2[0] = iArr2[0] + i3;
            iArr2[1] = iArr2[1] + i4;
            if (m2132g instanceof AbstractC3577j) {
                ((AbstractC3577j) m2132g).mo440n(view, i, i2, i3, i4, i5);
            } else if (i5 == 0) {
                try {
                    m2132g.onNestedScroll(view, i, i2, i3, i4);
                } catch (AbstractMethodError e) {
                    Objects.toString(m2132g);
                }
            }
        }
        if (iArr == null) {
            return true;
        }
        this.f11771c.getLocationInWindow(iArr);
        iArr[0] = iArr[0] - i7;
        iArr[1] = iArr[1] - i6;
        return true;
    }

    /* renamed from: g */
    public final ViewParent m2132g(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f11770b;
            }
            return null;
        }
        return this.f11769a;
    }

    /* renamed from: h */
    public boolean m2131h(int i) {
        return m2132g(i) != null;
    }

    /* renamed from: i */
    public boolean m2130i(int i, int i2) {
        boolean z;
        if (m2132g(i2) != null) {
            return true;
        }
        if (!this.f11772d) {
            return false;
        }
        View view = this.f11771c;
        for (ViewParent parent = this.f11771c.getParent(); parent != null; parent = parent.getParent()) {
            View view2 = this.f11771c;
            boolean z2 = parent instanceof AbstractC3577j;
            if (z2) {
                z = ((AbstractC3577j) parent).mo439o(view, view2, i, i2);
            } else {
                if (i2 == 0) {
                    try {
                        z = parent.onStartNestedScroll(view, view2, i);
                    } catch (AbstractMethodError e) {
                        Objects.toString(parent);
                    }
                }
                z = false;
            }
            if (z) {
                if (i2 == 0) {
                    this.f11769a = parent;
                } else if (i2 == 1) {
                    this.f11770b = parent;
                }
                View view3 = this.f11771c;
                if (z2) {
                    ((AbstractC3577j) parent).mo445h(view, view3, i, i2);
                    return true;
                } else if (i2 != 0) {
                    return true;
                } else {
                    try {
                        parent.onNestedScrollAccepted(view, view3, i);
                        return true;
                    } catch (AbstractMethodError e2) {
                        Objects.toString(parent);
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

    /* renamed from: j */
    public void m2129j(int i) {
        ViewParent m2132g = m2132g(i);
        if (m2132g != null) {
            View view = this.f11771c;
            if (m2132g instanceof AbstractC3577j) {
                ((AbstractC3577j) m2132g).mo444i(view, i);
            } else if (i == 0) {
                try {
                    m2132g.onStopNestedScroll(view);
                } catch (AbstractMethodError e) {
                    Objects.toString(m2132g);
                }
            }
            if (i == 0) {
                this.f11769a = null;
            } else if (i != 1) {
            } else {
                this.f11770b = null;
            }
        }
    }
}
