package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.Constraints;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import z5;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$e.class */
public class MotionLayout$e {

    /* renamed from: a */
    public a6 f642a = new a6();

    /* renamed from: b */
    public a6 f643b = new a6();

    /* renamed from: c */
    public C0012a7 f644c = null;

    /* renamed from: d */
    public C0012a7 f645d = null;

    /* renamed from: e */
    public int f646e;

    /* renamed from: f */
    public int f647f;

    /* renamed from: g */
    public final /* synthetic */ MotionLayout f648g;

    public MotionLayout$e(MotionLayout motionLayout) {
        this.f648g = motionLayout;
    }

    /* renamed from: a */
    public void m6894a() {
        int i;
        int childCount = this.f648g.getChildCount();
        this.f648g.l.clear();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                View childAt = this.f648g.getChildAt(i2);
                this.f648g.l.put(childAt, new C1345e5(childAt));
                i2++;
            }
        }
        for (i = 0; i < childCount; i++) {
            View childAt2 = this.f648g.getChildAt(i);
            C1345e5 c1345e5 = (C1345e5) this.f648g.l.get(childAt2);
            if (c1345e5 != null) {
                if (this.f644c != null) {
                    z5 m6892c = m6892c(this.f642a, childAt2);
                    if (m6892c != null) {
                        c1345e5.m2222t(m6892c, this.f644c);
                    } else if (this.f648g.x != 0) {
                        Log.e("MotionLayout", r4.a() + "no widget for  " + r4.c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
                if (this.f645d != null) {
                    z5 m6892c2 = m6892c(this.f643b, childAt2);
                    if (m6892c2 != null) {
                        c1345e5.m2225q(m6892c2, this.f645d);
                    } else if (this.f648g.x != 0) {
                        Log.e("MotionLayout", r4.a() + "no widget for  " + r4.c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public void m6893b(a6 a6Var, a6 a6Var2) {
        ArrayList e1 = a6Var.e1();
        HashMap hashMap = new HashMap();
        hashMap.put(a6Var, a6Var2);
        a6Var2.e1().clear();
        a6Var2.m(a6Var, hashMap);
        Iterator it = e1.iterator();
        while (it.hasNext()) {
            z5 z5Var = (z5) it.next();
            z5 v5Var = z5Var instanceof v5 ? new v5() : z5Var instanceof c6 ? new c6() : z5Var instanceof b6 ? new b6() : z5Var instanceof AbstractC1277d6 ? new e6() : new z5();
            a6Var2.a(v5Var);
            hashMap.put(z5Var, v5Var);
        }
        Iterator it2 = e1.iterator();
        while (it2.hasNext()) {
            z5 z5Var2 = (z5) it2.next();
            ((z5) hashMap.get(z5Var2)).m(z5Var2, hashMap);
        }
    }

    /* renamed from: c */
    public z5 m6892c(a6 a6Var, View view) {
        if (a6Var.t() == view) {
            return a6Var;
        }
        ArrayList e1 = a6Var.e1();
        int size = e1.size();
        for (int i = 0; i < size; i++) {
            z5 z5Var = (z5) e1.get(i);
            if (z5Var.t() == view) {
                return z5Var;
            }
        }
        return null;
    }

    /* renamed from: d */
    public void m6891d(a6 a6Var, C0012a7 c0012a7, C0012a7 c0012a72) {
        this.f644c = c0012a7;
        this.f645d = c0012a72;
        this.f642a = new a6();
        this.f643b = new a6();
        this.f642a.J1(MotionLayout.u(this.f648g).w1());
        this.f643b.J1(MotionLayout.w(this.f648g).w1());
        this.f642a.h1();
        this.f643b.h1();
        m6893b(MotionLayout.x(this.f648g), this.f642a);
        m6893b(MotionLayout.y(this.f648g), this.f643b);
        if (this.f648g.p > 0.5d) {
            if (c0012a7 != null) {
                m6886i(this.f642a, c0012a7);
            }
            m6886i(this.f643b, c0012a72);
        } else {
            m6886i(this.f643b, c0012a72);
            if (c0012a7 != null) {
                m6886i(this.f642a, c0012a7);
            }
        }
        this.f642a.L1(MotionLayout.z(this.f648g));
        this.f642a.N1();
        this.f643b.L1(MotionLayout.A(this.f648g));
        this.f643b.N1();
        ViewGroup.LayoutParams layoutParams = this.f648g.getLayoutParams();
        if (layoutParams != null) {
            if (layoutParams.width == -2) {
                a6 a6Var2 = this.f642a;
                z5.b bVar = z5.b.b;
                a6Var2.D0(bVar);
                this.f643b.D0(bVar);
            }
            if (layoutParams.height != -2) {
                return;
            }
            a6 a6Var3 = this.f642a;
            z5.b bVar2 = z5.b.b;
            a6Var3.U0(bVar2);
            this.f643b.U0(bVar2);
        }
    }

    /* renamed from: e */
    public boolean m6890e(int i, int i2) {
        return (i == this.f646e && i2 == this.f647f) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x01b6, code lost:
        if (r0 == 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01e3, code lost:
        if (r0 == 0) goto L46;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6889f(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout$e.m6889f(int, int):void");
    }

    /* renamed from: g */
    public void m6888g() {
        m6889f(MotionLayout.C(this.f648g), MotionLayout.k(this.f648g));
        MotionLayout.l(this.f648g);
    }

    /* renamed from: h */
    public void m6887h(int i, int i2) {
        this.f646e = i;
        this.f647f = i2;
    }

    /* renamed from: i */
    public final void m6886i(a6 a6Var, C0012a7 c0012a7) {
        SparseArray<z5> sparseArray = new SparseArray<>();
        Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
        sparseArray.clear();
        sparseArray.put(0, a6Var);
        sparseArray.put(this.f648g.getId(), a6Var);
        Iterator it = a6Var.e1().iterator();
        while (it.hasNext()) {
            z5 z5Var = (z5) it.next();
            sparseArray.put(((View) z5Var.t()).getId(), z5Var);
        }
        Iterator it2 = a6Var.e1().iterator();
        while (it2.hasNext()) {
            z5 z5Var2 = (z5) it2.next();
            Barrier barrier = (View) z5Var2.t();
            c0012a7.m7370g(barrier.getId(), layoutParams);
            z5Var2.Y0(c0012a7.m7353x(barrier.getId()));
            z5Var2.z0(c0012a7.m7358s(barrier.getId()));
            if (barrier instanceof ConstraintHelper) {
                c0012a7.m7372e((ConstraintHelper) barrier, z5Var2, layoutParams, sparseArray);
                if (barrier instanceof Barrier) {
                    barrier.m6846v();
                }
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.resolveLayoutDirection(this.f648g.getLayoutDirection());
            } else {
                layoutParams.resolveLayoutDirection(0);
            }
            MotionLayout.B(this.f648g, false, barrier, z5Var2, layoutParams, sparseArray);
            z5Var2.X0(c0012a7.m7354w(barrier.getId()) == 1 ? barrier.getVisibility() : c0012a7.m7355v(barrier.getId()));
        }
        Iterator it3 = a6Var.e1().iterator();
        while (it3.hasNext()) {
            g6 g6Var = (z5) it3.next();
            if (g6Var instanceof g6) {
                ConstraintHelper constraintHelper = (ConstraintHelper) g6Var.t();
                g6 g6Var2 = (AbstractC1277d6) g6Var;
                constraintHelper.m6848t(a6Var, g6Var2, sparseArray);
                g6Var2.h1();
            }
        }
    }
}
