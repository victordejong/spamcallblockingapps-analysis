package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.AbstractC0498g;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.k */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/k.class */
public class C0484k extends WidgetRun {

    /* renamed from: k */
    private static int[] f2255k = new int[2];

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/k$a.class */
    static /* synthetic */ class C0485a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2256a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2256a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2256a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2256a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C0484k(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f2217h.f2193e = DependencyNode.Type.LEFT;
        this.f2218i.f2193e = DependencyNode.Type.RIGHT;
        this.f2215f = 0;
    }

    /* renamed from: q */
    private void m33898q(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else if (i5 != 1) {
                return;
            } else {
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 > i7) {
        } else {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x0529, code lost:
        if (r0 != 1) goto L142;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33892a(androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d r10) {
        /*
            Method dump skipped, instructions count: 2050
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0484k.mo33892a(androidx.constraintlayout.solver.widgets.analyzer.d):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo33891d() {
        ConstraintWidget m34031L;
        ConstraintWidget m34031L2;
        ConstraintWidget constraintWidget = this.f2211b;
        if (constraintWidget.f2128b) {
            this.f2214e.mo33914d(constraintWidget.m34013U());
        }
        if (!this.f2214e.f2198j) {
            ConstraintWidget.DimensionBehaviour m34051B = this.f2211b.m34051B();
            this.f2213d = m34051B;
            if (m34051B != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (m34051B == dimensionBehaviour && (((m34031L2 = this.f2211b.m34031L()) != null && m34031L2.m34051B() == ConstraintWidget.DimensionBehaviour.FIXED) || m34031L2.m34051B() == dimensionBehaviour)) {
                    int m34013U = m34031L2.m34013U();
                    int m34069f = this.f2211b.f2108K.m34069f();
                    int m34069f2 = this.f2211b.f2112M.m34069f();
                    m33947b(this.f2217h, m34031L2.f2136f.f2217h, this.f2211b.f2108K.m34069f());
                    m33947b(this.f2218i, m34031L2.f2136f.f2218i, -this.f2211b.f2112M.m34069f());
                    this.f2214e.mo33914d((m34013U - m34069f) - m34069f2);
                    return;
                } else if (this.f2213d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2214e.mo33914d(this.f2211b.m34013U());
                }
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2213d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour2 == dimensionBehaviour3 && (((m34031L = this.f2211b.m34031L()) != null && m34031L.m34051B() == ConstraintWidget.DimensionBehaviour.FIXED) || m34031L.m34051B() == dimensionBehaviour3)) {
                m33947b(this.f2217h, m34031L.f2136f.f2217h, this.f2211b.f2108K.m34069f());
                m33947b(this.f2218i, m34031L.f2136f.f2218i, -this.f2211b.f2112M.m34069f());
                return;
            }
        }
        C0479f c0479f = this.f2214e;
        if (c0479f.f2198j) {
            ConstraintWidget constraintWidget2 = this.f2211b;
            if (constraintWidget2.f2128b) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.f2119S;
                if (constraintAnchorArr[0].f2072f != null && constraintAnchorArr[1].f2072f != null) {
                    if (constraintWidget2.m33997c0()) {
                        this.f2217h.f2194f = this.f2211b.f2119S[0].m34069f();
                        this.f2218i.f2194f = -this.f2211b.f2119S[1].m34069f();
                        return;
                    }
                    DependencyNode m33944h = m33944h(this.f2211b.f2119S[0]);
                    if (m33944h != null) {
                        m33947b(this.f2217h, m33944h, this.f2211b.f2119S[0].m34069f());
                    }
                    DependencyNode m33944h2 = m33944h(this.f2211b.f2119S[1]);
                    if (m33944h2 != null) {
                        m33947b(this.f2218i, m33944h2, -this.f2211b.f2119S[1].m34069f());
                    }
                    this.f2217h.f2190b = true;
                    this.f2218i.f2190b = true;
                    return;
                } else if (constraintAnchorArr[0].f2072f != null) {
                    DependencyNode m33944h3 = m33944h(constraintAnchorArr[0]);
                    if (m33944h3 == null) {
                        return;
                    }
                    m33947b(this.f2217h, m33944h3, this.f2211b.f2119S[0].m34069f());
                    m33947b(this.f2218i, this.f2217h, this.f2214e.f2195g);
                    return;
                } else if (constraintAnchorArr[1].f2072f != null) {
                    DependencyNode m33944h4 = m33944h(constraintAnchorArr[1]);
                    if (m33944h4 == null) {
                        return;
                    }
                    m33947b(this.f2218i, m33944h4, -this.f2211b.f2119S[1].m34069f());
                    m33947b(this.f2217h, this.f2218i, -this.f2214e.f2195g);
                    return;
                } else if ((constraintWidget2 instanceof AbstractC0498g) || constraintWidget2.m34031L() == null || this.f2211b.mo33769p(ConstraintAnchor.Type.CENTER).f2072f != null) {
                    return;
                } else {
                    m33947b(this.f2217h, this.f2211b.m34031L().f2136f.f2217h, this.f2211b.m34011V());
                    m33947b(this.f2218i, this.f2217h, this.f2214e.f2195g);
                    return;
                }
            }
        }
        if (this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2211b;
            int i = constraintWidget3.f2158q;
            if (i == 2) {
                ConstraintWidget m34031L3 = constraintWidget3.m34031L();
                if (m34031L3 != null) {
                    C0479f c0479f2 = m34031L3.f2138g.f2214e;
                    this.f2214e.f2200l.add(c0479f2);
                    c0479f2.f2199k.add(this.f2214e);
                    C0479f c0479f3 = this.f2214e;
                    c0479f3.f2190b = true;
                    c0479f3.f2199k.add(this.f2217h);
                    this.f2214e.f2199k.add(this.f2218i);
                }
            } else if (i == 3) {
                if (constraintWidget3.f2160r == 3) {
                    this.f2217h.f2189a = this;
                    this.f2218i.f2189a = this;
                    C0487m c0487m = constraintWidget3.f2138g;
                    c0487m.f2217h.f2189a = this;
                    c0487m.f2218i.f2189a = this;
                    c0479f.f2189a = this;
                    if (constraintWidget3.m33993e0()) {
                        this.f2214e.f2200l.add(this.f2211b.f2138g.f2214e);
                        this.f2211b.f2138g.f2214e.f2199k.add(this.f2214e);
                        C0487m c0487m2 = this.f2211b.f2138g;
                        c0487m2.f2214e.f2189a = this;
                        this.f2214e.f2200l.add(c0487m2.f2217h);
                        this.f2214e.f2200l.add(this.f2211b.f2138g.f2218i);
                        this.f2211b.f2138g.f2217h.f2199k.add(this.f2214e);
                        this.f2211b.f2138g.f2218i.f2199k.add(this.f2214e);
                    } else if (this.f2211b.m33997c0()) {
                        this.f2211b.f2138g.f2214e.f2200l.add(this.f2214e);
                        this.f2214e.f2199k.add(this.f2211b.f2138g.f2214e);
                    } else {
                        this.f2211b.f2138g.f2214e.f2200l.add(this.f2214e);
                    }
                } else {
                    C0479f c0479f4 = constraintWidget3.f2138g.f2214e;
                    c0479f.f2200l.add(c0479f4);
                    c0479f4.f2199k.add(this.f2214e);
                    this.f2211b.f2138g.f2217h.f2199k.add(this.f2214e);
                    this.f2211b.f2138g.f2218i.f2199k.add(this.f2214e);
                    C0479f c0479f5 = this.f2214e;
                    c0479f5.f2190b = true;
                    c0479f5.f2199k.add(this.f2217h);
                    this.f2214e.f2199k.add(this.f2218i);
                    this.f2217h.f2200l.add(this.f2214e);
                    this.f2218i.f2200l.add(this.f2214e);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.f2211b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.f2119S;
        if (constraintAnchorArr2[0].f2072f != null && constraintAnchorArr2[1].f2072f != null) {
            if (constraintWidget4.m33997c0()) {
                this.f2217h.f2194f = this.f2211b.f2119S[0].m34069f();
                this.f2218i.f2194f = -this.f2211b.f2119S[1].m34069f();
                return;
            }
            DependencyNode m33944h5 = m33944h(this.f2211b.f2119S[0]);
            DependencyNode m33944h6 = m33944h(this.f2211b.f2119S[1]);
            m33944h5.m33949b(this);
            m33944h6.m33949b(this);
            this.f2219j = WidgetRun.RunType.CENTER;
        } else if (constraintAnchorArr2[0].f2072f != null) {
            DependencyNode m33944h7 = m33944h(constraintAnchorArr2[0]);
            if (m33944h7 == null) {
                return;
            }
            m33947b(this.f2217h, m33944h7, this.f2211b.f2119S[0].m34069f());
            m33946c(this.f2218i, this.f2217h, 1, this.f2214e);
        } else if (constraintAnchorArr2[1].f2072f != null) {
            DependencyNode m33944h8 = m33944h(constraintAnchorArr2[1]);
            if (m33944h8 == null) {
                return;
            }
            m33947b(this.f2218i, m33944h8, -this.f2211b.f2119S[1].m34069f());
            m33946c(this.f2217h, this.f2218i, -1, this.f2214e);
        } else if ((constraintWidget4 instanceof AbstractC0498g) || constraintWidget4.m34031L() == null) {
        } else {
            m33947b(this.f2217h, this.f2211b.m34031L().f2136f.f2217h, this.f2211b.m34011V());
            m33946c(this.f2218i, this.f2217h, 1, this.f2214e);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo33890e() {
        DependencyNode dependencyNode = this.f2217h;
        if (dependencyNode.f2198j) {
            this.f2211b.m34002Z0(dependencyNode.f2195g);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo33889f() {
        this.f2212c = null;
        this.f2217h.m33948c();
        this.f2218i.m33948c();
        this.f2214e.m33948c();
        this.f2216g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo33888m() {
        return this.f2213d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2211b.f2158q == 0;
    }

    /* renamed from: r */
    public void m33897r() {
        this.f2216g = false;
        this.f2217h.m33948c();
        this.f2217h.f2198j = false;
        this.f2218i.m33948c();
        this.f2218i.f2198j = false;
        this.f2214e.f2198j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f2211b.m33970u();
    }
}
