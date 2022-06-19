package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun.class */
public abstract class WidgetRun implements AbstractC0477d {

    /* renamed from: a */
    public int f2210a;

    /* renamed from: b */
    ConstraintWidget f2211b;

    /* renamed from: c */
    C0486l f2212c;

    /* renamed from: d */
    protected ConstraintWidget.DimensionBehaviour f2213d;

    /* renamed from: e */
    C0479f f2214e = new C0479f(this);

    /* renamed from: f */
    public int f2215f = 0;

    /* renamed from: g */
    boolean f2216g = false;

    /* renamed from: h */
    public DependencyNode f2217h = new DependencyNode(this);

    /* renamed from: i */
    public DependencyNode f2218i = new DependencyNode(this);

    /* renamed from: j */
    protected RunType f2219j = RunType.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType.class */
    public enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/WidgetRun$a.class */
    public static /* synthetic */ class C0471a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2225a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2225a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2225a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2225a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2225a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2225a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f2211b = constraintWidget;
    }

    /* renamed from: l */
    private void m33941l(int i, int i2) {
        int i3 = this.f2210a;
        if (i3 == 0) {
            this.f2214e.mo33914d(m33945g(i2, i));
        } else if (i3 == 1) {
            this.f2214e.mo33914d(Math.min(m33945g(this.f2214e.f2253m, i), i2));
        } else if (i3 == 2) {
            ConstraintWidget m34031L = this.f2211b.m34031L();
            if (m34031L == null) {
                return;
            }
            C0479f c0479f = (i == 0 ? m34031L.f2136f : m34031L.f2138g).f2214e;
            if (!c0479f.f2198j) {
                return;
            }
            ConstraintWidget constraintWidget = this.f2211b;
            this.f2214e.mo33914d(m33945g((int) ((c0479f.f2195g * (i == 0 ? constraintWidget.f2168v : constraintWidget.f2174y)) + 0.5f), i));
        } else if (i3 != 3) {
        } else {
            ConstraintWidget constraintWidget2 = this.f2211b;
            WidgetRun widgetRun = constraintWidget2.f2136f;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun.f2213d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 && widgetRun.f2210a == 3) {
                C0487m c0487m = constraintWidget2.f2138g;
                if (c0487m.f2213d == dimensionBehaviour2 && c0487m.f2210a == 3) {
                    return;
                }
            }
            if (i == 0) {
                widgetRun = constraintWidget2.f2138g;
            }
            if (!widgetRun.f2214e.f2198j) {
                return;
            }
            float m33966w = constraintWidget2.m33966w();
            this.f2214e.mo33914d(i == 1 ? (int) ((widgetRun.f2214e.f2195g / m33966w) + 0.5f) : (int) ((m33966w * widgetRun.f2214e.f2195g) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.AbstractC0477d
    /* renamed from: a */
    public void mo33892a(AbstractC0477d abstractC0477d) {
    }

    /* renamed from: b */
    public final void m33947b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.f2200l.add(dependencyNode2);
        dependencyNode.f2194f = i;
        dependencyNode2.f2199k.add(dependencyNode);
    }

    /* renamed from: c */
    public final void m33946c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, C0479f c0479f) {
        dependencyNode.f2200l.add(dependencyNode2);
        dependencyNode.f2200l.add(this.f2214e);
        dependencyNode.f2196h = i;
        dependencyNode.f2197i = c0479f;
        dependencyNode2.f2199k.add(dependencyNode);
        c0479f.f2199k.add(dependencyNode);
    }

    /* renamed from: d */
    public abstract void mo33891d();

    /* renamed from: e */
    public abstract void mo33890e();

    /* renamed from: f */
    public abstract void mo33889f();

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0054, code lost:
        if (r5 != r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
        if (r5 != r4) goto L14;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m33945g(int r4, int r5) {
        /*
            r3 = this;
            r0 = r5
            if (r0 != 0) goto L2f
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2211b
            r6 = r0
            r0 = r6
            int r0 = r0.f2166u
            r7 = r0
            r0 = r6
            int r0 = r0.f2164t
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L24
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L24:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L5a
            goto L57
        L2f:
            r0 = r3
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2211b
            r6 = r0
            r0 = r6
            int r0 = r0.f2172x
            r7 = r0
            r0 = r6
            int r0 = r0.f2170w
            r1 = r4
            int r0 = java.lang.Math.max(r0, r1)
            r5 = r0
            r0 = r7
            if (r0 <= 0) goto L4f
            r0 = r7
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)
            r5 = r0
        L4f:
            r0 = r4
            r7 = r0
            r0 = r5
            r1 = r4
            if (r0 == r1) goto L5a
        L57:
            r0 = r5
            r7 = r0
        L5a:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun.m33945g(int, int):int");
    }

    /* renamed from: h */
    public final DependencyNode m33944h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2072f;
        DependencyNode dependencyNode = null;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f2070d;
        int i = C0471a.f2225a[constraintAnchor2.f2071e.ordinal()];
        if (i == 1) {
            dependencyNode = constraintWidget.f2136f.f2217h;
        } else if (i == 2) {
            dependencyNode = constraintWidget.f2136f.f2218i;
        } else if (i == 3) {
            dependencyNode = constraintWidget.f2138g.f2217h;
        } else if (i == 4) {
            dependencyNode = constraintWidget.f2138g.f2265k;
        } else if (i == 5) {
            dependencyNode = constraintWidget.f2138g.f2218i;
        }
        return dependencyNode;
    }

    /* renamed from: i */
    public final DependencyNode m33943i(ConstraintAnchor constraintAnchor, int i) {
        DependencyNode dependencyNode;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f2072f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.f2070d;
        C0484k c0484k = i == 0 ? constraintWidget.f2136f : constraintWidget.f2138g;
        int i2 = C0471a.f2225a[constraintAnchor2.f2071e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        dependencyNode = null;
                        return dependencyNode;
                    }
                }
            }
            dependencyNode = c0484k.f2218i;
            return dependencyNode;
        }
        dependencyNode = c0484k.f2217h;
        return dependencyNode;
    }

    /* renamed from: j */
    public long mo33932j() {
        C0479f c0479f = this.f2214e;
        if (c0479f.f2198j) {
            return c0479f.f2195g;
        }
        return 0L;
    }

    /* renamed from: k */
    public boolean m33942k() {
        return this.f2216g;
    }

    /* renamed from: m */
    public abstract boolean mo33888m();

    /* renamed from: n */
    public void m33940n(AbstractC0477d abstractC0477d, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode m33944h = m33944h(constraintAnchor);
        DependencyNode m33944h2 = m33944h(constraintAnchor2);
        if (!m33944h.f2198j || !m33944h2.f2198j) {
            return;
        }
        int m34069f = m33944h.f2195g + constraintAnchor.m34069f();
        int m34069f2 = m33944h2.f2195g - constraintAnchor2.m34069f();
        int i2 = m34069f2 - m34069f;
        if (!this.f2214e.f2198j && this.f2213d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            m33941l(i, i2);
        }
        C0479f c0479f = this.f2214e;
        if (!c0479f.f2198j) {
            return;
        }
        if (c0479f.f2195g == i2) {
            this.f2217h.mo33914d(m34069f);
            this.f2218i.mo33914d(m34069f2);
            return;
        }
        ConstraintWidget constraintWidget = this.f2211b;
        float m33960z = i == 0 ? constraintWidget.m33960z() : constraintWidget.m34023P();
        int i3 = m34069f;
        if (m33944h == m33944h2) {
            i3 = m33944h.f2195g;
            m34069f2 = m33944h2.f2195g;
            m33960z = 0.5f;
        }
        this.f2217h.mo33914d((int) (i3 + 0.5f + (((m34069f2 - i3) - this.f2214e.f2195g) * m33960z)));
        this.f2218i.mo33914d(this.f2217h.f2195g + this.f2214e.f2195g);
    }

    /* renamed from: o */
    public void m33939o(AbstractC0477d abstractC0477d) {
    }

    /* renamed from: p */
    public void m33938p(AbstractC0477d abstractC0477d) {
    }
}
