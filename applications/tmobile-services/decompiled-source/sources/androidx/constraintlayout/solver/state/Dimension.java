package androidx.constraintlayout.solver.state;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/Dimension.class */
public class Dimension {

    /* renamed from: b */
    public static final Object f2153b = new Object();

    /* renamed from: c */
    public static final Object f2154c = new Object();

    /* renamed from: a */
    Object f2155a;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/Dimension$Type.class */
    public enum Type {
        FIXED,
        WRAP,
        MATCH_PARENT,
        MATCH_CONSTRAINT
    }

    private Dimension() {
        this.f2155a = f2154c;
    }

    private Dimension(Object obj) {
        this.f2155a = f2154c;
        this.f2155a = obj;
    }

    /* renamed from: a */
    public static Dimension m20433a(Object obj) {
        Dimension dimension = new Dimension(f2153b);
        dimension.m20432b(obj);
        return dimension;
    }

    /* renamed from: b */
    public Dimension m20432b(Object obj) {
        this.f2155a = obj;
        if (obj instanceof Integer) {
            ((Integer) obj).intValue();
        }
        return this;
    }
}
