package com.google.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.protobuf.k1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1.class */
final class C2630k1 {

    /* renamed from: a */
    private static final Unsafe f11160a = m2502F();

    /* renamed from: b */
    private static final Class<?> f11161b = C2579d.m2835b();

    /* renamed from: c */
    private static final boolean f11162c = m2471o(Long.TYPE);

    /* renamed from: d */
    private static final boolean f11163d = m2471o(Integer.TYPE);

    /* renamed from: e */
    private static final AbstractC2635e f11164e = m2504D();

    /* renamed from: f */
    private static final boolean f11165f = m2486V();

    /* renamed from: g */
    private static final boolean f11166g = m2487U();

    /* renamed from: h */
    static final long f11167h = m2475k(byte[].class);

    /* renamed from: i */
    private static final long f11168i = m2469q(m2473m());

    /* renamed from: j */
    static final boolean f11169j;

    /* renamed from: com.google.protobuf.k1$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1$a.class */
    public static final class C2631a implements PrivilegedExceptionAction<Unsafe> {
        C2631a() {
        }

        /* renamed from: a */
        public Unsafe run() {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* renamed from: com.google.protobuf.k1$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1$b.class */
    public static final class C2632b extends AbstractC2635e {
        C2632b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: c */
        public void mo2456c(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: d */
        public boolean mo2455d(Object obj, long j) {
            return C2630k1.f11169j ? C2630k1.m2467s(obj, j) : C2630k1.m2466t(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: e */
        public byte mo2454e(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: f */
        public byte mo2453f(Object obj, long j) {
            return C2630k1.f11169j ? C2630k1.m2463w(obj, j) : C2630k1.m2462x(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: g */
        public double mo2452g(Object obj, long j) {
            return Double.longBitsToDouble(m2448k(obj, j));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: h */
        public float mo2451h(Object obj, long j) {
            return Float.intBitsToFloat(m2450i(obj, j));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: j */
        public long mo2449j(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: n */
        public void mo2445n(Object obj, long j, boolean z) {
            if (C2630k1.f11169j) {
                C2630k1.m2497K(obj, j, z);
            } else {
                C2630k1.m2496L(obj, j, z);
            }
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: o */
        public void mo2444o(Object obj, long j, byte b) {
            if (C2630k1.f11169j) {
                C2630k1.m2494N(obj, j, b);
            } else {
                C2630k1.m2493O(obj, j, b);
            }
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: p */
        public void mo2443p(Object obj, long j, double d) {
            m2440s(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: q */
        public void mo2442q(Object obj, long j, float f) {
            m2441r(obj, j, Float.floatToIntBits(f));
        }
    }

    /* renamed from: com.google.protobuf.k1$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1$c.class */
    public static final class C2633c extends AbstractC2635e {
        C2633c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: c */
        public void mo2456c(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: d */
        public boolean mo2455d(Object obj, long j) {
            return C2630k1.f11169j ? C2630k1.m2467s(obj, j) : C2630k1.m2466t(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: e */
        public byte mo2454e(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: f */
        public byte mo2453f(Object obj, long j) {
            return C2630k1.f11169j ? C2630k1.m2463w(obj, j) : C2630k1.m2462x(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: g */
        public double mo2452g(Object obj, long j) {
            return Double.longBitsToDouble(m2448k(obj, j));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: h */
        public float mo2451h(Object obj, long j) {
            return Float.intBitsToFloat(m2450i(obj, j));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: j */
        public long mo2449j(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: n */
        public void mo2445n(Object obj, long j, boolean z) {
            if (C2630k1.f11169j) {
                C2630k1.m2497K(obj, j, z);
            } else {
                C2630k1.m2496L(obj, j, z);
            }
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: o */
        public void mo2444o(Object obj, long j, byte b) {
            if (C2630k1.f11169j) {
                C2630k1.m2494N(obj, j, b);
            } else {
                C2630k1.m2493O(obj, j, b);
            }
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: p */
        public void mo2443p(Object obj, long j, double d) {
            m2440s(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: q */
        public void mo2442q(Object obj, long j, float f) {
            m2441r(obj, j, Float.floatToIntBits(f));
        }
    }

    /* renamed from: com.google.protobuf.k1$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1$d.class */
    public static final class C2634d extends AbstractC2635e {
        C2634d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: c */
        public void mo2456c(long j, byte[] bArr, long j2, long j3) {
            this.f11170a.copyMemory((Object) null, j, bArr, C2630k1.f11167h + j2, j3);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: d */
        public boolean mo2455d(Object obj, long j) {
            return this.f11170a.getBoolean(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: e */
        public byte mo2454e(long j) {
            return this.f11170a.getByte(j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: f */
        public byte mo2453f(Object obj, long j) {
            return this.f11170a.getByte(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: g */
        public double mo2452g(Object obj, long j) {
            return this.f11170a.getDouble(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: h */
        public float mo2451h(Object obj, long j) {
            return this.f11170a.getFloat(obj, j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: j */
        public long mo2449j(long j) {
            return this.f11170a.getLong(j);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: n */
        public void mo2445n(Object obj, long j, boolean z) {
            this.f11170a.putBoolean(obj, j, z);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: o */
        public void mo2444o(Object obj, long j, byte b) {
            this.f11170a.putByte(obj, j, b);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: p */
        public void mo2443p(Object obj, long j, double d) {
            this.f11170a.putDouble(obj, j, d);
        }

        @Override // com.google.protobuf.C2630k1.AbstractC2635e
        /* renamed from: q */
        public void mo2442q(Object obj, long j, float f) {
            this.f11170a.putFloat(obj, j, f);
        }
    }

    /* renamed from: com.google.protobuf.k1$e */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/k1$e.class */
    public static abstract class AbstractC2635e {

        /* renamed from: a */
        Unsafe f11170a;

        AbstractC2635e(Unsafe unsafe) {
            this.f11170a = unsafe;
        }

        /* renamed from: a */
        public final int m2458a(Class<?> cls) {
            return this.f11170a.arrayBaseOffset(cls);
        }

        /* renamed from: b */
        public final int m2457b(Class<?> cls) {
            return this.f11170a.arrayIndexScale(cls);
        }

        /* renamed from: c */
        public abstract void mo2456c(long j, byte[] bArr, long j2, long j3);

        /* renamed from: d */
        public abstract boolean mo2455d(Object obj, long j);

        /* renamed from: e */
        public abstract byte mo2454e(long j);

        /* renamed from: f */
        public abstract byte mo2453f(Object obj, long j);

        /* renamed from: g */
        public abstract double mo2452g(Object obj, long j);

        /* renamed from: h */
        public abstract float mo2451h(Object obj, long j);

        /* renamed from: i */
        public final int m2450i(Object obj, long j) {
            return this.f11170a.getInt(obj, j);
        }

        /* renamed from: j */
        public abstract long mo2449j(long j);

        /* renamed from: k */
        public final long m2448k(Object obj, long j) {
            return this.f11170a.getLong(obj, j);
        }

        /* renamed from: l */
        public final Object m2447l(Object obj, long j) {
            return this.f11170a.getObject(obj, j);
        }

        /* renamed from: m */
        public final long m2446m(Field field) {
            return this.f11170a.objectFieldOffset(field);
        }

        /* renamed from: n */
        public abstract void mo2445n(Object obj, long j, boolean z);

        /* renamed from: o */
        public abstract void mo2444o(Object obj, long j, byte b);

        /* renamed from: p */
        public abstract void mo2443p(Object obj, long j, double d);

        /* renamed from: q */
        public abstract void mo2442q(Object obj, long j, float f);

        /* renamed from: r */
        public final void m2441r(Object obj, long j, int i) {
            this.f11170a.putInt(obj, j, i);
        }

        /* renamed from: s */
        public final void m2440s(Object obj, long j, long j2) {
            this.f11170a.putLong(obj, j, j2);
        }

        /* renamed from: t */
        public final void m2439t(Object obj, long j, Object obj2) {
            this.f11170a.putObject(obj, j, obj2);
        }
    }

    static {
        m2475k(boolean[].class);
        m2474l(boolean[].class);
        m2475k(int[].class);
        m2474l(int[].class);
        m2475k(long[].class);
        m2474l(long[].class);
        m2475k(float[].class);
        m2474l(float[].class);
        m2475k(double[].class);
        m2474l(double[].class);
        m2475k(Object[].class);
        m2474l(Object[].class);
        f11169j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private C2630k1() {
    }

    /* renamed from: A */
    public static int m2507A(Object obj, long j) {
        return f11164e.m2450i(obj, j);
    }

    /* renamed from: B */
    public static long m2506B(long j) {
        return f11164e.mo2449j(j);
    }

    /* renamed from: C */
    public static long m2505C(Object obj, long j) {
        return f11164e.m2448k(obj, j);
    }

    /* renamed from: D */
    private static AbstractC2635e m2504D() {
        Unsafe unsafe = f11160a;
        C2632b c2632b = null;
        if (unsafe == null) {
            return null;
        }
        if (!C2579d.m2834c()) {
            return new C2634d(unsafe);
        }
        if (f11162c) {
            return new C2633c(unsafe);
        }
        if (f11163d) {
            c2632b = new C2632b(unsafe);
        }
        return c2632b;
    }

    /* renamed from: E */
    public static Object m2503E(Object obj, long j) {
        return f11164e.m2447l(obj, j);
    }

    /* renamed from: F */
    public static Unsafe m2502F() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C2631a());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: G */
    public static boolean m2501G() {
        return f11166g;
    }

    /* renamed from: H */
    public static boolean m2500H() {
        return f11165f;
    }

    /* renamed from: I */
    public static long m2499I(Field field) {
        return f11164e.m2446m(field);
    }

    /* renamed from: J */
    public static void m2498J(Object obj, long j, boolean z) {
        f11164e.mo2445n(obj, j, z);
    }

    /* renamed from: K */
    public static void m2497K(Object obj, long j, boolean z) {
        m2494N(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: L */
    public static void m2496L(Object obj, long j, boolean z) {
        m2493O(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: M */
    public static void m2495M(byte[] bArr, long j, byte b) {
        f11164e.mo2444o(bArr, f11167h + j, b);
    }

    /* renamed from: N */
    public static void m2494N(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m2507A = m2507A(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m2490R(obj, j2, ((255 & b) << i) | (m2507A & ((255 << i) ^ (-1))));
    }

    /* renamed from: O */
    public static void m2493O(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m2507A = m2507A(obj, j2);
        int i = (((int) j) & 3) << 3;
        m2490R(obj, j2, ((255 & b) << i) | (m2507A & ((255 << i) ^ (-1))));
    }

    /* renamed from: P */
    public static void m2492P(Object obj, long j, double d) {
        f11164e.mo2443p(obj, j, d);
    }

    /* renamed from: Q */
    public static void m2491Q(Object obj, long j, float f) {
        f11164e.mo2442q(obj, j, f);
    }

    /* renamed from: R */
    public static void m2490R(Object obj, long j, int i) {
        f11164e.m2441r(obj, j, i);
    }

    /* renamed from: S */
    public static void m2489S(Object obj, long j, long j2) {
        f11164e.m2440s(obj, j, j2);
    }

    /* renamed from: T */
    public static void m2488T(Object obj, long j, Object obj2) {
        f11164e.m2439t(obj, j, obj2);
    }

    /* renamed from: U */
    private static boolean m2487U() {
        Unsafe unsafe = f11160a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (C2579d.m2834c()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = Logger.getLogger(C2630k1.class.getName());
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: V */
    private static boolean m2486V() {
        Unsafe unsafe = f11160a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (m2473m() == null) {
                return false;
            }
            if (C2579d.m2834c()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger = Logger.getLogger(C2630k1.class.getName());
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: i */
    public static long m2477i(ByteBuffer byteBuffer) {
        return f11164e.m2448k(byteBuffer, f11168i);
    }

    /* renamed from: j */
    public static <T> T m2476j(Class<T> cls) {
        try {
            return (T) f11160a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: k */
    private static int m2475k(Class<?> cls) {
        return f11166g ? f11164e.m2458a(cls) : -1;
    }

    /* renamed from: l */
    private static int m2474l(Class<?> cls) {
        return f11166g ? f11164e.m2457b(cls) : -1;
    }

    /* renamed from: m */
    private static Field m2473m() {
        Field m2470p;
        if (!C2579d.m2834c() || (m2470p = m2470p(Buffer.class, "effectiveDirectAddress")) == null) {
            Field m2470p2 = m2470p(Buffer.class, "address");
            if (m2470p2 == null || m2470p2.getType() != Long.TYPE) {
                m2470p2 = null;
            }
            return m2470p2;
        }
        return m2470p;
    }

    /* renamed from: n */
    public static void m2472n(long j, byte[] bArr, long j2, long j3) {
        f11164e.mo2456c(j, bArr, j2, j3);
    }

    /* renamed from: o */
    private static boolean m2471o(Class<?> cls) {
        if (!C2579d.m2834c()) {
            return false;
        }
        try {
            Class<?> cls2 = f11161b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: p */
    private static Field m2470p(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: q */
    private static long m2469q(Field field) {
        AbstractC2635e abstractC2635e;
        return (field == null || (abstractC2635e = f11164e) == null) ? (char) 65535 : abstractC2635e.m2446m(field);
    }

    /* renamed from: r */
    public static boolean m2468r(Object obj, long j) {
        return f11164e.mo2455d(obj, j);
    }

    /* renamed from: s */
    public static boolean m2467s(Object obj, long j) {
        return m2463w(obj, j) != 0;
    }

    /* renamed from: t */
    public static boolean m2466t(Object obj, long j) {
        return m2462x(obj, j) != 0;
    }

    /* renamed from: u */
    public static byte m2465u(long j) {
        return f11164e.mo2454e(j);
    }

    /* renamed from: v */
    public static byte m2464v(byte[] bArr, long j) {
        return f11164e.mo2453f(bArr, f11167h + j);
    }

    /* renamed from: w */
    public static byte m2463w(Object obj, long j) {
        return (byte) ((m2507A(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: x */
    public static byte m2462x(Object obj, long j) {
        return (byte) ((m2507A(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: y */
    public static double m2461y(Object obj, long j) {
        return f11164e.mo2452g(obj, j);
    }

    /* renamed from: z */
    public static float m2460z(Object obj, long j) {
        return f11164e.mo2451h(obj, j);
    }
}
