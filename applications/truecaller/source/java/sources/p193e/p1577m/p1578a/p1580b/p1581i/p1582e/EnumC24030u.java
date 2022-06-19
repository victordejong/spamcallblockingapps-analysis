package p193e.p1577m.p1578a.p1580b.p1581i.p1582e;

import android.util.SparseArray;
/* renamed from: e.m.a.b.i.e.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/i/e/u.class */
public enum EnumC24030u {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: g */
    public static final SparseArray<EnumC24030u> f66622g;

    static {
        EnumC24030u enumC24030u = DEFAULT;
        EnumC24030u enumC24030u2 = UNMETERED_ONLY;
        EnumC24030u enumC24030u3 = UNMETERED_OR_DAILY;
        EnumC24030u enumC24030u4 = FAST_IF_RADIO_AWAKE;
        EnumC24030u enumC24030u5 = NEVER;
        EnumC24030u enumC24030u6 = UNRECOGNIZED;
        SparseArray<EnumC24030u> sparseArray = new SparseArray<>();
        f66622g = sparseArray;
        sparseArray.put(0, enumC24030u);
        sparseArray.put(1, enumC24030u2);
        sparseArray.put(2, enumC24030u3);
        sparseArray.put(3, enumC24030u4);
        sparseArray.put(4, enumC24030u5);
        sparseArray.put(-1, enumC24030u6);
    }

    EnumC24030u(int i) {
    }
}
