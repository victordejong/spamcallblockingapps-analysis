package p000;
/* renamed from: ma1 */
/* loaded from: classes3-dex2jar.jar:ma1.class */
public class ma1 extends Exception {
    private static final long serialVersionUID = 9054163538630561971L;

    /* renamed from: a */
    public oa1 f6996a;

    public ma1(int i, String str) {
        this(new oa1(i, str));
    }

    public ma1(int i, String str, Exception exc) {
        this(new oa1(i, str), exc);
    }

    public ma1(oa1 oa1Var) {
        this(oa1Var, (Exception) null);
    }

    public ma1(oa1 oa1Var, Exception exc) {
        super(oa1Var.m1127a(), exc);
        this.f6996a = oa1Var;
    }

    /* renamed from: a */
    public oa1 m1276a() {
        return this.f6996a;
    }
}
