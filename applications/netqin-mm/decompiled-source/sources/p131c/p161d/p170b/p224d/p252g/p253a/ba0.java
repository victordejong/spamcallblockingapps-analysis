package p131c.p161d.p170b.p224d.p252g.p253a;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.a.ba0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ba0.class */
public final class ba0 {

    /* renamed from: a */
    public static final Logger f12352a = Logger.getLogger(ba0.class.getName());

    /* renamed from: b */
    public static final Unsafe f12353b = m27158c();

    /* renamed from: c */
    public static final Class<?> f12354c = s60.m26392b();

    /* renamed from: d */
    public static final boolean f12355d = m27152d(Long.TYPE);

    /* renamed from: e */
    public static final boolean f12356e = m27152d(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC3389d f12357f;

    /* renamed from: g */
    public static final boolean f12358g;

    /* renamed from: h */
    public static final boolean f12359h;

    /* renamed from: i */
    public static final long f12360i;

    /* renamed from: j */
    public static final boolean f12361j;

    /* renamed from: c.d.b.d.g.a.ba0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ba0$a.class */
    public static final class C3386a extends AbstractC3389d {
        public C3386a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27134a(Object obj, long j, byte b) {
            if (ba0.f12361j) {
                ba0.m27172a(obj, j, b);
            } else {
                ba0.m27160b(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27133a(Object obj, long j, double d) {
            m27130a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27132a(Object obj, long j, float f) {
            m27131a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27129a(Object obj, long j, boolean z) {
            if (ba0.f12361j) {
                ba0.m27159b(obj, j, z);
            } else {
                ba0.m27154c(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: c */
        public final boolean mo27127c(Object obj, long j) {
            return ba0.f12361j ? ba0.m27141i(obj, j) : ba0.m27140j(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: d */
        public final float mo27126d(Object obj, long j) {
            return Float.intBitsToFloat(m27135a(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: e */
        public final double mo27125e(Object obj, long j) {
            return Double.longBitsToDouble(m27128b(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: f */
        public final byte mo27124f(Object obj, long j) {
            return ba0.f12361j ? ba0.m27143g(obj, j) : ba0.m27142h(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.a.ba0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ba0$b.class */
    public static final class C3387b extends AbstractC3389d {
        public C3387b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27134a(Object obj, long j, byte b) {
            this.f12362a.putByte(obj, j, b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27133a(Object obj, long j, double d) {
            this.f12362a.putDouble(obj, j, d);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27132a(Object obj, long j, float f) {
            this.f12362a.putFloat(obj, j, f);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27129a(Object obj, long j, boolean z) {
            this.f12362a.putBoolean(obj, j, z);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: c */
        public final boolean mo27127c(Object obj, long j) {
            return this.f12362a.getBoolean(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: d */
        public final float mo27126d(Object obj, long j) {
            return this.f12362a.getFloat(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: e */
        public final double mo27125e(Object obj, long j) {
            return this.f12362a.getDouble(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: f */
        public final byte mo27124f(Object obj, long j) {
            return this.f12362a.getByte(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.a.ba0$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ba0$c.class */
    public static final class C3388c extends AbstractC3389d {
        public C3388c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27134a(Object obj, long j, byte b) {
            if (ba0.f12361j) {
                ba0.m27172a(obj, j, b);
            } else {
                ba0.m27160b(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27133a(Object obj, long j, double d) {
            m27130a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27132a(Object obj, long j, float f) {
            m27131a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: a */
        public final void mo27129a(Object obj, long j, boolean z) {
            if (ba0.f12361j) {
                ba0.m27159b(obj, j, z);
            } else {
                ba0.m27154c(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: c */
        public final boolean mo27127c(Object obj, long j) {
            return ba0.f12361j ? ba0.m27141i(obj, j) : ba0.m27140j(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: d */
        public final float mo27126d(Object obj, long j) {
            return Float.intBitsToFloat(m27135a(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: e */
        public final double mo27125e(Object obj, long j) {
            return Double.longBitsToDouble(m27128b(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.ba0.AbstractC3389d
        /* renamed from: f */
        public final byte mo27124f(Object obj, long j) {
            return ba0.f12361j ? ba0.m27143g(obj, j) : ba0.m27142h(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.a.ba0$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ba0$d.class */
    public static abstract class AbstractC3389d {

        /* renamed from: a */
        public Unsafe f12362a;

        public AbstractC3389d(Unsafe unsafe) {
            this.f12362a = unsafe;
        }

        /* renamed from: a */
        public final int m27135a(Object obj, long j) {
            return this.f12362a.getInt(obj, j);
        }

        /* renamed from: a */
        public abstract void mo27134a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo27133a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo27132a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m27131a(Object obj, long j, int i) {
            this.f12362a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m27130a(Object obj, long j, long j2) {
            this.f12362a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo27129a(Object obj, long j, boolean z);

        /* renamed from: b */
        public final long m27128b(Object obj, long j) {
            return this.f12362a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo27127c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo27126d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo27125e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo27124f(Object obj, long j);
    }

    static {
        AbstractC3389d dVar;
        AbstractC3389d dVar2 = null;
        if (f12353b != null) {
            if (!s60.m26394a()) {
                dVar2 = new C3387b(f12353b);
            } else if (f12355d) {
                dVar2 = new C3388c(f12353b);
            } else if (f12356e) {
                dVar2 = new C3386a(f12353b);
            }
        }
        f12357f = dVar2;
        f12358g = m27148e();
        f12359h = m27153d();
        f12360i = m27162b(byte[].class);
        m27162b(boolean[].class);
        m27157c(boolean[].class);
        m27162b(int[].class);
        m27157c(int[].class);
        m27162b(long[].class);
        m27157c(long[].class);
        m27162b(float[].class);
        m27157c(float[].class);
        m27162b(double[].class);
        m27157c(double[].class);
        m27162b(Object[].class);
        m27157c(Object[].class);
        Field f = m27145f();
        if (!(f == null || (dVar = f12357f) == null)) {
            dVar.f12362a.objectFieldOffset(f);
        }
        f12361j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m27165a(byte[] bArr, long j) {
        return f12357f.mo27124f(bArr, f12360i + j);
    }

    /* renamed from: a */
    public static int m27173a(Object obj, long j) {
        return f12357f.m27135a(obj, j);
    }

    /* renamed from: a */
    public static <T> T m27175a(Class<T> cls) {
        try {
            return (T) f12353b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static Field m27174a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m27172a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m27173a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m27169a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m27171a(Object obj, long j, double d) {
        f12357f.mo27133a(obj, j, d);
    }

    /* renamed from: a */
    public static void m27170a(Object obj, long j, float f) {
        f12357f.mo27132a(obj, j, f);
    }

    /* renamed from: a */
    public static void m27169a(Object obj, long j, int i) {
        f12357f.m27131a(obj, j, i);
    }

    /* renamed from: a */
    public static void m27168a(Object obj, long j, long j2) {
        f12357f.m27130a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m27167a(Object obj, long j, Object obj2) {
        f12357f.f12362a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m27166a(Object obj, long j, boolean z) {
        f12357f.mo27129a(obj, j, z);
    }

    /* renamed from: a */
    public static void m27164a(byte[] bArr, long j, byte b) {
        f12357f.mo27134a((Object) bArr, f12360i + j, b);
    }

    /* renamed from: a */
    public static boolean m27176a() {
        return f12359h;
    }

    /* renamed from: b */
    public static int m27162b(Class<?> cls) {
        if (f12359h) {
            return f12357f.f12362a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m27161b(Object obj, long j) {
        return f12357f.m27128b(obj, j);
    }

    /* renamed from: b */
    public static void m27160b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m27173a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m27169a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m27159b(Object obj, long j, boolean z) {
        m27172a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m27163b() {
        return f12358g;
    }

    /* renamed from: c */
    public static int m27157c(Class<?> cls) {
        if (f12359h) {
            return f12357f.f12362a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Unsafe m27158c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new da0());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m27154c(Object obj, long j, boolean z) {
        m27160b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m27156c(Object obj, long j) {
        return f12357f.mo27127c(obj, j);
    }

    /* renamed from: d */
    public static float m27151d(Object obj, long j) {
        return f12357f.mo27126d(obj, j);
    }

    /* renamed from: d */
    public static boolean m27153d() {
        Unsafe unsafe = f12353b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (s60.m26394a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f12352a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m27152d(Class<?> cls) {
        if (!s60.m26394a()) {
            return false;
        }
        try {
            Class<?> cls2 = f12354c;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: e */
    public static double m27147e(Object obj, long j) {
        return f12357f.mo27125e(obj, j);
    }

    /* renamed from: e */
    public static boolean m27148e() {
        Unsafe unsafe = f12353b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m27145f() == null) {
                return false;
            }
            if (s60.m26394a()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f12352a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: f */
    public static Object m27144f(Object obj, long j) {
        return f12357f.f12362a.getObject(obj, j);
    }

    /* renamed from: f */
    public static Field m27145f() {
        Field a;
        if (s60.m26394a() && (a = m27174a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m27174a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: g */
    public static byte m27143g(Object obj, long j) {
        return (byte) (m27173a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: h */
    public static byte m27142h(Object obj, long j) {
        return (byte) (m27173a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m27141i(Object obj, long j) {
        return m27143g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m27140j(Object obj, long j) {
        return m27142h(obj, j) != 0;
    }
}
