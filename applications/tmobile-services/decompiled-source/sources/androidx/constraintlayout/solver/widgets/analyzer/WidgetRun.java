package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun.class */
public abstract class WidgetRun implements Dependency {

    /* renamed from: a */
    public int f2425a;

    /* renamed from: b */
    ConstraintWidget f2426b;

    /* renamed from: c */
    RunGroup f2427c;

    /* renamed from: d */
    protected ConstraintWidget.DimensionBehaviour f2428d;

    /* renamed from: e */
    DimensionDependency f2429e = new DimensionDependency(this);

    /* renamed from: f */
    public int f2430f = 0;

    /* renamed from: g */
    boolean f2431g = false;

    /* renamed from: h */
    public DependencyNode f2432h = new DependencyNode(this);

    /* renamed from: i */
    public DependencyNode f2433i = new DependencyNode(this);

    /* renamed from: j */
    protected RunType f2434j = RunType.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$1.class */
    public static /* synthetic */ class C01711 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2435a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2435a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2435a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2435a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2435a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2435a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType.class */
    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f2426b = constraintWidget;
    }

    /* renamed from: l */
    private void m20094l(int i, int i2) {
        int i3 = this.f2425a;
        if (i3 == 0) {
            this.f2429e.mo20138d(m20099g(i2, i));
        } else if (i3 == 1) {
            this.f2429e.mo20138d(Math.min(m20099g(this.f2429e.f2408m, i), i2));
        } else if (i3 == 2) {
            ConstraintWidget L = this.f2426b.m20374L();
            if (L != null) {
                WidgetRun widgetRun = i == 0 ? L.f2240d : L.f2242e;
                if (widgetRun.f2429e.f2405j) {
                    ConstraintWidget constraintWidget = this.f2426b;
                    this.f2429e.mo20138d(m20099g((int) ((widgetRun.f2429e.f2402g * (i == 0 ? constraintWidget.f2272t : constraintWidget.f2278w)) + 0.5f), i));
                }
            }
        } else if (i3 == 3) {
            ConstraintWidget constraintWidget2 = this.f2426b;
            HorizontalWidgetRun horizontalWidgetRun = constraintWidget2.f2240d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = horizontalWidgetRun.f2428d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 && horizontalWidgetRun.f2425a == 3) {
                VerticalWidgetRun verticalWidgetRun = constraintWidget2.f2242e;
                if (verticalWidgetRun.f2428d == dimensionBehaviour2 && verticalWidgetRun.f2425a == 3) {
                    return;
                }
            }
            ConstraintWidget constraintWidget3 = this.f2426b;
            WidgetRun widgetRun2 = i == 0 ? constraintWidget3.f2242e : constraintWidget3.f2240d;
            if (widgetRun2.f2429e.f2405j) {
                float w = this.f2426b.m20309w();
                this.f2429e.mo20138d(i == 1 ? (int) ((widgetRun2.f2429e.f2402g / w) + 0.5f) : (int) ((w * widgetRun2.f2429e.f2402g) + 0.5f));
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    public void mo20105a(Dependency dependency) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m20104b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.f2407l.add(dependencyNode2);
        dependencyNode.f2401f = i;
        dependencyNode2.f2406k.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m20103c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.f2407l.add(dependencyNode2);
        dependencyNode.f2407l.add(this.f2429e);
        dependencyNode.f2403h = i;
        dependencyNode.f2404i = dimensionDependency;
        dependencyNode2.f2406k.add(dependencyNode);
        dimensionDependency.f2406k.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract void mo20102d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract void mo20101e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract void mo20100f();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
        if (r5 != r4) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        if (r5 != r4) goto L_0x0057;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m20099g(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L_0x002f
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2426b
            r6 = r0
            r0 = r6
            int r0 = r0.f2270s
            r7 = r0
            r0 = r6
            int r0 = r0.f2268r
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x0024
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L_0x0024:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L_0x005a
            goto L_0x0057
        L_0x002f:
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2426b
            r6 = r0
            r0 = r6
            int r0 = r0.f2276v
            r7 = r0
            r0 = r6
            int r0 = r0.f2274u
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x004f
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L_0x004f:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L_0x005a
        L_0x0057:
            r0 = r5
            r7 = r0
        L_0x005a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun.m20099g(int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final DependencyNode m20098h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2192f;
        DependencyNode dependencyNode = null;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f2190d;
        int i = C01711.f2435a[constraintAnchor2.f2191e.ordinal()];
        if (i == 1) {
            dependencyNode = constraintWidget.f2240d.f2432h;
        } else if (i == 2) {
            dependencyNode = constraintWidget.f2240d.f2433i;
        } else if (i == 3) {
            dependencyNode = constraintWidget.f2242e.f2432h;
        } else if (i == 4) {
            dependencyNode = constraintWidget.f2242e.f2416k;
        } else if (i == 5) {
            dependencyNode = constraintWidget.f2242e.f2433i;
        }
        return dependencyNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public final DependencyNode m20097i(ConstraintAnchor constraintAnchor, int i) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2192f;
        DependencyNode dependencyNode = null;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f2190d;
        WidgetRun widgetRun = i == 0 ? constraintWidget.f2240d : constraintWidget.f2242e;
        int i2 = C01711.f2435a[constraintAnchor.f2192f.f2191e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return dependencyNode;
                    }
                }
            }
            dependencyNode = widgetRun.f2433i;
            return dependencyNode;
        }
        dependencyNode = widgetRun.f2432h;
        return dependencyNode;
    }

    /* renamed from: j */
    public long mo20096j() {
        DimensionDependency dimensionDependency = this.f2429e;
        if (dimensionDependency.f2405j) {
            return dimensionDependency.f2402g;
        }
        return 0L;
    }

    /* renamed from: k */
    public boolean m20095k() {
        return this.f2431g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public abstract boolean mo20093m();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: n */
    public void m20092n(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode h = m20098h(constraintAnchor);
        DependencyNode h2 = m20098h(constraintAnchor2);
        if (h.f2405j && h2.f2405j) {
            int f = h.f2402g + constraintAnchor.m20412f();
            int f2 = h2.f2402g - constraintAnchor2.m20412f();
            int i2 = f2 - f;
            if (!this.f2429e.f2405j && this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                m20094l(i, i2);
            }
            DimensionDependency dimensionDependency = this.f2429e;
            if (dimensionDependency.f2405j) {
                if (dimensionDependency.f2402g == i2) {
                    this.f2432h.mo20138d(f);
                    this.f2433i.mo20138d(f2);
                    return;
                }
                ConstraintWidget constraintWidget = this.f2426b;
                float z = i == 0 ? constraintWidget.m20303z() : constraintWidget.m20366P();
                int i3 = f2;
                if (h == h2) {
                    f = h.f2402g;
                    i3 = h2.f2402g;
                    z = 0.5f;
                }
                this.f2432h.mo20138d((int) (f + 0.5f + (((i3 - f) - this.f2429e.f2402g) * z)));
                this.f2433i.mo20138d(this.f2432h.f2402g + this.f2429e.f2402g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public void m20091o(Dependency dependency) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public void m20090p(Dependency dependency) {
    }
}
