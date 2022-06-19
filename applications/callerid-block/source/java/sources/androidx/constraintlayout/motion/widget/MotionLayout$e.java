package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.AbstractC0213g;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.a;
import androidx.constraintlayout.solver.widgets.d;
import androidx.constraintlayout.solver.widgets.e;
import androidx.constraintlayout.solver.widgets.f;
import androidx.constraintlayout.solver.widgets.h;
import androidx.constraintlayout.solver.widgets.j;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.Constraints;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionLayout$e.class */
class MotionLayout$e {

    /* renamed from: a */
    d f824a = new d();

    /* renamed from: b */
    d f825b = new d();

    /* renamed from: c */
    C0221b f826c = null;

    /* renamed from: d */
    C0221b f827d = null;

    /* renamed from: e */
    int f828e;

    /* renamed from: f */
    int f829f;

    /* renamed from: g */
    final /* synthetic */ MotionLayout f830g;

    MotionLayout$e(MotionLayout motionLayout) {
        this.f830g = motionLayout;
    }

    /* renamed from: i */
    private void m14302i(d dVar, C0221b c0221b) {
        SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
        Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
        sparseArray.clear();
        sparseArray.put(0, dVar);
        sparseArray.put(this.f830g.getId(), dVar);
        Iterator it = dVar.L0().iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            sparseArray.put(((View) constraintWidget.m13941r()).getId(), constraintWidget);
        }
        Iterator it2 = dVar.L0().iterator();
        while (it2.hasNext()) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) it2.next();
            Barrier barrier = (View) constraintWidget2.m13941r();
            c0221b.m13802g(barrier.getId(), layoutParams);
            constraintWidget2.m13998F0(c0221b.m13787v(barrier.getId()));
            constraintWidget2.m13958i0(c0221b.m13792q(barrier.getId()));
            if (barrier instanceof ConstraintHelper) {
                c0221b.m13804e((ConstraintHelper) barrier, constraintWidget2, layoutParams, sparseArray);
                if (barrier instanceof Barrier) {
                    barrier.m13846u();
                }
            }
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.resolveLayoutDirection(this.f830g.getLayoutDirection());
            } else {
                layoutParams.resolveLayoutDirection(0);
            }
            MotionLayout.R(this.f830g, false, barrier, constraintWidget2, layoutParams, sparseArray);
            constraintWidget2.m14000E0(c0221b.m13788u(barrier.getId()) == 1 ? barrier.getVisibility() : c0221b.m13789t(barrier.getId()));
        }
        Iterator it3 = dVar.L0().iterator();
        while (it3.hasNext()) {
            j jVar = (ConstraintWidget) it3.next();
            if (jVar instanceof j) {
                ConstraintHelper constraintHelper = (ConstraintHelper) jVar.m13941r();
                j jVar2 = (AbstractC0213g) jVar;
                constraintHelper.m13848s(dVar, jVar2, sparseArray);
                jVar2.M0();
            }
        }
    }

    /* renamed from: a */
    public void m14310a() {
        int i;
        int childCount = this.f830g.getChildCount();
        this.f830g.B.clear();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                View childAt = this.f830g.getChildAt(i2);
                this.f830g.B.put(childAt, new C0185n(childAt));
                i2++;
            }
        }
        for (i = 0; i < childCount; i++) {
            View childAt2 = this.f830g.getChildAt(i);
            C0185n c0185n = (C0185n) this.f830g.B.get(childAt2);
            if (c0185n != null) {
                if (this.f826c != null) {
                    ConstraintWidget m14308c = m14308c(this.f824a, childAt2);
                    if (m14308c != null) {
                        c0185n.m14221t(m14308c, this.f826c);
                    } else if (this.f830g.N != 0) {
                        Log.e("MotionLayout", C0175a.m14284a() + "no widget for  " + C0175a.m14282c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
                if (this.f827d != null) {
                    ConstraintWidget m14308c2 = m14308c(this.f825b, childAt2);
                    if (m14308c2 != null) {
                        c0185n.m14224q(m14308c2, this.f827d);
                    } else if (this.f830g.N != 0) {
                        Log.e("MotionLayout", C0175a.m14284a() + "no widget for  " + C0175a.m14282c(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
            }
        }
    }

    /* renamed from: b */
    void m14309b(d dVar, d dVar2) {
        ArrayList L0 = dVar.L0();
        HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
        hashMap.put(dVar, dVar2);
        dVar2.L0().clear();
        dVar2.m13953l(dVar, hashMap);
        Iterator it = L0.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            ConstraintWidget aVar = constraintWidget instanceof a ? new a() : constraintWidget instanceof f ? new f() : constraintWidget instanceof e ? new e() : constraintWidget instanceof AbstractC0213g ? new h() : new ConstraintWidget();
            dVar2.a(aVar);
            hashMap.put(constraintWidget, aVar);
        }
        Iterator it2 = L0.iterator();
        while (it2.hasNext()) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) it2.next();
            hashMap.get(constraintWidget2).m13953l(constraintWidget2, hashMap);
        }
    }

    /* renamed from: c */
    ConstraintWidget m14308c(d dVar, View view) {
        if (dVar.m13941r() == view) {
            return dVar;
        }
        ArrayList L0 = dVar.L0();
        int size = L0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) L0.get(i);
            if (constraintWidget.m13941r() == view) {
                return constraintWidget;
            }
        }
        return null;
    }

    /* renamed from: d */
    void m14307d(d dVar, C0221b c0221b, C0221b c0221b2) {
        this.f826c = c0221b;
        this.f827d = c0221b2;
        this.f824a = new d();
        this.f825b = new d();
        this.f824a.h1(MotionLayout.K(this.f830g).W0());
        this.f825b.h1(MotionLayout.M(this.f830g).W0());
        this.f824a.O0();
        this.f825b.O0();
        m14309b(MotionLayout.N(this.f830g), this.f824a);
        m14309b(MotionLayout.O(this.f830g), this.f825b);
        if (this.f830g.F > 0.5d) {
            if (c0221b != null) {
                m14302i(this.f824a, c0221b);
            }
            m14302i(this.f825b, c0221b2);
        } else {
            m14302i(this.f825b, c0221b2);
            if (c0221b != null) {
                m14302i(this.f824a, c0221b);
            }
        }
        this.f824a.j1(MotionLayout.P(this.f830g));
        this.f824a.l1();
        this.f825b.j1(MotionLayout.Q(this.f830g));
        this.f825b.l1();
        ViewGroup.LayoutParams layoutParams = this.f830g.getLayoutParams();
        if (layoutParams != null) {
            if (layoutParams.width == -2) {
                d dVar2 = this.f824a;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                dVar2.m13950m0(dimensionBehaviour);
                this.f825b.m13950m0(dimensionBehaviour);
            }
            if (layoutParams.height != -2) {
                return;
            }
            d dVar3 = this.f824a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            dVar3.m14006B0(dimensionBehaviour2);
            this.f825b.m14006B0(dimensionBehaviour2);
        }
    }

    /* renamed from: e */
    public boolean m14306e(int i, int i2) {
        return (i == this.f828e && i2 == this.f829f) ? false : true;
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
    public void m14305f(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout$e.m14305f(int, int):void");
    }

    /* renamed from: g */
    public void m14304g() {
        m14305f(MotionLayout.S(this.f830g), MotionLayout.A(this.f830g));
        MotionLayout.B(this.f830g);
    }

    /* renamed from: h */
    public void m14303h(int i, int i2) {
        this.f828e = i;
        this.f829f = i2;
    }
}
