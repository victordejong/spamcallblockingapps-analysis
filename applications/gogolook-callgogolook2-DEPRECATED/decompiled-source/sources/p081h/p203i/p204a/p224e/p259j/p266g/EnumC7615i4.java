package p081h.p203i.p204a.p224e.p259j.p266g;
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* renamed from: h.i.a.e.j.g.i4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/i4.class */
public enum EnumC7615i4 {
    DOUBLE(EnumC7655n4.DOUBLE, 1),
    FLOAT(EnumC7655n4.FLOAT, 5),
    INT64(EnumC7655n4.LONG, 0),
    UINT64(EnumC7655n4.LONG, 0),
    INT32(EnumC7655n4.INT, 0),
    FIXED64(EnumC7655n4.LONG, 1),
    FIXED32(EnumC7655n4.INT, 5),
    BOOL(EnumC7655n4.BOOLEAN, 0),
    STRING(r4, 2) { // from class: h.i.a.e.j.g.j4
    },
    GROUP(r4, 3) { // from class: h.i.a.e.j.g.k4
    },
    MESSAGE(r4, 2) { // from class: h.i.a.e.j.g.l4
    },
    BYTES(r4, 2) { // from class: h.i.a.e.j.g.m4
    },
    UINT32(EnumC7655n4.INT, 0),
    ENUM(EnumC7655n4.ENUM, 0),
    SFIXED32(EnumC7655n4.INT, 5),
    SFIXED64(EnumC7655n4.LONG, 1),
    SINT32(EnumC7655n4.INT, 0),
    SINT64(EnumC7655n4.LONG, 0);
    

    /* renamed from: a */
    public final EnumC7655n4 f17891a;

    /* renamed from: b */
    public final int f17892b;

    static {
        final EnumC7655n4 n4Var = EnumC7655n4.STRING;
        final EnumC7655n4 n4Var2 = EnumC7655n4.MESSAGE;
        final EnumC7655n4 n4Var3 = EnumC7655n4.MESSAGE;
        final EnumC7655n4 n4Var4 = EnumC7655n4.BYTE_STRING;
    }

    EnumC7615i4(EnumC7655n4 n4Var, int i) {
        this.f17891a = n4Var;
        this.f17892b = i;
    }

    /* synthetic */ EnumC7615i4(EnumC7655n4 n4Var, int i, C7605h4 h4Var) {
        this(n4Var, i);
    }

    /* renamed from: a */
    public final EnumC7655n4 m20097a() {
        return this.f17891a;
    }
}
