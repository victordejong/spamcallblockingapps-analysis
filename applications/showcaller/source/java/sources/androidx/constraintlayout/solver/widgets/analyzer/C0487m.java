package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.AbstractC0498g;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/m.class */
public class C0487m extends WidgetRun {

    /* renamed from: k */
    public DependencyNode f2265k;

    /* renamed from: l */
    C0479f f2266l = null;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/m$a.class */
    static /* synthetic */ class C0488a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2267a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2267a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2267a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2267a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C0487m(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.f2265k = dependencyNode;
        this.f2217h.f2193e = DependencyNode.Type.TOP;
        this.f2218i.f2193e = DependencyNode.Type.BOTTOM;
        dependencyNode.f2193e = DependencyNode.Type.BASELINE;
        this.f2215f = 1;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    public void mo33892a(AbstractC0477d abstractC0477d) {
        C0479f c0479f;
        int i;
        float f;
        float f2;
        float f3;
        ConstraintWidget constraintWidget;
        int i2 = C0488a.f2267a[this.f2219j.ordinal()];
        if (i2 == 1) {
            m33938p(abstractC0477d);
        } else if (i2 == 2) {
            m33939o(abstractC0477d);
        } else if (i2 == 3) {
            ConstraintWidget constraintWidget2 = this.f2211b;
            m33940n(abstractC0477d, constraintWidget2.f2110L, constraintWidget2.f2114N, 1);
            return;
        }
        C0479f c0479f2 = this.f2214e;
        if (c0479f2.f2191c && !c0479f2.f2198j && this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2211b;
            int i3 = constraintWidget3.f2160r;
            if (i3 == 2) {
                ConstraintWidget m34031L = constraintWidget3.m34031L();
                if (m34031L != null) {
                    if (m34031L.f2138g.f2214e.f2198j) {
                        this.f2214e.mo33914d((int) ((c0479f.f2195g * this.f2211b.f2174y) + 0.5f));
                    }
                }
            } else if (i3 == 3 && constraintWidget3.f2136f.f2214e.f2198j) {
                int m33964x = constraintWidget3.m33964x();
                if (m33964x == -1) {
                    ConstraintWidget constraintWidget4 = this.f2211b;
                    f3 = constraintWidget4.f2136f.f2214e.f2195g;
                    f2 = constraintWidget4.m33966w();
                } else if (m33964x == 0) {
                    f = constraintWidget.f2136f.f2214e.f2195g * this.f2211b.m33966w();
                    i = (int) (f + 0.5f);
                    this.f2214e.mo33914d(i);
                } else if (m33964x != 1) {
                    i = 0;
                    this.f2214e.mo33914d(i);
                } else {
                    ConstraintWidget constraintWidget5 = this.f2211b;
                    f3 = constraintWidget5.f2136f.f2214e.f2195g;
                    f2 = constraintWidget5.m33966w();
                }
                f = f3 / f2;
                i = (int) (f + 0.5f);
                this.f2214e.mo33914d(i);
            }
        }
        DependencyNode dependencyNode = this.f2217h;
        if (dependencyNode.f2191c) {
            DependencyNode dependencyNode2 = this.f2218i;
            if (!dependencyNode2.f2191c) {
                return;
            }
            if (dependencyNode.f2198j && dependencyNode2.f2198j && this.f2214e.f2198j) {
                return;
            }
            if (!this.f2214e.f2198j && this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget constraintWidget6 = this.f2211b;
                if (constraintWidget6.f2158q == 0 && !constraintWidget6.m33993e0()) {
                    DependencyNode dependencyNode3 = this.f2217h.f2200l.get(0);
                    DependencyNode dependencyNode4 = this.f2218i.f2200l.get(0);
                    int i4 = dependencyNode3.f2195g;
                    DependencyNode dependencyNode5 = this.f2217h;
                    int i5 = i4 + dependencyNode5.f2194f;
                    int i6 = dependencyNode4.f2195g + this.f2218i.f2194f;
                    dependencyNode5.mo33914d(i5);
                    this.f2218i.mo33914d(i6);
                    this.f2214e.mo33914d(i6 - i5);
                    return;
                }
            }
            if (!this.f2214e.f2198j && this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f2210a == 1 && this.f2217h.f2200l.size() > 0 && this.f2218i.f2200l.size() > 0) {
                int i7 = (this.f2218i.f2200l.get(0).f2195g + this.f2218i.f2194f) - (this.f2217h.f2200l.get(0).f2195g + this.f2217h.f2194f);
                C0479f c0479f3 = this.f2214e;
                int i8 = c0479f3.f2253m;
                if (i7 < i8) {
                    c0479f3.mo33914d(i7);
                } else {
                    c0479f3.mo33914d(i8);
                }
            }
            if (!this.f2214e.f2198j || this.f2217h.f2200l.size() <= 0 || this.f2218i.f2200l.size() <= 0) {
                return;
            }
            DependencyNode dependencyNode6 = this.f2217h.f2200l.get(0);
            DependencyNode dependencyNode7 = this.f2218i.f2200l.get(0);
            int i9 = dependencyNode6.f2195g + this.f2217h.f2194f;
            int i10 = dependencyNode7.f2195g + this.f2218i.f2194f;
            float m34023P = this.f2211b.m34023P();
            if (dependencyNode6 == dependencyNode7) {
                i9 = dependencyNode6.f2195g;
                i10 = dependencyNode7.f2195g;
                m34023P = 0.5f;
            }
            this.f2217h.mo33914d((int) (i9 + 0.5f + (((i10 - i9) - this.f2214e.f2195g) * m34023P)));
            this.f2218i.mo33914d(this.f2217h.f2195g + this.f2214e.f2195g);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo33891d() {
        ConstraintWidget m34031L;
        ConstraintWidget m34031L2;
        ConstraintWidget constraintWidget = this.f2211b;
        if (constraintWidget.f2128b) {
            this.f2214e.mo33914d(constraintWidget.m33962y());
        }
        if (!this.f2214e.f2198j) {
            this.f2213d = this.f2211b.m34019R();
            if (this.f2211b.m34007X()) {
                this.f2266l = new C0472a(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f2213d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (m34031L2 = this.f2211b.m34031L()) != null && m34031L2.m34019R() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int m33962y = m34031L2.m33962y();
                    int m34069f = this.f2211b.f2110L.m34069f();
                    int m34069f2 = this.f2211b.f2114N.m34069f();
                    m33947b(this.f2217h, m34031L2.f2138g.f2217h, this.f2211b.f2110L.m34069f());
                    m33947b(this.f2218i, m34031L2.f2138g.f2218i, -this.f2211b.f2114N.m34069f());
                    this.f2214e.mo33914d((m33962y - m34069f) - m34069f2);
                    return;
                } else if (this.f2213d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2214e.mo33914d(this.f2211b.m33962y());
                }
            }
        } else if (this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (m34031L = this.f2211b.m34031L()) != null && m34031L.m34019R() == ConstraintWidget.DimensionBehaviour.FIXED) {
            m33947b(this.f2217h, m34031L.f2138g.f2217h, this.f2211b.f2110L.m34069f());
            m33947b(this.f2218i, m34031L.f2138g.f2218i, -this.f2211b.f2114N.m34069f());
            return;
        }
        C0479f c0479f = this.f2214e;
        boolean z = c0479f.f2198j;
        if (z) {
            ConstraintWidget constraintWidget2 = this.f2211b;
            if (constraintWidget2.f2128b) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.f2119S;
                if (constraintAnchorArr[2].f2072f != null && constraintAnchorArr[3].f2072f != null) {
                    if (constraintWidget2.m33993e0()) {
                        this.f2217h.f2194f = this.f2211b.f2119S[2].m34069f();
                        this.f2218i.f2194f = -this.f2211b.f2119S[3].m34069f();
                    } else {
                        DependencyNode m33944h = m33944h(this.f2211b.f2119S[2]);
                        if (m33944h != null) {
                            m33947b(this.f2217h, m33944h, this.f2211b.f2119S[2].m34069f());
                        }
                        DependencyNode m33944h2 = m33944h(this.f2211b.f2119S[3]);
                        if (m33944h2 != null) {
                            m33947b(this.f2218i, m33944h2, -this.f2211b.f2119S[3].m34069f());
                        }
                        this.f2217h.f2190b = true;
                        this.f2218i.f2190b = true;
                    }
                    if (!this.f2211b.m34007X()) {
                        return;
                    }
                    m33947b(this.f2265k, this.f2217h, this.f2211b.m33978q());
                    return;
                } else if (constraintAnchorArr[2].f2072f != null) {
                    DependencyNode m33944h3 = m33944h(constraintAnchorArr[2]);
                    if (m33944h3 == null) {
                        return;
                    }
                    m33947b(this.f2217h, m33944h3, this.f2211b.f2119S[2].m34069f());
                    m33947b(this.f2218i, this.f2217h, this.f2214e.f2195g);
                    if (!this.f2211b.m34007X()) {
                        return;
                    }
                    m33947b(this.f2265k, this.f2217h, this.f2211b.m33978q());
                    return;
                } else if (constraintAnchorArr[3].f2072f != null) {
                    DependencyNode m33944h4 = m33944h(constraintAnchorArr[3]);
                    if (m33944h4 != null) {
                        m33947b(this.f2218i, m33944h4, -this.f2211b.f2119S[3].m34069f());
                        m33947b(this.f2217h, this.f2218i, -this.f2214e.f2195g);
                    }
                    if (!this.f2211b.m34007X()) {
                        return;
                    }
                    m33947b(this.f2265k, this.f2217h, this.f2211b.m33978q());
                    return;
                } else if (constraintAnchorArr[4].f2072f != null) {
                    DependencyNode m33944h5 = m33944h(constraintAnchorArr[4]);
                    if (m33944h5 == null) {
                        return;
                    }
                    m33947b(this.f2265k, m33944h5, 0);
                    m33947b(this.f2217h, this.f2265k, -this.f2211b.m33978q());
                    m33947b(this.f2218i, this.f2217h, this.f2214e.f2195g);
                    return;
                } else if ((constraintWidget2 instanceof AbstractC0498g) || constraintWidget2.m34031L() == null || this.f2211b.mo33769p(ConstraintAnchor.Type.CENTER).f2072f != null) {
                    return;
                } else {
                    m33947b(this.f2217h, this.f2211b.m34031L().f2138g.f2217h, this.f2211b.m34009W());
                    m33947b(this.f2218i, this.f2217h, this.f2214e.f2195g);
                    if (!this.f2211b.m34007X()) {
                        return;
                    }
                    m33947b(this.f2265k, this.f2217h, this.f2211b.m33978q());
                    return;
                }
            }
        }
        if (z || this.f2213d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            c0479f.m33949b(this);
        } else {
            ConstraintWidget constraintWidget3 = this.f2211b;
            int i = constraintWidget3.f2160r;
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
            } else if (i == 3 && !constraintWidget3.m33993e0()) {
                ConstraintWidget constraintWidget4 = this.f2211b;
                if (constraintWidget4.f2158q != 3) {
                    C0479f c0479f4 = constraintWidget4.f2136f.f2214e;
                    this.f2214e.f2200l.add(c0479f4);
                    c0479f4.f2199k.add(this.f2214e);
                    C0479f c0479f5 = this.f2214e;
                    c0479f5.f2190b = true;
                    c0479f5.f2199k.add(this.f2217h);
                    this.f2214e.f2199k.add(this.f2218i);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.f2211b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.f2119S;
        if (constraintAnchorArr2[2].f2072f != null && constraintAnchorArr2[3].f2072f != null) {
            if (constraintWidget5.m33993e0()) {
                this.f2217h.f2194f = this.f2211b.f2119S[2].m34069f();
                this.f2218i.f2194f = -this.f2211b.f2119S[3].m34069f();
            } else {
                DependencyNode m33944h6 = m33944h(this.f2211b.f2119S[2]);
                DependencyNode m33944h7 = m33944h(this.f2211b.f2119S[3]);
                m33944h6.m33949b(this);
                m33944h7.m33949b(this);
                this.f2219j = WidgetRun.RunType.CENTER;
            }
            if (this.f2211b.m34007X()) {
                m33946c(this.f2265k, this.f2217h, 1, this.f2266l);
            }
        } else if (constraintAnchorArr2[2].f2072f != null) {
            DependencyNode m33944h8 = m33944h(constraintAnchorArr2[2]);
            if (m33944h8 != null) {
                m33947b(this.f2217h, m33944h8, this.f2211b.f2119S[2].m34069f());
                m33946c(this.f2218i, this.f2217h, 1, this.f2214e);
                if (this.f2211b.m34007X()) {
                    m33946c(this.f2265k, this.f2217h, 1, this.f2266l);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.f2213d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.f2211b.m33966w() > 0.0f) {
                    C0484k c0484k = this.f2211b.f2136f;
                    if (c0484k.f2213d == dimensionBehaviour3) {
                        c0484k.f2214e.f2199k.add(this.f2214e);
                        this.f2214e.f2200l.add(this.f2211b.f2136f.f2214e);
                        this.f2214e.f2189a = this;
                    }
                }
            }
        } else if (constraintAnchorArr2[3].f2072f != null) {
            DependencyNode m33944h9 = m33944h(constraintAnchorArr2[3]);
            if (m33944h9 != null) {
                m33947b(this.f2218i, m33944h9, -this.f2211b.f2119S[3].m34069f());
                m33946c(this.f2217h, this.f2218i, -1, this.f2214e);
                if (this.f2211b.m34007X()) {
                    m33946c(this.f2265k, this.f2217h, 1, this.f2266l);
                }
            }
        } else if (constraintAnchorArr2[4].f2072f != null) {
            DependencyNode m33944h10 = m33944h(constraintAnchorArr2[4]);
            if (m33944h10 != null) {
                m33947b(this.f2265k, m33944h10, 0);
                m33946c(this.f2217h, this.f2265k, -1, this.f2266l);
                m33946c(this.f2218i, this.f2217h, 1, this.f2214e);
            }
        } else if (!(constraintWidget5 instanceof AbstractC0498g) && constraintWidget5.m34031L() != null) {
            m33947b(this.f2217h, this.f2211b.m34031L().f2138g.f2217h, this.f2211b.m34009W());
            m33946c(this.f2218i, this.f2217h, 1, this.f2214e);
            if (this.f2211b.m34007X()) {
                m33946c(this.f2265k, this.f2217h, 1, this.f2266l);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.f2213d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour4 == dimensionBehaviour5 && this.f2211b.m33966w() > 0.0f) {
                C0484k c0484k2 = this.f2211b.f2136f;
                if (c0484k2.f2213d == dimensionBehaviour5) {
                    c0484k2.f2214e.f2199k.add(this.f2214e);
                    this.f2214e.f2200l.add(this.f2211b.f2136f.f2214e);
                    this.f2214e.f2189a = this;
                }
            }
        }
        if (this.f2214e.f2200l.size() == 0) {
            this.f2214e.f2191c = true;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo33890e() {
        DependencyNode dependencyNode = this.f2217h;
        if (dependencyNode.f2198j) {
            this.f2211b.m34000a1(dependencyNode.f2195g);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo33889f() {
        this.f2212c = null;
        this.f2217h.m33948c();
        this.f2218i.m33948c();
        this.f2265k.m33948c();
        this.f2214e.m33948c();
        this.f2216g = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo33888m() {
        return this.f2213d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2211b.f2160r == 0;
    }

    /* renamed from: q */
    public void m33887q() {
        this.f2216g = false;
        this.f2217h.m33948c();
        this.f2217h.f2198j = false;
        this.f2218i.m33948c();
        this.f2218i.f2198j = false;
        this.f2265k.m33948c();
        this.f2265k.f2198j = false;
        this.f2214e.f2198j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f2211b.m33970u();
    }
}
