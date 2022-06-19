package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0470a;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.j */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/j.class */
public class C0483j extends WidgetRun {
    public C0483j(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    /* renamed from: q */
    private void m33899q(DependencyNode dependencyNode) {
        this.f2217h.f2199k.add(dependencyNode);
        dependencyNode.f2200l.add(this.f2217h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r0 < r9) goto L9;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33892a(androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2211b
            androidx.constraintlayout.solver.widgets.a r0 = (androidx.constraintlayout.solver.widgets.C0470a) r0
            r6 = r0
            r0 = r6
            int r0 = r0.m33956i1()
            r7 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2217h
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.DependencyNode> r0 = r0.f2200l
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = 0
            r8 = r0
            r0 = -1
            r9 = r0
        L20:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r5
            java.lang.Object r0 = r0.next()
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = (androidx.constraintlayout.solver.widgets.analyzer.DependencyNode) r0
            int r0 = r0.f2195g
            r10 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L48
            r0 = r9
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L4c
        L48:
            r0 = r10
            r11 = r0
        L4c:
            r0 = r11
            r9 = r0
            r0 = r8
            r1 = r10
            if (r0 >= r1) goto L20
            r0 = r10
            r8 = r0
            r0 = r11
            r9 = r0
            goto L20
        L62:
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L6e
            goto L7f
        L6e:
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2217h
            r1 = r8
            r2 = r6
            int r2 = r2.m33955j1()
            int r1 = r1 + r2
            r0.mo33914d(r1)
            goto L8d
        L7f:
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2217h
            r1 = r9
            r2 = r6
            int r2 = r2.m33955j1()
            int r1 = r1 + r2
            r0.mo33914d(r1)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0483j.mo33892a(androidx.constraintlayout.solver.widgets.analyzer.d):void");
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo33891d() {
        ConstraintWidget constraintWidget = this.f2211b;
        if (constraintWidget instanceof C0470a) {
            this.f2217h.f2190b = true;
            C0470a c0470a = (C0470a) constraintWidget;
            int m33956i1 = c0470a.m33956i1();
            boolean m33957h1 = c0470a.m33957h1();
            if (m33956i1 == 0) {
                this.f2217h.f2193e = DependencyNode.Type.LEFT;
                for (int i = 0; i < c0470a.f2386O0; i++) {
                    ConstraintWidget constraintWidget2 = c0470a.f2385N0[i];
                    if (m33957h1 || constraintWidget2.m34015T() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.f2136f.f2217h;
                        dependencyNode.f2199k.add(this.f2217h);
                        this.f2217h.f2200l.add(dependencyNode);
                    }
                }
                m33899q(this.f2211b.f2136f.f2217h);
                m33899q(this.f2211b.f2136f.f2218i);
            } else if (m33956i1 == 1) {
                this.f2217h.f2193e = DependencyNode.Type.RIGHT;
                for (int i2 = 0; i2 < c0470a.f2386O0; i2++) {
                    ConstraintWidget constraintWidget3 = c0470a.f2385N0[i2];
                    if (m33957h1 || constraintWidget3.m34015T() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.f2136f.f2218i;
                        dependencyNode2.f2199k.add(this.f2217h);
                        this.f2217h.f2200l.add(dependencyNode2);
                    }
                }
                m33899q(this.f2211b.f2136f.f2217h);
                m33899q(this.f2211b.f2136f.f2218i);
            } else if (m33956i1 == 2) {
                this.f2217h.f2193e = DependencyNode.Type.TOP;
                for (int i3 = 0; i3 < c0470a.f2386O0; i3++) {
                    ConstraintWidget constraintWidget4 = c0470a.f2385N0[i3];
                    if (m33957h1 || constraintWidget4.m34015T() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.f2138g.f2217h;
                        dependencyNode3.f2199k.add(this.f2217h);
                        this.f2217h.f2200l.add(dependencyNode3);
                    }
                }
                m33899q(this.f2211b.f2138g.f2217h);
                m33899q(this.f2211b.f2138g.f2218i);
            } else if (m33956i1 == 3) {
                this.f2217h.f2193e = DependencyNode.Type.BOTTOM;
                for (int i4 = 0; i4 < c0470a.f2386O0; i4++) {
                    ConstraintWidget constraintWidget5 = c0470a.f2385N0[i4];
                    if (m33957h1 || constraintWidget5.m34015T() != 8) {
                        DependencyNode dependencyNode4 = constraintWidget5.f2138g.f2218i;
                        dependencyNode4.f2199k.add(this.f2217h);
                        this.f2217h.f2200l.add(dependencyNode4);
                    }
                }
                m33899q(this.f2211b.f2138g.f2217h);
                m33899q(this.f2211b.f2138g.f2218i);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo33890e() {
        ConstraintWidget constraintWidget = this.f2211b;
        if (constraintWidget instanceof C0470a) {
            int m33956i1 = ((C0470a) constraintWidget).m33956i1();
            if (m33956i1 == 0 || m33956i1 == 1) {
                this.f2211b.m34002Z0(this.f2217h.f2195g);
            } else {
                this.f2211b.m34000a1(this.f2217h.f2195g);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo33889f() {
        this.f2212c = null;
        this.f2217h.m33948c();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo33888m() {
        return false;
    }
}
