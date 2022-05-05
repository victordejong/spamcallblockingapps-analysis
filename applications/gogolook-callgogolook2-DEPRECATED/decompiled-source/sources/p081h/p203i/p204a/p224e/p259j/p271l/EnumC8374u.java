package p081h.p203i.p204a.p224e.p259j.p271l;
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* renamed from: h.i.a.e.j.l.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/u.class */
public enum EnumC8374u {
    DOUBLE(EnumC8432x.DOUBLE, 1),
    FLOAT(EnumC8432x.FLOAT, 5),
    INT64(EnumC8432x.LONG, 0),
    UINT64(EnumC8432x.LONG, 0),
    INT32(EnumC8432x.INT, 0),
    FIXED64(EnumC8432x.LONG, 1),
    FIXED32(EnumC8432x.INT, 5),
    BOOL(EnumC8432x.BOOLEAN, 0),
    STRING(r4, 2) { // from class: h.i.a.e.j.l.t
    },
    GROUP(r4, 3) { // from class: h.i.a.e.j.l.w
    },
    MESSAGE(r4, 2) { // from class: h.i.a.e.j.l.v
    },
    BYTES(r4, 2) { // from class: h.i.a.e.j.l.y
    },
    UINT32(EnumC8432x.INT, 0),
    ENUM(EnumC8432x.ENUM, 0),
    SFIXED32(EnumC8432x.INT, 5),
    SFIXED64(EnumC8432x.LONG, 1),
    SINT32(EnumC8432x.INT, 0),
    SINT64(EnumC8432x.LONG, 0);
    

    /* renamed from: a */
    public final EnumC8432x f19322a;

    /* renamed from: b */
    public final int f19323b;

    static {
        final EnumC8432x xVar = EnumC8432x.STRING;
        final EnumC8432x xVar2 = EnumC8432x.MESSAGE;
        final EnumC8432x xVar3 = EnumC8432x.MESSAGE;
        final EnumC8432x xVar4 = EnumC8432x.BYTE_STRING;
    }

    EnumC8374u(EnumC8432x xVar, int i) {
        this.f19322a = xVar;
        this.f19323b = i;
    }

    /* synthetic */ EnumC8374u(EnumC8432x xVar, int i, C8322r rVar) {
        this(xVar, i);
    }

    /* renamed from: a */
    public final EnumC8432x m18159a() {
        return this.f19322a;
    }

    /* renamed from: b */
    public final int m18158b() {
        return this.f19323b;
    }
}
