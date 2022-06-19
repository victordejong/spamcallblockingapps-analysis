package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.C0199d;
import androidx.constraintlayout.solver.C0201e;
import androidx.constraintlayout.solver.widgets.AbstractC0213g;
import androidx.constraintlayout.solver.widgets.C0214i;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.d;
import androidx.constraintlayout.solver.widgets.f;
import androidx.constraintlayout.solver.widgets.j;
import androidx.constraintlayout.solver.widgets.k;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b.class */
public class C0205b {

    /* renamed from: a */
    private final ArrayList<ConstraintWidget> f1202a = new ArrayList<>();

    /* renamed from: b */
    private C0206a f1203b = new C0206a();

    /* renamed from: c */
    private d f1204c;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b$a.class */
    public static class C0206a {

        /* renamed from: a */
        public ConstraintWidget.DimensionBehaviour f1205a;

        /* renamed from: b */
        public ConstraintWidget.DimensionBehaviour f1206b;

        /* renamed from: c */
        public int f1207c;

        /* renamed from: d */
        public int f1208d;

        /* renamed from: e */
        public int f1209e;

        /* renamed from: f */
        public int f1210f;

        /* renamed from: g */
        public int f1211g;

        /* renamed from: h */
        public boolean f1212h;

        /* renamed from: i */
        public boolean f1213i;

        /* renamed from: j */
        public boolean f1214j;
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b$b.class */
    public interface AbstractC0207b {
        /* renamed from: a */
        void m13918a(ConstraintWidget constraintWidget, C0206a c0206a);

        /* renamed from: b */
        void m13917b();
    }

    public C0205b(d dVar) {
        this.f1204c = dVar;
    }

    /* renamed from: a */
    private boolean m13923a(AbstractC0207b abstractC0207b, ConstraintWidget constraintWidget, boolean z) {
        this.f1203b.f1205a = constraintWidget.m13925z();
        this.f1203b.f1206b = constraintWidget.m13985N();
        this.f1203b.f1207c = constraintWidget.m13982Q();
        this.f1203b.f1208d = constraintWidget.m13931w();
        C0206a c0206a = this.f1203b;
        c0206a.f1213i = false;
        c0206a.f1214j = z;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = c0206a.f1205a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z2 = dimensionBehaviour == dimensionBehaviour2;
        boolean z3 = c0206a.f1206b == dimensionBehaviour2;
        boolean z4 = z2 && constraintWidget.f1117P > 0.0f;
        boolean z5 = z3 && constraintWidget.f1117P > 0.0f;
        if (z4 && constraintWidget.f1150l[0] == 4) {
            c0206a.f1205a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z5 && constraintWidget.f1150l[1] == 4) {
            c0206a.f1206b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        abstractC0207b.m13918a(constraintWidget, c0206a);
        constraintWidget.m13998F0(this.f1203b.f1209e);
        constraintWidget.m13958i0(this.f1203b.f1210f);
        constraintWidget.m13960h0(this.f1203b.f1212h);
        constraintWidget.m13970c0(this.f1203b.f1211g);
        C0206a c0206a2 = this.f1203b;
        c0206a2.f1214j = false;
        return c0206a2.f1213i;
    }

    /* renamed from: b */
    private void m13922b(d dVar) {
        int size = ((k) dVar).D0.size();
        AbstractC0207b W0 = dVar.W0();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i);
            if (!(constraintWidget instanceof f) && (!((DependencyNode) ((WidgetRun) constraintWidget.f1134d).e).j || !((DependencyNode) ((WidgetRun) constraintWidget.f1136e).e).j)) {
                ConstraintWidget.DimensionBehaviour m13937t = constraintWidget.m13937t(0);
                boolean z = true;
                ConstraintWidget.DimensionBehaviour m13937t2 = constraintWidget.m13937t(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (m13937t != dimensionBehaviour || constraintWidget.f1146j == 1 || m13937t2 != dimensionBehaviour || constraintWidget.f1148k == 1) {
                    z = false;
                }
                if (!z) {
                    m13923a(W0, constraintWidget, false);
                    C0201e c0201e = dVar.I0;
                    if (c0201e != null) {
                        c0201e.f1054a++;
                    }
                }
            }
        }
        W0.m13917b();
    }

    /* renamed from: c */
    private void m13921c(d dVar, String str, int i, int i2) {
        int m13999F = dVar.m13999F();
        int m14001E = dVar.m14001E();
        dVar.m13932v0(0);
        dVar.m13934u0(0);
        dVar.m13998F0(i);
        dVar.m13958i0(i2);
        dVar.m13932v0(m13999F);
        dVar.m13934u0(m14001E);
        this.f1204c.M0();
    }

    /* renamed from: d */
    public long m13920d(d dVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        boolean z2;
        int i11;
        boolean z3;
        boolean z4;
        boolean z5;
        int i12;
        C0201e c0201e;
        AbstractC0207b W0 = dVar.W0();
        int size = ((k) dVar).D0.size();
        int m13982Q = dVar.m13982Q();
        int m13931w = dVar.m13931w();
        boolean m13878b = C0214i.m13878b(i, 128);
        boolean z6 = m13878b || C0214i.m13878b(i, 64);
        boolean z7 = z6;
        if (z6) {
            int i13 = 0;
            while (true) {
                z7 = z6;
                if (i13 >= size) {
                    break;
                }
                ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i13);
                ConstraintWidget.DimensionBehaviour m13925z = constraintWidget.m13925z();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z8 = (m13925z == dimensionBehaviour) && (constraintWidget.m13985N() == dimensionBehaviour) && constraintWidget.m13935u() > 0.0f;
                if ((!constraintWidget.m13976W() || !z8) && ((!constraintWidget.m13974Y() || !z8) && !(constraintWidget instanceof j) && !constraintWidget.m13976W() && !constraintWidget.m13974Y())) {
                    i13++;
                }
            }
            z7 = false;
        }
        if (z7 && (c0201e = C0199d.f1034r) != null) {
            c0201e.f1056c++;
        }
        if (z7 && ((i4 == 1073741824 && i6 == 1073741824) || m13878b)) {
            int min = Math.min(dVar.m14003D(), i5);
            int min2 = Math.min(dVar.m14005C(), i7);
            if (i4 == 1073741824 && dVar.m13982Q() != min) {
                dVar.m13998F0(min);
                dVar.Z0();
            }
            if (i6 == 1073741824 && dVar.m13931w() != min2) {
                dVar.m13958i0(min2);
                dVar.Z0();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z5 = dVar.T0(m13878b);
                i12 = 2;
            } else {
                z5 = dVar.U0(m13878b);
                if (i4 == 1073741824) {
                    z5 &= dVar.V0(m13878b, 0);
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                if (i6 == 1073741824) {
                    i12++;
                    z5 = dVar.V0(m13878b, 1) & z5;
                }
            }
            z = z5;
            i10 = i12;
            if (z5) {
                dVar.J0(i4 == 1073741824, i6 == 1073741824);
                z = z5;
                i10 = i12;
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (!z || i10 != 2) {
            if (size > 0) {
                m13922b(dVar);
            }
            int X0 = dVar.X0();
            int size2 = this.f1202a.size();
            if (size > 0) {
                m13921c(dVar, "First pass", m13982Q, m13931w);
            }
            int i14 = X0;
            if (size2 > 0) {
                ConstraintWidget.DimensionBehaviour m13925z2 = dVar.m13925z();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z9 = m13925z2 == dimensionBehaviour2;
                boolean z10 = dVar.m13985N() == dimensionBehaviour2;
                int max = Math.max(dVar.m13982Q(), this.f1204c.m13999F());
                int max2 = Math.max(dVar.m13931w(), this.f1204c.m14001E());
                int i15 = 0;
                boolean z11 = false;
                while (i15 < size2) {
                    j jVar = (ConstraintWidget) this.f1202a.get(i15);
                    if (!(jVar instanceof j)) {
                        z4 = z11;
                    } else {
                        int m13982Q2 = jVar.m13982Q();
                        int m13931w2 = jVar.m13931w();
                        boolean m13923a = z11 | m13923a(W0, jVar, true);
                        C0201e c0201e2 = dVar.I0;
                        if (c0201e2 != null) {
                            c0201e2.f1055b++;
                        }
                        int m13982Q3 = jVar.m13982Q();
                        int m13931w3 = jVar.m13931w();
                        int i16 = max;
                        if (m13982Q3 != m13982Q2) {
                            jVar.m13998F0(m13982Q3);
                            i16 = max;
                            if (z9) {
                                i16 = max;
                                if (jVar.m13991J() > max) {
                                    i16 = Math.max(max, jVar.m13991J() + jVar.m13949n(ConstraintAnchor.Type.RIGHT).m14021c());
                                }
                            }
                            m13923a = true;
                        }
                        int i17 = max2;
                        if (m13931w3 != m13931w2) {
                            jVar.m13958i0(m13931w3);
                            i17 = max2;
                            if (z10) {
                                i17 = max2;
                                if (jVar.m13943q() > max2) {
                                    i17 = Math.max(max2, jVar.m13943q() + jVar.m13949n(ConstraintAnchor.Type.BOTTOM).m14021c());
                                }
                            }
                            m13923a = true;
                        }
                        z4 = m13923a | jVar.W0();
                        max2 = i17;
                        max = i16;
                    }
                    i15++;
                    z11 = z4;
                }
                boolean z12 = z11;
                int i18 = max2;
                int i19 = 0;
                while (i19 < 2) {
                    int i20 = 0;
                    int i21 = i18;
                    int i22 = i19;
                    while (i20 < size2) {
                        ConstraintWidget constraintWidget2 = this.f1202a.get(i20);
                        if ((!(constraintWidget2 instanceof AbstractC0213g) || (constraintWidget2 instanceof j)) && !(constraintWidget2 instanceof f) && constraintWidget2.m13983P() != 8 && ((!((DependencyNode) ((WidgetRun) constraintWidget2.f1134d).e).j || !((DependencyNode) ((WidgetRun) constraintWidget2.f1136e).e).j) && !(constraintWidget2 instanceof j))) {
                            int m13982Q4 = constraintWidget2.m13982Q();
                            int m13931w4 = constraintWidget2.m13931w();
                            int m13947o = constraintWidget2.m13947o();
                            boolean m13923a2 = z12 | m13923a(W0, constraintWidget2, true);
                            C0201e c0201e3 = dVar.I0;
                            if (c0201e3 != null) {
                                c0201e3.f1055b++;
                            }
                            int m13982Q5 = constraintWidget2.m13982Q();
                            int m13931w5 = constraintWidget2.m13931w();
                            int i23 = max;
                            if (m13982Q5 != m13982Q4) {
                                constraintWidget2.m13998F0(m13982Q5);
                                i23 = max;
                                if (z9) {
                                    i23 = max;
                                    if (constraintWidget2.m13991J() > max) {
                                        i23 = Math.max(max, constraintWidget2.m13991J() + constraintWidget2.m13949n(ConstraintAnchor.Type.RIGHT).m14021c());
                                    }
                                }
                                m13923a2 = true;
                            }
                            int i24 = i21;
                            boolean z13 = m13923a2;
                            if (m13931w5 != m13931w4) {
                                constraintWidget2.m13958i0(m13931w5);
                                i24 = i21;
                                if (z10) {
                                    i24 = i21;
                                    if (constraintWidget2.m13943q() > i21) {
                                        i24 = Math.max(i21, constraintWidget2.m13943q() + constraintWidget2.m13949n(ConstraintAnchor.Type.BOTTOM).m14021c());
                                    }
                                }
                                z13 = true;
                            }
                            i11 = i23;
                            i21 = i24;
                            z3 = z13;
                            if (constraintWidget2.m13979T()) {
                                i11 = i23;
                                i21 = i24;
                                z3 = z13;
                                if (m13947o != constraintWidget2.m13947o()) {
                                    z3 = true;
                                    i21 = i24;
                                    i11 = i23;
                                }
                            }
                        } else {
                            i11 = max;
                            z3 = z12;
                        }
                        i20++;
                        max = i11;
                        z12 = z3;
                    }
                    if (z12) {
                        m13921c(dVar, "intermediate pass", m13982Q, m13931w);
                        z12 = false;
                    }
                    i19 = i22 + 1;
                    i18 = i21;
                }
                if (z12) {
                    m13921c(dVar, "2nd pass", m13982Q, m13931w);
                    if (dVar.m13982Q() < max) {
                        dVar.m13998F0(max);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (dVar.m13931w() < i18) {
                        dVar.m13958i0(i18);
                        z2 = true;
                    }
                    if (z2) {
                        m13921c(dVar, "3rd pass", m13982Q, m13931w);
                    }
                }
                i14 = X0;
            }
            dVar.i1(i14);
            return 0L;
        }
        return 0L;
    }

    /* renamed from: e */
    public void m13919e(d dVar) {
        this.f1202a.clear();
        int size = ((k) dVar).D0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i);
            ConstraintWidget.DimensionBehaviour m13925z = constraintWidget.m13925z();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (m13925z != dimensionBehaviour) {
                ConstraintWidget.DimensionBehaviour m13925z2 = constraintWidget.m13925z();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (m13925z2 != dimensionBehaviour2 && constraintWidget.m13985N() != dimensionBehaviour && constraintWidget.m13985N() != dimensionBehaviour2) {
                }
            }
            this.f1202a.add(constraintWidget);
        }
        dVar.Z0();
    }
}
