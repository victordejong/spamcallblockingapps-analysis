package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b.class */
public class C0473b {

    /* renamed from: a */
    private final ArrayList<ConstraintWidget> f2226a = new ArrayList<>();

    /* renamed from: b */
    private C0474a f2227b = new C0474a();

    /* renamed from: c */
    private C0493d f2228c;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b$a.class */
    public static class C0474a {

        /* renamed from: a */
        public static int f2229a = 0;

        /* renamed from: b */
        public static int f2230b = 1;

        /* renamed from: c */
        public static int f2231c = 2;

        /* renamed from: d */
        public ConstraintWidget.DimensionBehaviour f2232d;

        /* renamed from: e */
        public ConstraintWidget.DimensionBehaviour f2233e;

        /* renamed from: f */
        public int f2234f;

        /* renamed from: g */
        public int f2235g;

        /* renamed from: h */
        public int f2236h;

        /* renamed from: i */
        public int f2237i;

        /* renamed from: j */
        public int f2238j;

        /* renamed from: k */
        public boolean f2239k;

        /* renamed from: l */
        public boolean f2240l;

        /* renamed from: m */
        public int f2241m;
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/b$b.class */
    public interface AbstractC0475b {
        /* renamed from: a */
        void mo33671a();

        /* renamed from: b */
        void mo33670b(ConstraintWidget constraintWidget, C0474a c0474a);
    }

    public C0473b(C0493d c0493d) {
        this.f2228c = c0493d;
    }

    /* renamed from: a */
    private boolean m33937a(AbstractC0475b abstractC0475b, ConstraintWidget constraintWidget, int i) {
        this.f2227b.f2232d = constraintWidget.m34051B();
        this.f2227b.f2233e = constraintWidget.m34019R();
        this.f2227b.f2234f = constraintWidget.m34013U();
        this.f2227b.f2235g = constraintWidget.m33962y();
        C0474a c0474a = this.f2227b;
        c0474a.f2240l = false;
        c0474a.f2241m = i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = c0474a.f2232d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z = dimensionBehaviour == dimensionBehaviour2;
        boolean z2 = c0474a.f2233e == dimensionBehaviour2;
        boolean z3 = z && constraintWidget.f2126Z > 0.0f;
        boolean z4 = z2 && constraintWidget.f2126Z > 0.0f;
        if (z3 && constraintWidget.f2162s[0] == 4) {
            c0474a.f2232d = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z4 && constraintWidget.f2162s[1] == 4) {
            c0474a.f2233e = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        abstractC0475b.mo33670b(constraintWidget, c0474a);
        constraintWidget.m34004Y0(this.f2227b.f2236h);
        constraintWidget.m33959z0(this.f2227b.f2237i);
        constraintWidget.m33961y0(this.f2227b.f2239k);
        constraintWidget.m33980o0(this.f2227b.f2238j);
        C0474a c0474a2 = this.f2227b;
        c0474a2.f2241m = C0474a.f2229a;
        return c0474a2.f2240l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0155, code lost:
        if (r0 == r0) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x018c A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m33936b(androidx.constraintlayout.solver.widgets.C0493d r6) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0473b.m33936b(androidx.constraintlayout.solver.widgets.d):void");
    }

    /* renamed from: c */
    private void m33935c(C0493d c0493d, String str, int i, int i2) {
        int m34035J = c0493d.m34035J();
        int m34037I = c0493d.m34037I();
        c0493d.m34024O0(0);
        c0493d.m34026N0(0);
        c0493d.m34004Y0(i);
        c0493d.m33959z0(i2);
        c0493d.m34024O0(m34035J);
        c0493d.m34026N0(m34037I);
        this.f2228c.mo33737f1();
    }

    /* JADX WARN: Code restructure failed: missing block: B:202:0x0540, code lost:
        if (r27 == false) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0543, code lost:
        m33935c(r7, "2nd pass", r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0555, code lost:
        if (r7.m34013U() >= r28) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0558, code lost:
        r7.m34004Y0(r28);
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0563, code lost:
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x056b, code lost:
        if (r7.m33962y() >= r24) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x056e, code lost:
        r7.m33959z0(r24);
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x057a, code lost:
        if (r8 == false) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x057d, code lost:
        m33935c(r7, "3rd pass", r0, r0);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m33934d(androidx.constraintlayout.solver.widgets.C0493d r7, int r8, int r9, int r10, int r11, int r12, int r13, int r14, int r15, int r16) {
        /*
            Method dump skipped, instructions count: 1428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.C0473b.m33934d(androidx.constraintlayout.solver.widgets.d, int, int, int, int, int, int, int, int, int):long");
    }

    /* renamed from: e */
    public void m33933e(C0493d c0493d) {
        this.f2226a.clear();
        int size = c0493d.f2401N0.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = c0493d.f2401N0.get(i);
            ConstraintWidget.DimensionBehaviour m34051B = constraintWidget.m34051B();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (m34051B == dimensionBehaviour || constraintWidget.m34019R() == dimensionBehaviour) {
                this.f2226a.add(constraintWidget);
            }
        }
        c0493d.m33840z1();
    }
}
