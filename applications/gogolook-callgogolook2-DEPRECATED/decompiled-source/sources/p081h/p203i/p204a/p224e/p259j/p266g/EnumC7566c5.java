package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.c5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/c5.class */
public enum EnumC7566c5 implements AbstractC7612i1 {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4);
    

    /* renamed from: a */
    public final int f17803a;

    static {
        new AbstractC7619j1<EnumC7566c5>() { // from class: h.i.a.e.j.g.g5
            @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7619j1
            /* renamed from: a */
            public final /* synthetic */ EnumC7566c5 mo20093a(int i) {
                return EnumC7566c5.m20280a(i);
            }
        };
    }

    EnumC7566c5(int i) {
        this.f17803a = i;
    }

    /* renamed from: a */
    public static EnumC7566c5 m20280a(int i) {
        if (i == 0) {
            return DEFAULT;
        }
        if (i == 1) {
            return UNMETERED_ONLY;
        }
        if (i == 2) {
            return UNMETERED_OR_DAILY;
        }
        if (i == 3) {
            return FAST_IF_RADIO_AWAKE;
        }
        if (i != 4) {
            return null;
        }
        return NEVER;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7612i1
    /* renamed from: C */
    public final int mo20100C() {
        return this.f17803a;
    }
}
