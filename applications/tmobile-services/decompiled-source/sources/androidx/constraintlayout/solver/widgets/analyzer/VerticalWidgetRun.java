package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun.class */
public class VerticalWidgetRun extends WidgetRun {

    /* renamed from: k */
    public DependencyNode f2416k;

    /* renamed from: l */
    DimensionDependency f2417l = null;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun$1.class */
    static /* synthetic */ class C01701 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2418a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2418a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2418a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2418a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.f2416k = dependencyNode;
        this.f2432h.f2400e = DependencyNode.Type.TOP;
        this.f2433i.f2400e = DependencyNode.Type.BOTTOM;
        dependencyNode.f2400e = DependencyNode.Type.BASELINE;
        this.f2430f = 1;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    public void mo20105a(Dependency dependency) {
        DimensionDependency dimensionDependency;
        int i;
        float f;
        float f2;
        float f3;
        ConstraintWidget constraintWidget;
        int i2 = C01701.f2418a[this.f2434j.ordinal()];
        if (i2 == 1) {
            m20090p(dependency);
        } else if (i2 == 2) {
            m20091o(dependency);
        } else if (i2 == 3) {
            ConstraintWidget constraintWidget2 = this.f2426b;
            m20092n(dependency, constraintWidget2.f2216J, constraintWidget2.f2219L, 1);
            return;
        }
        DimensionDependency dimensionDependency2 = this.f2429e;
        if (dimensionDependency2.f2398c && !dimensionDependency2.f2405j && this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.f2426b;
            int i3 = constraintWidget3.f2264p;
            if (i3 == 2) {
                ConstraintWidget L = constraintWidget3.m20374L();
                if (L != null) {
                    if (L.f2242e.f2429e.f2405j) {
                        this.f2429e.mo20138d((int) ((dimensionDependency.f2402g * this.f2426b.f2278w) + 0.5f));
                    }
                }
            } else if (i3 == 3 && constraintWidget3.f2240d.f2429e.f2405j) {
                int x = constraintWidget3.m20307x();
                if (x == -1) {
                    ConstraintWidget constraintWidget4 = this.f2426b;
                    f3 = constraintWidget4.f2240d.f2429e.f2402g;
                    f2 = constraintWidget4.m20309w();
                } else if (x == 0) {
                    f = constraintWidget.f2240d.f2429e.f2402g * this.f2426b.m20309w();
                    i = (int) (f + 0.5f);
                    this.f2429e.mo20138d(i);
                } else if (x != 1) {
                    i = 0;
                    this.f2429e.mo20138d(i);
                } else {
                    ConstraintWidget constraintWidget5 = this.f2426b;
                    f3 = constraintWidget5.f2240d.f2429e.f2402g;
                    f2 = constraintWidget5.m20309w();
                }
                f = f3 / f2;
                i = (int) (f + 0.5f);
                this.f2429e.mo20138d(i);
            }
        }
        DependencyNode dependencyNode = this.f2432h;
        if (dependencyNode.f2398c) {
            DependencyNode dependencyNode2 = this.f2433i;
            if (dependencyNode2.f2398c) {
                if (!dependencyNode.f2405j || !dependencyNode2.f2405j || !this.f2429e.f2405j) {
                    if (!this.f2429e.f2405j && this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        ConstraintWidget constraintWidget6 = this.f2426b;
                        if (constraintWidget6.f2262o == 0 && !constraintWidget6.m20336e0()) {
                            DependencyNode dependencyNode3 = this.f2432h.f2407l.get(0);
                            DependencyNode dependencyNode4 = this.f2433i.f2407l.get(0);
                            int i4 = dependencyNode3.f2402g;
                            DependencyNode dependencyNode5 = this.f2432h;
                            int i5 = i4 + dependencyNode5.f2401f;
                            int i6 = dependencyNode4.f2402g + this.f2433i.f2401f;
                            dependencyNode5.mo20138d(i5);
                            this.f2433i.mo20138d(i6);
                            this.f2429e.mo20138d(i6 - i5);
                            return;
                        }
                    }
                    if (!this.f2429e.f2405j && this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f2425a == 1 && this.f2432h.f2407l.size() > 0 && this.f2433i.f2407l.size() > 0) {
                        int i7 = (this.f2433i.f2407l.get(0).f2402g + this.f2433i.f2401f) - (this.f2432h.f2407l.get(0).f2402g + this.f2432h.f2401f);
                        DimensionDependency dimensionDependency3 = this.f2429e;
                        int i8 = dimensionDependency3.f2408m;
                        if (i7 < i8) {
                            dimensionDependency3.mo20138d(i7);
                        } else {
                            dimensionDependency3.mo20138d(i8);
                        }
                    }
                    if (this.f2429e.f2405j && this.f2432h.f2407l.size() > 0 && this.f2433i.f2407l.size() > 0) {
                        DependencyNode dependencyNode6 = this.f2432h.f2407l.get(0);
                        DependencyNode dependencyNode7 = this.f2433i.f2407l.get(0);
                        int i9 = dependencyNode6.f2402g + this.f2432h.f2401f;
                        int i10 = dependencyNode7.f2402g + this.f2433i.f2401f;
                        float P = this.f2426b.m20366P();
                        if (dependencyNode6 == dependencyNode7) {
                            i9 = dependencyNode6.f2402g;
                            i10 = dependencyNode7.f2402g;
                            P = 0.5f;
                        }
                        this.f2432h.mo20138d((int) (i9 + 0.5f + (((i10 - i9) - this.f2429e.f2402g) * P)));
                        this.f2433i.mo20138d(this.f2432h.f2402g + this.f2429e.f2402g);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo20102d() {
        ConstraintWidget L;
        ConstraintWidget L2;
        ConstraintWidget constraintWidget = this.f2426b;
        if (constraintWidget.f2234a) {
            this.f2429e.mo20138d(constraintWidget.m20305y());
        }
        if (!this.f2429e.f2405j) {
            this.f2428d = this.f2426b.m20362R();
            if (this.f2426b.m20350X()) {
                this.f2417l = new BaselineDimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.f2428d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (L2 = this.f2426b.m20374L()) != null && L2.m20362R() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int y = L2.m20305y();
                    int f = this.f2426b.f2216J.m20412f();
                    int f2 = this.f2426b.f2219L.m20412f();
                    m20104b(this.f2432h, L2.f2242e.f2432h, this.f2426b.f2216J.m20412f());
                    m20104b(this.f2433i, L2.f2242e.f2433i, -this.f2426b.f2219L.m20412f());
                    this.f2429e.mo20138d((y - f) - f2);
                    return;
                } else if (this.f2428d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2429e.mo20138d(this.f2426b.m20305y());
                }
            }
        } else if (this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (L = this.f2426b.m20374L()) != null && L.m20362R() == ConstraintWidget.DimensionBehaviour.FIXED) {
            m20104b(this.f2432h, L.f2242e.f2432h, this.f2426b.f2216J.m20412f());
            m20104b(this.f2433i, L.f2242e.f2433i, -this.f2426b.f2219L.m20412f());
            return;
        }
        if (this.f2429e.f2405j) {
            ConstraintWidget constraintWidget2 = this.f2426b;
            if (constraintWidget2.f2234a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.f2224Q;
                if (constraintAnchorArr[2].f2192f == null || constraintAnchorArr[3].f2192f == null) {
                    ConstraintWidget constraintWidget3 = this.f2426b;
                    ConstraintAnchor[] constraintAnchorArr2 = constraintWidget3.f2224Q;
                    if (constraintAnchorArr2[2].f2192f != null) {
                        DependencyNode h = m20098h(constraintAnchorArr2[2]);
                        if (h != null) {
                            m20104b(this.f2432h, h, this.f2426b.f2224Q[2].m20412f());
                            m20104b(this.f2433i, this.f2432h, this.f2429e.f2402g);
                            if (this.f2426b.m20350X()) {
                                m20104b(this.f2416k, this.f2432h, this.f2426b.m20321q());
                                return;
                            }
                            return;
                        }
                        return;
                    } else if (constraintAnchorArr2[3].f2192f != null) {
                        DependencyNode h2 = m20098h(constraintAnchorArr2[3]);
                        if (h2 != null) {
                            m20104b(this.f2433i, h2, -this.f2426b.f2224Q[3].m20412f());
                            m20104b(this.f2432h, this.f2433i, -this.f2429e.f2402g);
                        }
                        if (this.f2426b.m20350X()) {
                            m20104b(this.f2416k, this.f2432h, this.f2426b.m20321q());
                            return;
                        }
                        return;
                    } else if (constraintAnchorArr2[4].f2192f != null) {
                        DependencyNode h3 = m20098h(constraintAnchorArr2[4]);
                        if (h3 != null) {
                            m20104b(this.f2416k, h3, 0);
                            m20104b(this.f2432h, this.f2416k, -this.f2426b.m20321q());
                            m20104b(this.f2433i, this.f2432h, this.f2429e.f2402g);
                            return;
                        }
                        return;
                    } else if (!(constraintWidget3 instanceof Helper) && constraintWidget3.m20374L() != null && this.f2426b.mo20199p(ConstraintAnchor.Type.CENTER).f2192f == null) {
                        m20104b(this.f2432h, this.f2426b.m20374L().f2242e.f2432h, this.f2426b.m20352W());
                        m20104b(this.f2433i, this.f2432h, this.f2429e.f2402g);
                        if (this.f2426b.m20350X()) {
                            m20104b(this.f2416k, this.f2432h, this.f2426b.m20321q());
                            return;
                        }
                        return;
                    } else {
                        return;
                    }
                } else {
                    if (constraintWidget2.m20336e0()) {
                        this.f2432h.f2401f = this.f2426b.f2224Q[2].m20412f();
                        this.f2433i.f2401f = -this.f2426b.f2224Q[3].m20412f();
                    } else {
                        DependencyNode h4 = m20098h(this.f2426b.f2224Q[2]);
                        if (h4 != null) {
                            m20104b(this.f2432h, h4, this.f2426b.f2224Q[2].m20412f());
                        }
                        DependencyNode h5 = m20098h(this.f2426b.f2224Q[3]);
                        if (h5 != null) {
                            m20104b(this.f2433i, h5, -this.f2426b.f2224Q[3].m20412f());
                        }
                        this.f2432h.f2397b = true;
                        this.f2433i.f2397b = true;
                    }
                    if (this.f2426b.m20350X()) {
                        m20104b(this.f2416k, this.f2432h, this.f2426b.m20321q());
                        return;
                    }
                    return;
                }
            }
        }
        if (this.f2429e.f2405j || this.f2428d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            this.f2429e.m20140b(this);
        } else {
            ConstraintWidget constraintWidget4 = this.f2426b;
            int i = constraintWidget4.f2264p;
            if (i == 2) {
                ConstraintWidget L3 = constraintWidget4.m20374L();
                if (L3 != null) {
                    DimensionDependency dimensionDependency = L3.f2242e.f2429e;
                    this.f2429e.f2407l.add(dimensionDependency);
                    dimensionDependency.f2406k.add(this.f2429e);
                    DimensionDependency dimensionDependency2 = this.f2429e;
                    dimensionDependency2.f2397b = true;
                    dimensionDependency2.f2406k.add(this.f2432h);
                    this.f2429e.f2406k.add(this.f2433i);
                }
            } else if (i == 3 && !constraintWidget4.m20336e0()) {
                ConstraintWidget constraintWidget5 = this.f2426b;
                if (constraintWidget5.f2262o != 3) {
                    DimensionDependency dimensionDependency3 = constraintWidget5.f2240d.f2429e;
                    this.f2429e.f2407l.add(dimensionDependency3);
                    dimensionDependency3.f2406k.add(this.f2429e);
                    DimensionDependency dimensionDependency4 = this.f2429e;
                    dimensionDependency4.f2397b = true;
                    dimensionDependency4.f2406k.add(this.f2432h);
                    this.f2429e.f2406k.add(this.f2433i);
                }
            }
        }
        ConstraintWidget constraintWidget6 = this.f2426b;
        ConstraintAnchor[] constraintAnchorArr3 = constraintWidget6.f2224Q;
        if (constraintAnchorArr3[2].f2192f == null || constraintAnchorArr3[3].f2192f == null) {
            ConstraintWidget constraintWidget7 = this.f2426b;
            ConstraintAnchor[] constraintAnchorArr4 = constraintWidget7.f2224Q;
            if (constraintAnchorArr4[2].f2192f != null) {
                DependencyNode h6 = m20098h(constraintAnchorArr4[2]);
                if (h6 != null) {
                    m20104b(this.f2432h, h6, this.f2426b.f2224Q[2].m20412f());
                    m20103c(this.f2433i, this.f2432h, 1, this.f2429e);
                    if (this.f2426b.m20350X()) {
                        m20103c(this.f2416k, this.f2432h, 1, this.f2417l);
                    }
                    if (this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f2426b.m20309w() > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun = this.f2426b.f2240d;
                        if (horizontalWidgetRun.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            horizontalWidgetRun.f2429e.f2406k.add(this.f2429e);
                            this.f2429e.f2407l.add(this.f2426b.f2240d.f2429e);
                            this.f2429e.f2396a = this;
                        }
                    }
                }
            } else if (constraintAnchorArr4[3].f2192f != null) {
                DependencyNode h7 = m20098h(constraintAnchorArr4[3]);
                if (h7 != null) {
                    m20104b(this.f2433i, h7, -this.f2426b.f2224Q[3].m20412f());
                    m20103c(this.f2432h, this.f2433i, -1, this.f2429e);
                    if (this.f2426b.m20350X()) {
                        m20103c(this.f2416k, this.f2432h, 1, this.f2417l);
                    }
                }
            } else if (constraintAnchorArr4[4].f2192f != null) {
                DependencyNode h8 = m20098h(constraintAnchorArr4[4]);
                if (h8 != null) {
                    m20104b(this.f2416k, h8, 0);
                    m20103c(this.f2432h, this.f2416k, -1, this.f2417l);
                    m20103c(this.f2433i, this.f2432h, 1, this.f2429e);
                }
            } else if (!(constraintWidget7 instanceof Helper) && constraintWidget7.m20374L() != null) {
                m20104b(this.f2432h, this.f2426b.m20374L().f2242e.f2432h, this.f2426b.m20352W());
                m20103c(this.f2433i, this.f2432h, 1, this.f2429e);
                if (this.f2426b.m20350X()) {
                    m20103c(this.f2416k, this.f2432h, 1, this.f2417l);
                }
                if (this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f2426b.m20309w() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun2 = this.f2426b.f2240d;
                    if (horizontalWidgetRun2.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        horizontalWidgetRun2.f2429e.f2406k.add(this.f2429e);
                        this.f2429e.f2407l.add(this.f2426b.f2240d.f2429e);
                        this.f2429e.f2396a = this;
                    }
                }
            }
        } else {
            if (constraintWidget6.m20336e0()) {
                this.f2432h.f2401f = this.f2426b.f2224Q[2].m20412f();
                this.f2433i.f2401f = -this.f2426b.f2224Q[3].m20412f();
            } else {
                DependencyNode h9 = m20098h(this.f2426b.f2224Q[2]);
                DependencyNode h10 = m20098h(this.f2426b.f2224Q[3]);
                h9.m20140b(this);
                h10.m20140b(this);
                this.f2434j = WidgetRun.RunType.CENTER;
            }
            if (this.f2426b.m20350X()) {
                m20103c(this.f2416k, this.f2432h, 1, this.f2417l);
            }
        }
        if (this.f2429e.f2407l.size() == 0) {
            this.f2429e.f2398c = true;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo20101e() {
        DependencyNode dependencyNode = this.f2432h;
        if (dependencyNode.f2405j) {
            this.f2426b.m20343a1(dependencyNode.f2402g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo20100f() {
        this.f2427c = null;
        this.f2432h.m20139c();
        this.f2433i.m20139c();
        this.f2416k.m20139c();
        this.f2429e.m20139c();
        this.f2431g = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo20093m() {
        return this.f2428d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2426b.f2264p == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m20116q() {
        this.f2431g = false;
        this.f2432h.m20139c();
        this.f2432h.f2405j = false;
        this.f2433i.m20139c();
        this.f2433i.f2405j = false;
        this.f2416k.m20139c();
        this.f2416k.f2405j = false;
        this.f2429e.f2405j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f2426b.m20313u();
    }
}
