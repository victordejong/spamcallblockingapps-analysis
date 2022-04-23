package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.C0198c;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {

    /* renamed from: b */
    public final ConstraintWidget f1082b;

    /* renamed from: c */
    public final Type f1083c;

    /* renamed from: d */
    public ConstraintAnchor f1084d;

    /* renamed from: g */
    SolverVariable f1087g;

    /* renamed from: a */
    private HashSet<ConstraintAnchor> f1081a = null;

    /* renamed from: e */
    public int f1085e = 0;

    /* renamed from: f */
    int f1086f = -1;

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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$a.class */
    public static /* synthetic */ class C0203a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1098a;

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
            f1098a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1098a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1098a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1098a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1098a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1098a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1098a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1098a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1098a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f1082b = constraintWidget;
        this.f1083c = type;
    }

    /* renamed from: a */
    public boolean m14023a(ConstraintAnchor constraintAnchor, int i) {
        return m14022b(constraintAnchor, i, -1, false);
    }

    /* renamed from: b */
    public boolean m14022b(ConstraintAnchor constraintAnchor, int i, int i2, boolean z) {
        if (constraintAnchor == null) {
            m14012l();
            return true;
        } else if (!z && !m14013k(constraintAnchor)) {
            return false;
        } else {
            this.f1084d = constraintAnchor;
            if (constraintAnchor.f1081a == null) {
                constraintAnchor.f1081a = new HashSet<>();
            }
            this.f1084d.f1081a.add(this);
            if (i > 0) {
                this.f1085e = i;
            } else {
                this.f1085e = 0;
            }
            this.f1086f = i2;
            return true;
        }
    }

    /* renamed from: c */
    public int m14021c() {
        ConstraintAnchor constraintAnchor;
        if (this.f1082b.m13983P() == 8) {
            return 0;
        }
        return (this.f1086f <= -1 || (constraintAnchor = this.f1084d) == null || constraintAnchor.f1082b.m13983P() != 8) ? this.f1085e : this.f1086f;
    }

    /* renamed from: d */
    public final ConstraintAnchor m14020d() {
        switch (C0203a.f1098a[this.f1083c.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.f1082b.f1104C;
            case 3:
                return this.f1082b.f1100A;
            case 4:
                return this.f1082b.f1105D;
            case 5:
                return this.f1082b.f1102B;
            default:
                throw new AssertionError(this.f1083c.name());
        }
    }

    /* renamed from: e */
    public ConstraintWidget m14019e() {
        return this.f1082b;
    }

    /* renamed from: f */
    public SolverVariable m14018f() {
        return this.f1087g;
    }

    /* renamed from: g */
    public ConstraintAnchor m14017g() {
        return this.f1084d;
    }

    /* renamed from: h */
    public Type m14016h() {
        return this.f1083c;
    }

    /* renamed from: i */
    public boolean m14015i() {
        HashSet<ConstraintAnchor> hashSet = this.f1081a;
        if (hashSet == null) {
            return false;
        }
        Iterator<ConstraintAnchor> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m14020d().m14014j()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public boolean m14014j() {
        return this.f1084d != null;
    }

    /* renamed from: k */
    public boolean m14013k(ConstraintAnchor constraintAnchor) {
        boolean z = false;
        boolean z2 = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type h = constraintAnchor.m14016h();
        Type type = this.f1083c;
        if (h != type) {
            switch (C0203a.f1098a[type.ordinal()]) {
                case 1:
                    boolean z3 = false;
                    if (h != Type.BASELINE) {
                        z3 = false;
                        if (h != Type.CENTER_X) {
                            z3 = false;
                            if (h != Type.CENTER_Y) {
                                z3 = true;
                            }
                        }
                    }
                    return z3;
                case 2:
                case 3:
                    boolean z4 = h == Type.LEFT || h == Type.RIGHT;
                    z = z4;
                    if (constraintAnchor.m14019e() instanceof f) {
                        if (z4 || h == Type.CENTER_X) {
                            z = true;
                        }
                    }
                    return z;
                case 4:
                case 5:
                    boolean z5 = h == Type.TOP || h == Type.BOTTOM;
                    z2 = z5;
                    if (constraintAnchor.m14019e() instanceof f) {
                        if (z5 || h == Type.CENTER_Y) {
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
                    throw new AssertionError(this.f1083c.name());
            }
        } else if (type == Type.BASELINE) {
            return constraintAnchor.m14019e().m13979T() && m14019e().m13979T();
        } else {
            return true;
        }
    }

    /* renamed from: l */
    public void m14012l() {
        HashSet<ConstraintAnchor> hashSet;
        ConstraintAnchor constraintAnchor = this.f1084d;
        if (!(constraintAnchor == null || (hashSet = constraintAnchor.f1081a) == null)) {
            hashSet.remove(this);
        }
        this.f1084d = null;
        this.f1085e = 0;
        this.f1086f = -1;
    }

    /* renamed from: m */
    public void m14011m(C0198c cVar) {
        SolverVariable solverVariable = this.f1087g;
        if (solverVariable == null) {
            this.f1087g = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.m14080d();
        }
    }

    /* renamed from: n */
    public void m14010n(int i) {
        if (m14014j()) {
            this.f1086f = i;
        }
    }

    public String toString() {
        return this.f1082b.m13939s() + ":" + this.f1083c.toString();
    }
}
