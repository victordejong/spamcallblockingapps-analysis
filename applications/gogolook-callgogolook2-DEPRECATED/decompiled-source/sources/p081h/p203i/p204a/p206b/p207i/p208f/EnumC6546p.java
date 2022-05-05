package p081h.p203i.p204a.p206b.p207i.p208f;

import android.util.SparseArray;
/* renamed from: h.i.a.b.i.f.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/p.class */
public enum EnumC6546p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: g */
    public static final SparseArray<EnumC6546p> f16325g = new SparseArray<>();

    static {
        f16325g.put(0, DEFAULT);
        f16325g.put(1, UNMETERED_ONLY);
        f16325g.put(2, UNMETERED_OR_DAILY);
        f16325g.put(3, FAST_IF_RADIO_AWAKE);
        f16325g.put(4, NEVER);
        f16325g.put(-1, UNRECOGNIZED);
    }

    EnumC6546p(int i) {
    }
}
