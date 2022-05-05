package p081h.p203i.p325c.p337n.p338d.p341h;
/* renamed from: h.i.c.n.d.h.v */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/v.class */
public enum EnumC9615v {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: a */
    public final int f21909a;

    EnumC9615v(int i) {
        this.f21909a = i;
    }

    /* renamed from: a */
    public static EnumC9615v m14699a(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    /* renamed from: a */
    public int m14700a() {
        return this.f21909a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f21909a);
    }
}
