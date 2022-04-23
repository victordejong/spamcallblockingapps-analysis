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
        void m13918a(ConstraintWidget constraintWidget, C0206a aVar);

        /* renamed from: b */
        void m13917b();
    }

    public C0205b(d dVar) {
        this.f1204c = dVar;
    }

    /* renamed from: a */
    private boolean m13923a(AbstractC0207b bVar, ConstraintWidget constraintWidget, boolean z) {
        this.f1203b.f1205a = constraintWidget.m13925z();
        this.f1203b.f1206b = constraintWidget.m13985N();
        this.f1203b.f1207c = constraintWidget.m13982Q();
        this.f1203b.f1208d = constraintWidget.m13931w();
        C0206a aVar = this.f1203b;
        aVar.f1213i = false;
        aVar.f1214j = z;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = aVar.f1205a;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z2 = dimensionBehaviour == dimensionBehaviour2;
        boolean z3 = aVar.f1206b == dimensionBehaviour2;
        boolean z4 = z2 && constraintWidget.f1117P > 0.0f;
        boolean z5 = z3 && constraintWidget.f1117P > 0.0f;
        if (z4 && constraintWidget.f1150l[0] == 4) {
            aVar.f1205a = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z5 && constraintWidget.f1150l[1] == 4) {
            aVar.f1206b = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        bVar.m13918a(constraintWidget, aVar);
        constraintWidget.m13998F0(this.f1203b.f1209e);
        constraintWidget.m13958i0(this.f1203b.f1210f);
        constraintWidget.m13960h0(this.f1203b.f1212h);
        constraintWidget.m13970c0(this.f1203b.f1211g);
        C0206a aVar2 = this.f1203b;
        aVar2.f1214j = false;
        return aVar2.f1213i;
    }

    /* renamed from: b */
    private void m13922b(d dVar) {
        int size = ((k) dVar).D0.size();
        AbstractC0207b W0 = dVar.W0();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i);
            if (!(constraintWidget instanceof f) && (!((DependencyNode) ((WidgetRun) constraintWidget.f1134d).e).j || !((DependencyNode) ((WidgetRun) constraintWidget.f1136e).e).j)) {
                ConstraintWidget.DimensionBehaviour t = constraintWidget.m13937t(0);
                boolean z = true;
                ConstraintWidget.DimensionBehaviour t2 = constraintWidget.m13937t(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (t != dimensionBehaviour || constraintWidget.f1146j == 1 || t2 != dimensionBehaviour || constraintWidget.f1148k == 1) {
                    z = false;
                }
                if (!z) {
                    m13923a(W0, constraintWidget, false);
                    C0201e eVar = dVar.I0;
                    if (eVar != null) {
                        eVar.f1054a++;
                    }
                }
            }
        }
        W0.m13917b();
    }

    /* renamed from: c */
    private void m13921c(d dVar, String str, int i, int i2) {
        int F = dVar.m13999F();
        int E = dVar.m14001E();
        dVar.m13932v0(0);
        dVar.m13934u0(0);
        dVar.m13998F0(i);
        dVar.m13958i0(i2);
        dVar.m13932v0(F);
        dVar.m13934u0(E);
        this.f1204c.M0();
    }

    /* renamed from: d */
    public long m13920d(d dVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        boolean z2;
        boolean z3;
        int i11;
        C0201e eVar;
        AbstractC0207b W0 = dVar.W0();
        int size = ((k) dVar).D0.size();
        int Q = dVar.m13982Q();
        int w = dVar.m13931w();
        boolean b = C0214i.m13878b(i, 128);
        boolean z4 = b || C0214i.m13878b(i, 64);
        boolean z5 = z4;
        if (z4) {
            int i12 = 0;
            while (true) {
                z5 = z4;
                if (i12 >= size) {
                    break;
                }
                ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i12);
                ConstraintWidget.DimensionBehaviour z6 = constraintWidget.m13925z();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                boolean z7 = (z6 == dimensionBehaviour) && (constraintWidget.m13985N() == dimensionBehaviour) && constraintWidget.m13935u() > 0.0f;
                if ((!constraintWidget.m13976W() || !z7) && ((!constraintWidget.m13974Y() || !z7) && !(constraintWidget instanceof j) && !constraintWidget.m13976W() && !constraintWidget.m13974Y())) {
                    i12++;
                }
            }
            z5 = false;
        }
        if (z5 && (eVar = C0199d.f1034r) != null) {
            eVar.f1056c++;
        }
        if (z5 && ((i4 == 1073741824 && i6 == 1073741824) || b)) {
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
                z3 = dVar.T0(b);
                i11 = 2;
            } else {
                z3 = dVar.U0(b);
                if (i4 == 1073741824) {
                    z3 &= dVar.V0(b, 0);
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                if (i6 == 1073741824) {
                    i11++;
                    z3 = dVar.V0(b, 1) & z3;
                }
            }
            z = z3;
            i10 = i11;
            if (z3) {
                dVar.J0(i4 == 1073741824, i6 == 1073741824);
                z = z3;
                i10 = i11;
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (z && i10 == 2) {
            return 0L;
        }
        if (size > 0) {
            m13922b(dVar);
        }
        int X0 = dVar.X0();
        int size2 = this.f1202a.size();
        if (size > 0) {
            m13921c(dVar, "First pass", Q, w);
        }
        int i13 = X0;
        if (size2 > 0) {
            ConstraintWidget.DimensionBehaviour z8 = dVar.m13925z();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z9 = z8 == dimensionBehaviour2;
            boolean z10 = dVar.m13985N() == dimensionBehaviour2;
            int max = Math.max(dVar.m13982Q(), this.f1204c.m13999F());
            int max2 = Math.max(dVar.m13931w(), this.f1204c.m14001E());
            boolean z11 = false;
            for (int i14 = 0; i14 < size2; i14++) {
                j jVar = (ConstraintWidget) this.f1202a.get(i14);
                if (!(jVar instanceof j)) {
                    z11 = z11;
                } else {
                    int Q2 = jVar.m13982Q();
                    int w2 = jVar.m13931w();
                    boolean a = z11 | m13923a(W0, jVar, true);
                    C0201e eVar2 = dVar.I0;
                    if (eVar2 != null) {
                        eVar2.f1055b++;
                    }
                    int Q3 = jVar.m13982Q();
                    int w3 = jVar.m13931w();
                    max = max;
                    if (Q3 != Q2) {
                        jVar.m13998F0(Q3);
                        max = max;
                        if (z9) {
                            max = max;
                            if (jVar.m13991J() > max) {
                                max = Math.max(max, jVar.m13991J() + jVar.m13949n(ConstraintAnchor.Type.RIGHT).m14021c());
                            }
                        }
                        a = true;
                    }
                    max2 = max2;
                    if (w3 != w2) {
                        jVar.m13958i0(w3);
                        max2 = max2;
                        if (z10) {
                            max2 = max2;
                            if (jVar.m13943q() > max2) {
                                max2 = Math.max(max2, jVar.m13943q() + jVar.m13949n(ConstraintAnchor.Type.BOTTOM).m14021c());
                            }
                        }
                        a = true;
                    }
                    z11 = a | jVar.W0();
                }
            }
            int i15 = 0;
            boolean z12 = z11;
            int i16 = max2;
            while (i15 < 2) {
                int i17 = i16;
                for (int i18 = 0; i18 < size2; i18++) {
                    ConstraintWidget constraintWidget2 = this.f1202a.get(i18);
                    if ((!(constraintWidget2 instanceof AbstractC0213g) || (constraintWidget2 instanceof j)) && !(constraintWidget2 instanceof f) && constraintWidget2.m13983P() != 8 && ((!((DependencyNode) ((WidgetRun) constraintWidget2.f1134d).e).j || !((DependencyNode) ((WidgetRun) constraintWidget2.f1136e).e).j) && !(constraintWidget2 instanceof j))) {
                        int Q4 = constraintWidget2.m13982Q();
                        int w4 = constraintWidget2.m13931w();
                        int o = constraintWidget2.m13947o();
                        boolean a2 = z12 | m13923a(W0, constraintWidget2, true);
                        C0201e eVar3 = dVar.I0;
                        if (eVar3 != null) {
                            eVar3.f1055b++;
                        }
                        int Q5 = constraintWidget2.m13982Q();
                        int w5 = constraintWidget2.m13931w();
                        int i19 = max;
                        if (Q5 != Q4) {
                            constraintWidget2.m13998F0(Q5);
                            i19 = max;
                            if (z9) {
                                i19 = max;
                                if (constraintWidget2.m13991J() > max) {
                                    i19 = Math.max(max, constraintWidget2.m13991J() + constraintWidget2.m13949n(ConstraintAnchor.Type.RIGHT).m14021c());
                                }
                            }
                            a2 = true;
                        }
                        int i20 = i17;
                        if (w5 != w4) {
                            constraintWidget2.m13958i0(w5);
                            i20 = i17;
                            if (z10) {
                                i20 = i17;
                                if (constraintWidget2.m13943q() > i17) {
                                    i20 = Math.max(i17, constraintWidget2.m13943q() + constraintWidget2.m13949n(ConstraintAnchor.Type.BOTTOM).m14021c());
                                }
                            }
                            a2 = true;
                        }
                        max = i19;
                        i17 = i20;
                        z12 = a2;
                        if (constraintWidget2.m13979T()) {
                            max = i19;
                            i17 = i20;
                            z12 = a2;
                            if (o != constraintWidget2.m13947o()) {
                                z12 = true;
                                i17 = i20;
                                max = i19;
                            }
                        }
                    } else {
                        max = max;
                        z12 = z12;
                    }
                }
                if (z12) {
                    m13921c(dVar, "intermediate pass", Q, w);
                    z12 = false;
                }
                i15++;
                i16 = i17;
            }
            if (z12) {
                m13921c(dVar, "2nd pass", Q, w);
                if (dVar.m13982Q() < max) {
                    dVar.m13998F0(max);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (dVar.m13931w() < i16) {
                    dVar.m13958i0(i16);
                    z2 = true;
                }
                if (z2) {
                    m13921c(dVar, "3rd pass", Q, w);
                }
            }
            i13 = X0;
        }
        dVar.i1(i13);
        return 0L;
    }

    /* renamed from: e */
    public void m13919e(d dVar) {
        this.f1202a.clear();
        int size = ((k) dVar).D0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) ((k) dVar).D0.get(i);
            ConstraintWidget.DimensionBehaviour z = constraintWidget.m13925z();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (z != dimensionBehaviour) {
                ConstraintWidget.DimensionBehaviour z2 = constraintWidget.m13925z();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (!(z2 == dimensionBehaviour2 || constraintWidget.m13985N() == dimensionBehaviour || constraintWidget.m13985N() == dimensionBehaviour2)) {
                }
            }
            this.f1202a.add(constraintWidget);
        }
        dVar.Z0();
    }
}
