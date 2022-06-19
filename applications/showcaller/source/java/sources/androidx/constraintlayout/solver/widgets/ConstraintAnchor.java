package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0457c;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.analyzer.C0481h;
import androidx.constraintlayout.solver.widgets.analyzer.C0489n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {

    /* renamed from: b */
    private int f2068b;

    /* renamed from: c */
    private boolean f2069c;

    /* renamed from: d */
    public final ConstraintWidget f2070d;

    /* renamed from: e */
    public final Type f2071e;

    /* renamed from: f */
    public ConstraintAnchor f2072f;

    /* renamed from: i */
    SolverVariable f2075i;

    /* renamed from: a */
    private HashSet<ConstraintAnchor> f2067a = null;

    /* renamed from: g */
    public int f2073g = 0;

    /* renamed from: h */
    int f2074h = -1;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.class */
    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$a.class */
    public static /* synthetic */ class C0468a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2086a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            f2086a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2086a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2086a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2086a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2086a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2086a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2086a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2086a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2086a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f2070d = constraintWidget;
        this.f2071e = type;
    }

    /* renamed from: a */
    public boolean m34074a(ConstraintAnchor constraintAnchor, int i) {
        return m34073b(constraintAnchor, i, -1, false);
    }

    /* renamed from: b */
    public boolean m34073b(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            m34058q();
            return true;
        } else if (!z && !m34059p(constraintAnchor)) {
            return false;
        } else {
            this.f2072f = constraintAnchor;
            if (constraintAnchor.f2067a == null) {
                constraintAnchor.f2067a = new HashSet<>();
            }
            HashSet<ConstraintAnchor> hashSet = this.f2072f.f2067a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            if (i > 0) {
                this.f2073g = i;
            } else {
                this.f2073g = 0;
            }
            this.f2074h = i2;
            return true;
        }
    }

    /* renamed from: c */
    public void m34072c(int i, ArrayList<C0489n> arrayList, C0489n c0489n) {
        HashSet<ConstraintAnchor> hashSet = this.f2067a;
        if (hashSet != null) {
            Iterator<ConstraintAnchor> it = hashSet.iterator();
            while (it.hasNext()) {
                C0481h.m33904a(it.next().f2070d, i, arrayList, c0489n);
            }
        }
    }

    /* renamed from: d */
    public HashSet<ConstraintAnchor> m34071d() {
        return this.f2067a;
    }

    /* renamed from: e */
    public int m34070e() {
        if (!this.f2069c) {
            return 0;
        }
        return this.f2068b;
    }

    /* renamed from: f */
    public int m34069f() {
        ConstraintAnchor constraintAnchor;
        if (this.f2070d.m34015T() == 8) {
            return 0;
        }
        return (this.f2074h <= -1 || (constraintAnchor = this.f2072f) == null || constraintAnchor.f2070d.m34015T() != 8) ? this.f2073g : this.f2074h;
    }

    /* renamed from: g */
    public final ConstraintAnchor m34068g() {
        switch (C0468a.f2086a[this.f2071e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f2070d.f2112M;
            case 3:
                return this.f2070d.f2108K;
            case 4:
                return this.f2070d.f2114N;
            case 5:
                return this.f2070d.f2110L;
            default:
                throw new AssertionError(this.f2071e.name());
        }
    }

    /* renamed from: h */
    public ConstraintWidget m34067h() {
        return this.f2070d;
    }

    /* renamed from: i */
    public SolverVariable m34066i() {
        return this.f2075i;
    }

    /* renamed from: j */
    public ConstraintAnchor m34065j() {
        return this.f2072f;
    }

    /* renamed from: k */
    public Type m34064k() {
        return this.f2071e;
    }

    /* renamed from: l */
    public boolean m34063l() {
        HashSet<ConstraintAnchor> hashSet = this.f2067a;
        if (hashSet == null) {
            return false;
        }
        Iterator<ConstraintAnchor> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m34068g().m34060o()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public boolean m34062m() {
        HashSet<ConstraintAnchor> hashSet = this.f2067a;
        boolean z = false;
        if (hashSet == null) {
            return false;
        }
        if (hashSet.size() > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: n */
    public boolean m34061n() {
        return this.f2069c;
    }

    /* renamed from: o */
    public boolean m34060o() {
        return this.f2072f != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r0 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.CENTER_Y) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0105, code lost:
        if (r0 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.CENTER_X) goto L48;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m34059p(androidx.constraintlayout.solver.widgets.ConstraintAnchor r5) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintAnchor.m34059p(androidx.constraintlayout.solver.widgets.ConstraintAnchor):boolean");
    }

    /* renamed from: q */
    public void m34058q() {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor = this.f2072f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f2067a) != null) {
            hashSet.remove(this);
            if (this.f2072f.f2067a.size() == 0) {
                this.f2072f.f2067a = null;
            }
        }
        this.f2067a = null;
        this.f2072f = null;
        this.f2073g = 0;
        this.f2074h = -1;
        this.f2069c = false;
        this.f2068b = 0;
    }

    /* renamed from: r */
    public void m34057r() {
        this.f2069c = false;
        this.f2068b = 0;
    }

    /* renamed from: s */
    public void m34056s(C0457c c0457c) {
        SolverVariable solverVariable = this.f2075i;
        if (solverVariable == null) {
            this.f2075i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.m34168d();
        }
    }

    /* renamed from: t */
    public void m34055t(int i) {
        this.f2068b = i;
        this.f2069c = true;
    }

    public String toString() {
        return this.f2070d.m33970u() + ":" + this.f2071e.toString();
    }

    /* renamed from: u */
    public void m34054u(int i) {
        if (m34060o()) {
            this.f2074h = i;
        }
    }
}
