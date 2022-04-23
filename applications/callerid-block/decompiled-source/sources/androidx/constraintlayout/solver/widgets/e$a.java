package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/e$a.class */
class e$a {

    /* renamed from: a */
    private int f1249a;

    /* renamed from: d */
    private ConstraintAnchor f1252d;

    /* renamed from: e */
    private ConstraintAnchor f1253e;

    /* renamed from: f */
    private ConstraintAnchor f1254f;

    /* renamed from: g */
    private ConstraintAnchor f1255g;

    /* renamed from: h */
    private int f1256h;

    /* renamed from: i */
    private int f1257i;

    /* renamed from: j */
    private int f1258j;

    /* renamed from: k */
    private int f1259k;

    /* renamed from: q */
    private int f1265q;

    /* renamed from: r */
    final /* synthetic */ e f1266r;

    /* renamed from: b */
    private ConstraintWidget f1250b = null;

    /* renamed from: c */
    int f1251c = 0;

    /* renamed from: l */
    private int f1260l = 0;

    /* renamed from: m */
    private int f1261m = 0;

    /* renamed from: n */
    private int f1262n = 0;

    /* renamed from: o */
    private int f1263o = 0;

    /* renamed from: p */
    private int f1264p = 0;

    public e$a(e eVar, int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
        this.f1266r = eVar;
        this.f1249a = 0;
        this.f1256h = 0;
        this.f1257i = 0;
        this.f1258j = 0;
        this.f1259k = 0;
        this.f1265q = 0;
        this.f1249a = i;
        this.f1252d = constraintAnchor;
        this.f1253e = constraintAnchor2;
        this.f1254f = constraintAnchor3;
        this.f1255g = constraintAnchor4;
        this.f1256h = eVar.Q0();
        this.f1257i = eVar.S0();
        this.f1258j = eVar.R0();
        this.f1259k = eVar.P0();
        this.f1265q = i2;
    }

    /* renamed from: h */
    private void m13885h() {
        this.f1260l = 0;
        this.f1261m = 0;
        this.f1250b = null;
        this.f1251c = 0;
        int i = this.f1263o;
        for (int i2 = 0; i2 < i && this.f1262n + i2 < e.u1(this.f1266r); i2++) {
            ConstraintWidget constraintWidget = e.v1(this.f1266r)[this.f1262n + i2];
            if (this.f1249a == 0) {
                int Q = constraintWidget.m13982Q();
                int g1 = e.g1(this.f1266r);
                if (constraintWidget.m13983P() == 8) {
                    g1 = 0;
                }
                this.f1260l += Q + g1;
                int t1 = e.t1(this.f1266r, constraintWidget, this.f1265q);
                if (this.f1250b == null || this.f1251c < t1) {
                    this.f1250b = constraintWidget;
                    this.f1251c = t1;
                    this.f1261m = t1;
                }
            } else {
                int s1 = e.s1(this.f1266r, constraintWidget, this.f1265q);
                int t12 = e.t1(this.f1266r, constraintWidget, this.f1265q);
                int h1 = e.h1(this.f1266r);
                if (constraintWidget.m13983P() == 8) {
                    h1 = 0;
                }
                this.f1261m += t12 + h1;
                if (this.f1250b == null || this.f1251c < s1) {
                    this.f1250b = constraintWidget;
                    this.f1251c = s1;
                    this.f1260l = s1;
                }
            }
        }
    }

    /* renamed from: b */
    public void m13891b(ConstraintWidget constraintWidget) {
        int i = 0;
        int g1 = 0;
        if (this.f1249a == 0) {
            int s1 = e.s1(this.f1266r, constraintWidget, this.f1265q);
            if (constraintWidget.m13925z() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.f1264p++;
                s1 = 0;
            }
            g1 = e.g1(this.f1266r);
            if (constraintWidget.m13983P() == 8) {
            }
            this.f1260l += s1 + g1;
            int t1 = e.t1(this.f1266r, constraintWidget, this.f1265q);
            if (this.f1250b == null || this.f1251c < t1) {
                this.f1250b = constraintWidget;
                this.f1251c = t1;
                this.f1261m = t1;
            }
        } else {
            int s12 = e.s1(this.f1266r, constraintWidget, this.f1265q);
            int t12 = e.t1(this.f1266r, constraintWidget, this.f1265q);
            if (constraintWidget.m13985N() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                this.f1264p++;
                t12 = 0;
            }
            i = e.h1(this.f1266r);
            if (constraintWidget.m13983P() != 8) {
            }
            this.f1261m += t12 + i;
            if (this.f1250b == null || this.f1251c < s12) {
                this.f1250b = constraintWidget;
                this.f1251c = s12;
                this.f1260l = s12;
            }
        }
        this.f1263o++;
    }

    /* renamed from: c */
    public void m13890c() {
        this.f1251c = 0;
        this.f1250b = null;
        this.f1260l = 0;
        this.f1261m = 0;
        this.f1262n = 0;
        this.f1263o = 0;
        this.f1264p = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x052a  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0664 A[SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13889d(boolean r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 1647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.e$a.m13889d(boolean, int, boolean):void");
    }

    /* renamed from: e */
    public int m13888e() {
        return this.f1249a == 1 ? this.f1261m - e.h1(this.f1266r) : this.f1261m;
    }

    /* renamed from: f */
    public int m13887f() {
        return this.f1249a == 0 ? this.f1260l - e.g1(this.f1266r) : this.f1260l;
    }

    /* renamed from: g */
    public void m13886g(int i) {
        int i2;
        int i3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        e eVar;
        int i4 = this.f1264p;
        if (i4 != 0) {
            int i5 = this.f1263o;
            int i6 = i / i4;
            for (int i7 = 0; i7 < i5 && this.f1262n + i7 < e.u1(this.f1266r); i7++) {
                ConstraintWidget constraintWidget = e.v1(this.f1266r)[this.f1262n + i7];
                if (this.f1249a == 0) {
                    if (constraintWidget != null && constraintWidget.m13925z() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f1146j == 0) {
                        eVar = this.f1266r;
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                        dimensionBehaviour = constraintWidget.m13985N();
                        i3 = constraintWidget.m13931w();
                        i2 = i6;
                        eVar.U0(constraintWidget, dimensionBehaviour2, i2, dimensionBehaviour, i3);
                    }
                } else {
                    if (constraintWidget != null && constraintWidget.m13985N() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.f1148k == 0) {
                        eVar = this.f1266r;
                        dimensionBehaviour2 = constraintWidget.m13925z();
                        i2 = constraintWidget.m13982Q();
                        dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                        i3 = i6;
                        eVar.U0(constraintWidget, dimensionBehaviour2, i2, dimensionBehaviour, i3);
                    }
                }
            }
            m13885h();
        }
    }

    /* renamed from: i */
    public void m13884i(int i) {
        this.f1262n = i;
    }

    /* renamed from: j */
    public void m13883j(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
        this.f1249a = i;
        this.f1252d = constraintAnchor;
        this.f1253e = constraintAnchor2;
        this.f1254f = constraintAnchor3;
        this.f1255g = constraintAnchor4;
        this.f1256h = i2;
        this.f1257i = i3;
        this.f1258j = i4;
        this.f1259k = i5;
        this.f1265q = i6;
    }
}
