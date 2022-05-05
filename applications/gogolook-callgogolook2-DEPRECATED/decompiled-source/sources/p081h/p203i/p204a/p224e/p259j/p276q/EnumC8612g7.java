package p081h.p203i.p204a.p224e.p259j.p276q;
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* renamed from: h.i.a.e.j.q.g7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/g7.class */
public enum EnumC8612g7 {
    DOUBLE(EnumC8668l7.DOUBLE, 1),
    FLOAT(EnumC8668l7.FLOAT, 5),
    INT64(EnumC8668l7.LONG, 0),
    UINT64(EnumC8668l7.LONG, 0),
    INT32(EnumC8668l7.INT, 0),
    FIXED64(EnumC8668l7.LONG, 1),
    FIXED32(EnumC8668l7.INT, 5),
    BOOL(EnumC8668l7.BOOLEAN, 0),
    STRING(r4, 2) { // from class: h.i.a.e.j.q.h7
    },
    GROUP(r4, 3) { // from class: h.i.a.e.j.q.i7
    },
    MESSAGE(r4, 2) { // from class: h.i.a.e.j.q.j7
    },
    BYTES(r4, 2) { // from class: h.i.a.e.j.q.k7
    },
    UINT32(EnumC8668l7.INT, 0),
    ENUM(EnumC8668l7.ENUM, 0),
    SFIXED32(EnumC8668l7.INT, 5),
    SFIXED64(EnumC8668l7.LONG, 1),
    SINT32(EnumC8668l7.INT, 0),
    SINT64(EnumC8668l7.LONG, 0);
    

    /* renamed from: a */
    public final EnumC8668l7 f19713a;

    /* renamed from: b */
    public final int f19714b;

    static {
        final EnumC8668l7 l7Var = EnumC8668l7.STRING;
        final EnumC8668l7 l7Var2 = EnumC8668l7.MESSAGE;
        final EnumC8668l7 l7Var3 = EnumC8668l7.MESSAGE;
        final EnumC8668l7 l7Var4 = EnumC8668l7.BYTE_STRING;
    }

    EnumC8612g7(EnumC8668l7 l7Var, int i) {
        this.f19713a = l7Var;
        this.f19714b = i;
    }

    /* synthetic */ EnumC8612g7(EnumC8668l7 l7Var, int i, C8603f7 f7Var) {
        this(l7Var, i);
    }

    /* renamed from: a */
    public final EnumC8668l7 m17622a() {
        return this.f19713a;
    }
}
