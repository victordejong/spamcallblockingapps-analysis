package androidx.core.view;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:androidx/core/view/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2004a;

    /* renamed from: b  reason: collision with root package name */
    private ViewParent f2005b;

    /* renamed from: c  reason: collision with root package name */
    private ViewParent f2006c;

    /* renamed from: d  reason: collision with root package name */
    private final View f2007d;
    private int[] e;

    public m(View view) {
        this.f2007d = view;
    }

    private void a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f2005b = viewParent;
        } else if (i == 1) {
            this.f2006c = viewParent;
        }
    }

    private int[] a() {
        if (this.e == null) {
            this.e = new int[2];
        }
        return this.e;
    }

    private boolean b(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent c2;
        int i6;
        int i7;
        if (!this.f2004a || (c2 = c(i5)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr != null) {
                this.f2007d.getLocationInWindow(iArr);
                i6 = iArr[0];
                i7 = iArr[1];
            } else {
                i6 = 0;
                i7 = 0;
            }
            if (iArr2 == null) {
                iArr2 = a();
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            x.a(c2, this.f2007d, i, i2, i3, i4, i5, iArr2);
            if (iArr == null) {
                return true;
            }
            this.f2007d.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
            return true;
        } else if (iArr == null) {
            return false;
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
            return false;
        }
    }

    private ViewParent c(int i) {
        if (i == 0) {
            return this.f2005b;
        }
        if (i != 1) {
            return null;
        }
        return this.f2006c;
    }

    public final void a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        b(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void a(boolean z) {
        if (this.f2004a) {
            v.z(this.f2007d);
        }
        this.f2004a = z;
    }

    public final boolean a(float f, float f2) {
        ViewParent c2;
        if (!this.f2004a || (c2 = c(0)) == null) {
            return false;
        }
        return x.a(c2, this.f2007d, f, f2);
    }

    public final boolean a(float f, float f2, boolean z) {
        ViewParent c2;
        if (!this.f2004a || (c2 = c(0)) == null) {
            return false;
        }
        return x.a(c2, this.f2007d, f, f2, z);
    }

    public final boolean a(int i) {
        return c(i) != null;
    }

    public final boolean a(int i, int i2) {
        if (a(i2)) {
            return true;
        }
        if (!this.f2004a) {
            return false;
        }
        View view = this.f2007d;
        for (ViewParent parent = this.f2007d.getParent(); parent != null; parent = parent.getParent()) {
            if (x.a(parent, view, this.f2007d, i, i2)) {
                a(i2, parent);
                View view2 = this.f2007d;
                if (parent instanceof o) {
                    ((o) parent).b(view, view2, i, i2);
                    return true;
                } else if (i2 != 0) {
                    return true;
                } else {
                    if (Build.VERSION.SDK_INT >= 21) {
                        try {
                            parent.onNestedScrollAccepted(view, view2, i);
                            return true;
                        } catch (AbstractMethodError e) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e);
                            return true;
                        }
                    } else if (!(parent instanceof n)) {
                        return true;
                    } else {
                        ((n) parent).onNestedScrollAccepted(view, view2, i);
                        return true;
                    }
                }
            } else {
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public final boolean a(int i, int i2, int i3, int i4, int[] iArr) {
        return b(i, i2, i3, i4, iArr, 0, null);
    }

    public final boolean a(int i, int i2, int[] iArr, int[] iArr2) {
        return a(i, i2, iArr, iArr2, 0);
    }

    public final boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent c2;
        int i4;
        int i5;
        if (!this.f2004a || (c2 = c(i3)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.f2007d.getLocationInWindow(iArr2);
                i5 = iArr2[0];
                i4 = iArr2[1];
            } else {
                i5 = 0;
                i4 = 0;
            }
            int[] iArr3 = iArr;
            if (iArr == null) {
                iArr3 = a();
            }
            iArr3[0] = 0;
            iArr3[1] = 0;
            x.a(c2, this.f2007d, i, i2, iArr3, i3);
            if (iArr2 != null) {
                this.f2007d.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i5;
                iArr2[1] = iArr2[1] - i4;
            }
            return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
        } else if (iArr2 == null) {
            return false;
        } else {
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
    }

    public final void b(int i) {
        ViewParent c2 = c(i);
        if (c2 != null) {
            View view = this.f2007d;
            if (c2 instanceof o) {
                ((o) c2).a(view, i);
            } else if (i == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        c2.onStopNestedScroll(view);
                    } catch (AbstractMethodError e) {
                        Log.e("ViewParentCompat", "ViewParent " + c2 + " does not implement interface method onStopNestedScroll", e);
                    }
                } else if (c2 instanceof n) {
                    ((n) c2).onStopNestedScroll(view);
                }
            }
            a(i, (ViewParent) null);
        }
    }
}
