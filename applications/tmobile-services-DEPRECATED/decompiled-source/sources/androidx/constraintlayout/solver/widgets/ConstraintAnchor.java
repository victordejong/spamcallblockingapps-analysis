package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.analyzer.Grouping;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {

    /* renamed from: b */
    private int f2188b;

    /* renamed from: c */
    private boolean f2189c;

    /* renamed from: d */
    public final ConstraintWidget f2190d;

    /* renamed from: e */
    public final Type f2191e;

    /* renamed from: f */
    public ConstraintAnchor f2192f;

    /* renamed from: i */
    SolverVariable f2195i;

    /* renamed from: a */
    private HashSet<ConstraintAnchor> f2187a = null;

    /* renamed from: g */
    public int f2193g = 0;

    /* renamed from: h */
    int f2194h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$1.class */
    public static /* synthetic */ class C01661 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2196a;

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
            f2196a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2196a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2196a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2196a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2196a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2196a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2196a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2196a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2196a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

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

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f2190d = constraintWidget;
        this.f2191e = type;
    }

    /* renamed from: a */
    public boolean m20417a(ConstraintAnchor constraintAnchor, int i) {
        return m20416b(constraintAnchor, i, -1, false);
    }

    /* renamed from: b */
    public boolean m20416b(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            m20401q();
            return true;
        } else if (!z && !m20402p(constraintAnchor)) {
            return false;
        } else {
            this.f2192f = constraintAnchor;
            if (constraintAnchor.f2187a == null) {
                constraintAnchor.f2187a = new HashSet<>();
            }
            HashSet<ConstraintAnchor> hashSet = this.f2192f.f2187a;
            if (hashSet != null) {
                hashSet.add(this);
            }
            if (i > 0) {
                this.f2193g = i;
            } else {
                this.f2193g = 0;
            }
            this.f2194h = i2;
            return true;
        }
    }

    /* renamed from: c */
    public void m20415c(int i, ArrayList<WidgetGroup> arrayList, WidgetGroup widgetGroup) {
        HashSet<ConstraintAnchor> hashSet = this.f2187a;
        if (hashSet != null) {
            Iterator<ConstraintAnchor> it = hashSet.iterator();
            while (it.hasNext()) {
                Grouping.m20128a(it.next().f2190d, i, arrayList, widgetGroup);
            }
        }
    }

    /* renamed from: d */
    public HashSet<ConstraintAnchor> m20414d() {
        return this.f2187a;
    }

    /* renamed from: e */
    public int m20413e() {
        if (!this.f2189c) {
            return 0;
        }
        return this.f2188b;
    }

    /* renamed from: f */
    public int m20412f() {
        ConstraintAnchor constraintAnchor;
        if (this.f2190d.m20358T() == 8) {
            return 0;
        }
        return (this.f2194h <= -1 || (constraintAnchor = this.f2192f) == null || constraintAnchor.f2190d.m20358T() != 8) ? this.f2193g : this.f2194h;
    }

    /* renamed from: g */
    public final ConstraintAnchor m20411g() {
        switch (C01661.f2196a[this.f2191e.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f2190d.f2218K;
            case 3:
                return this.f2190d.f2214I;
            case 4:
                return this.f2190d.f2219L;
            case 5:
                return this.f2190d.f2216J;
            default:
                throw new AssertionError(this.f2191e.name());
        }
    }

    /* renamed from: h */
    public ConstraintWidget m20410h() {
        return this.f2190d;
    }

    /* renamed from: i */
    public SolverVariable m20409i() {
        return this.f2195i;
    }

    /* renamed from: j */
    public ConstraintAnchor m20408j() {
        return this.f2192f;
    }

    /* renamed from: k */
    public Type m20407k() {
        return this.f2191e;
    }

    /* renamed from: l */
    public boolean m20406l() {
        HashSet<ConstraintAnchor> hashSet = this.f2187a;
        if (hashSet == null) {
            return false;
        }
        Iterator<ConstraintAnchor> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m20411g().m20403o()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public boolean m20405m() {
        HashSet<ConstraintAnchor> hashSet = this.f2187a;
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
    public boolean m20404n() {
        return this.f2189c;
    }

    /* renamed from: o */
    public boolean m20403o() {
        return this.f2192f != null;
    }

    /* renamed from: p */
    public boolean m20402p(ConstraintAnchor constraintAnchor) {
        boolean z = false;
        boolean z2 = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type k = constraintAnchor.m20407k();
        Type type = this.f2191e;
        if (k != type) {
            switch (C01661.f2196a[type.ordinal()]) {
                case 1:
                    boolean z3 = false;
                    if (k != Type.BASELINE) {
                        z3 = false;
                        if (k != Type.CENTER_X) {
                            z3 = false;
                            if (k != Type.CENTER_Y) {
                                z3 = true;
                            }
                        }
                    }
                    return z3;
                case 2:
                case 3:
                    boolean z4 = k == Type.LEFT || k == Type.RIGHT;
                    z = z4;
                    if (constraintAnchor.m20410h() instanceof Guideline) {
                        if (z4 || k == Type.CENTER_X) {
                            z = true;
                        }
                    }
                    return z;
                case 4:
                case 5:
                    boolean z5 = k == Type.TOP || k == Type.BOTTOM;
                    z2 = z5;
                    if (constraintAnchor.m20410h() instanceof Guideline) {
                        if (z5 || k == Type.CENTER_Y) {
                            z2 = true;
                        }
                    }
                    return z2;
                case 6:
                case 7:
                case 8:
                case 9:
                    return false;
                default:
                    throw new AssertionError(this.f2191e.name());
            }
        } else if (type == Type.BASELINE) {
            return constraintAnchor.m20410h().m20350X() && m20410h().m20350X();
        } else {
            return true;
        }
    }

    /* renamed from: q */
    public void m20401q() {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor = this.f2192f;
        if (!(constraintAnchor == null || (hashSet = constraintAnchor.f2187a) == null)) {
            hashSet.remove(this);
            if (this.f2192f.f2187a.size() == 0) {
                this.f2192f.f2187a = null;
            }
        }
        this.f2187a = null;
        this.f2192f = null;
        this.f2193g = 0;
        this.f2194h = -1;
        this.f2189c = false;
        this.f2188b = 0;
    }

    /* renamed from: r */
    public void m20400r() {
        this.f2189c = false;
        this.f2188b = 0;
    }

    /* renamed from: s */
    public void m20399s(Cache cache) {
        SolverVariable solverVariable = this.f2195i;
        if (solverVariable == null) {
            this.f2195i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.m20455d();
        }
    }

    /* renamed from: t */
    public void m20398t(int i) {
        this.f2188b = i;
        this.f2189c = true;
    }

    public String toString() {
        return this.f2190d.m20313u() + ":" + this.f2191e.toString();
    }

    /* renamed from: u */
    public void m20397u(int i) {
        if (m20403o()) {
            this.f2194h = i;
        }
    }
}
