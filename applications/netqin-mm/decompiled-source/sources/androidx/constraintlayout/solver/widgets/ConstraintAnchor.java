package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.SolverVariable;
import p012b.p036g.p037a.C0797c;
import p012b.p036g.p037a.p038i.C0810g;
import p012b.p036g.p037a.p038i.C0815k;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {

    /* renamed from: b */
    public final ConstraintWidget f874b;

    /* renamed from: c */
    public final Type f875c;

    /* renamed from: d */
    public ConstraintAnchor f876d;

    /* renamed from: i */
    public SolverVariable f881i;

    /* renamed from: a */
    public C0815k f873a = new C0815k(this);

    /* renamed from: e */
    public int f877e = 0;

    /* renamed from: f */
    public int f878f = -1;

    /* renamed from: g */
    public Strength f879g = Strength.NONE;

    /* renamed from: h */
    public int f880h = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType.class */
    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength.class */
    public enum Strength {
        NONE,
        STRONG,
        WEAK
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

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$a.class */
    public static /* synthetic */ class C0180a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f882a;

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
            f882a = iArr;
            try {
                iArr[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f882a[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f882a[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f882a[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f882a[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f882a[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f882a[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f882a[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f882a[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        ConnectionType connectionType = ConnectionType.RELAXED;
        this.f874b = constraintWidget;
        this.f875c = type;
    }

    /* renamed from: a */
    public int m38808a() {
        return this.f880h;
    }

    /* renamed from: a */
    public void m38804a(C0797c cVar) {
        SolverVariable solverVariable = this.f881i;
        if (solverVariable == null) {
            this.f881i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.m38814a();
        }
    }

    /* renamed from: a */
    public boolean m38807a(ConstraintAnchor constraintAnchor) {
        boolean z = false;
        boolean z2 = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type h = constraintAnchor.m38797h();
        Type type = this.f875c;
        if (h != type) {
            switch (C0180a.f882a[type.ordinal()]) {
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
                    if (constraintAnchor.m38802c() instanceof C0810g) {
                        if (z4 || h == Type.CENTER_X) {
                            z = true;
                        }
                    }
                    return z;
                case 4:
                case 5:
                    boolean z5 = h == Type.TOP || h == Type.BOTTOM;
                    z2 = z5;
                    if (constraintAnchor.m38802c() instanceof C0810g) {
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
                    throw new AssertionError(this.f875c.name());
            }
        } else if (type == Type.BASELINE) {
            return constraintAnchor.m38802c().m38722y() && m38802c().m38722y();
        } else {
            return true;
        }
    }

    /* renamed from: a */
    public boolean m38806a(ConstraintAnchor constraintAnchor, int i, int i2, Strength strength, int i3, boolean z) {
        if (constraintAnchor == null) {
            this.f876d = null;
            this.f877e = 0;
            this.f878f = -1;
            this.f879g = Strength.NONE;
            this.f880h = 2;
            return true;
        } else if (!z && !m38807a(constraintAnchor)) {
            return false;
        } else {
            this.f876d = constraintAnchor;
            if (i > 0) {
                this.f877e = i;
            } else {
                this.f877e = 0;
            }
            this.f878f = i2;
            this.f879g = strength;
            this.f880h = i3;
            return true;
        }
    }

    /* renamed from: a */
    public boolean m38805a(ConstraintAnchor constraintAnchor, int i, Strength strength, int i2) {
        return m38806a(constraintAnchor, i, -1, strength, i2, false);
    }

    /* renamed from: b */
    public int m38803b() {
        ConstraintAnchor constraintAnchor;
        if (this.f874b.m38730s() == 8) {
            return 0;
        }
        return (this.f878f <= -1 || (constraintAnchor = this.f876d) == null || constraintAnchor.f874b.m38730s() != 8) ? this.f877e : this.f878f;
    }

    /* renamed from: c */
    public ConstraintWidget m38802c() {
        return this.f874b;
    }

    /* renamed from: d */
    public C0815k m38801d() {
        return this.f873a;
    }

    /* renamed from: e */
    public SolverVariable m38800e() {
        return this.f881i;
    }

    /* renamed from: f */
    public Strength m38799f() {
        return this.f879g;
    }

    /* renamed from: g */
    public ConstraintAnchor m38798g() {
        return this.f876d;
    }

    /* renamed from: h */
    public Type m38797h() {
        return this.f875c;
    }

    /* renamed from: i */
    public boolean m38796i() {
        return this.f876d != null;
    }

    /* renamed from: j */
    public void m38795j() {
        this.f876d = null;
        this.f877e = 0;
        this.f878f = -1;
        this.f879g = Strength.STRONG;
        this.f880h = 0;
        ConnectionType connectionType = ConnectionType.RELAXED;
        this.f873a.mo35843d();
    }

    public String toString() {
        return this.f874b.m38754g() + ":" + this.f875c.toString();
    }
}
