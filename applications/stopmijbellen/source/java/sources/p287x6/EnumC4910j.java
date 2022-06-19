package p287x6;
/* JADX WARN: Init of enum d can be incorrect */
/* JADX WARN: Init of enum k can be incorrect */
/* renamed from: x6.j */
/* loaded from: classes-dex2jar.jar:x6/j.class */
public enum EnumC4910j {
    VOID(Void.class, Void.class, null),
    INT(r0, Integer.class, 0),
    LONG(Long.TYPE, Long.class, 0L),
    FLOAT(Float.TYPE, Float.class, Float.valueOf(0.0f)),
    DOUBLE(Double.TYPE, Double.class, Double.valueOf(0.0d)),
    BOOLEAN(Boolean.TYPE, Boolean.class, Boolean.FALSE),
    STRING(String.class, String.class, ""),
    BYTE_STRING(AbstractC4890c.class, AbstractC4890c.class, AbstractC4890c.f14961b),
    ENUM(r0, Integer.class, null),
    MESSAGE(Object.class, Object.class, null);
    

    /* renamed from: a */
    public final Class<?> f15023a;

    /* renamed from: b */
    public final Object f15024b;

    static {
        Class cls = Integer.TYPE;
    }

    EnumC4910j(Class cls, Class cls2, Object obj) {
        this.f15023a = cls2;
        this.f15024b = obj;
    }
}
