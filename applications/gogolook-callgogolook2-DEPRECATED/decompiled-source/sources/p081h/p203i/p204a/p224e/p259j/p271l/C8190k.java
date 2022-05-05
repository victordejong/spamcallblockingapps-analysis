package p081h.p203i.p204a.p224e.p259j.p271l;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.l.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k.class */
public final class C8190k {

    /* renamed from: a */
    public static final Logger f18996a = Logger.getLogger(C8190k.class.getName());

    /* renamed from: b */
    public static final Unsafe f18997b = m18424c();

    /* renamed from: c */
    public static final Class<?> f18998c = C8126g8.m18496b();

    /* renamed from: d */
    public static final boolean f18999d = m18418d(Long.TYPE);

    /* renamed from: e */
    public static final boolean f19000e = m18418d(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC8194d f19001f;

    /* renamed from: g */
    public static final boolean f19002g;

    /* renamed from: h */
    public static final boolean f19003h;

    /* renamed from: i */
    public static final long f19004i;

    /* renamed from: j */
    public static final boolean f19005j;

    /* renamed from: h.i.a.e.j.l.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k$a.class */
    public static final class C8191a extends AbstractC8194d {
        public C8191a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18400a(Object obj, long j, byte b) {
            if (C8190k.f19005j) {
                C8190k.m18438a(obj, j, b);
            } else {
                C8190k.m18426b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18399a(Object obj, long j, double d) {
            m18396a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18398a(Object obj, long j, float f) {
            m18397a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18395a(Object obj, long j, boolean z) {
            if (C8190k.f19005j) {
                C8190k.m18425b(obj, j, z);
            } else {
                C8190k.m18420c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: c */
        public final boolean mo18393c(Object obj, long j) {
            return C8190k.f19005j ? C8190k.m18407i(obj, j) : C8190k.m18406j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: d */
        public final float mo18392d(Object obj, long j) {
            return Float.intBitsToFloat(m18401a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: e */
        public final double mo18391e(Object obj, long j) {
            return Double.longBitsToDouble(m18394b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: f */
        public final byte mo18390f(Object obj, long j) {
            return C8190k.f19005j ? C8190k.m18409g(obj, j) : C8190k.m18408h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.l.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k$b.class */
    public static final class C8192b extends AbstractC8194d {
        public C8192b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18400a(Object obj, long j, byte b) {
            this.f19006a.putByte(obj, j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18399a(Object obj, long j, double d) {
            this.f19006a.putDouble(obj, j, d);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18398a(Object obj, long j, float f) {
            this.f19006a.putFloat(obj, j, f);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18395a(Object obj, long j, boolean z) {
            this.f19006a.putBoolean(obj, j, z);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: c */
        public final boolean mo18393c(Object obj, long j) {
            return this.f19006a.getBoolean(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: d */
        public final float mo18392d(Object obj, long j) {
            return this.f19006a.getFloat(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: e */
        public final double mo18391e(Object obj, long j) {
            return this.f19006a.getDouble(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: f */
        public final byte mo18390f(Object obj, long j) {
            return this.f19006a.getByte(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.l.k$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k$c.class */
    public static final class C8193c extends AbstractC8194d {
        public C8193c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18400a(Object obj, long j, byte b) {
            if (C8190k.f19005j) {
                C8190k.m18438a(obj, j, b);
            } else {
                C8190k.m18426b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18399a(Object obj, long j, double d) {
            m18396a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18398a(Object obj, long j, float f) {
            m18397a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: a */
        public final void mo18395a(Object obj, long j, boolean z) {
            if (C8190k.f19005j) {
                C8190k.m18425b(obj, j, z);
            } else {
                C8190k.m18420c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: c */
        public final boolean mo18393c(Object obj, long j) {
            return C8190k.f19005j ? C8190k.m18407i(obj, j) : C8190k.m18406j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: d */
        public final float mo18392d(Object obj, long j) {
            return Float.intBitsToFloat(m18401a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: e */
        public final double mo18391e(Object obj, long j) {
            return Double.longBitsToDouble(m18394b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.C8190k.AbstractC8194d
        /* renamed from: f */
        public final byte mo18390f(Object obj, long j) {
            return C8190k.f19005j ? C8190k.m18409g(obj, j) : C8190k.m18408h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.l.k$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k$d.class */
    public static abstract class AbstractC8194d {

        /* renamed from: a */
        public Unsafe f19006a;

        public AbstractC8194d(Unsafe unsafe) {
            this.f19006a = unsafe;
        }

        /* renamed from: a */
        public final int m18401a(Object obj, long j) {
            return this.f19006a.getInt(obj, j);
        }

        /* renamed from: a */
        public abstract void mo18400a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo18399a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo18398a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m18397a(Object obj, long j, int i) {
            this.f19006a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m18396a(Object obj, long j, long j2) {
            this.f19006a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo18395a(Object obj, long j, boolean z);

        /* renamed from: b */
        public final long m18394b(Object obj, long j) {
            return this.f19006a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo18393c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo18392d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo18391e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo18390f(Object obj, long j);
    }

    static {
        AbstractC8194d dVar;
        AbstractC8194d dVar2 = null;
        if (f18997b != null) {
            if (!C8126g8.m18498a()) {
                dVar2 = new C8192b(f18997b);
            } else if (f18999d) {
                dVar2 = new C8193c(f18997b);
            } else if (f19000e) {
                dVar2 = new C8191a(f18997b);
            }
        }
        f19001f = dVar2;
        f19002g = m18414e();
        f19003h = m18419d();
        f19004i = m18428b(byte[].class);
        m18428b(boolean[].class);
        m18423c(boolean[].class);
        m18428b(int[].class);
        m18423c(int[].class);
        m18428b(long[].class);
        m18423c(long[].class);
        m18428b(float[].class);
        m18423c(float[].class);
        m18428b(double[].class);
        m18423c(double[].class);
        m18428b(Object[].class);
        m18423c(Object[].class);
        Field f = m18411f();
        if (!(f == null || (dVar = f19001f) == null)) {
            dVar.f19006a.objectFieldOffset(f);
        }
        f19005j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m18431a(byte[] bArr, long j) {
        return f19001f.mo18390f(bArr, f19004i + j);
    }

    /* renamed from: a */
    public static int m18439a(Object obj, long j) {
        return f19001f.m18401a(obj, j);
    }

    /* renamed from: a */
    public static <T> T m18441a(Class<T> cls) {
        try {
            return (T) f18997b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static Field m18440a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m18438a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m18439a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m18435a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m18437a(Object obj, long j, double d) {
        f19001f.mo18399a(obj, j, d);
    }

    /* renamed from: a */
    public static void m18436a(Object obj, long j, float f) {
        f19001f.mo18398a(obj, j, f);
    }

    /* renamed from: a */
    public static void m18435a(Object obj, long j, int i) {
        f19001f.m18397a(obj, j, i);
    }

    /* renamed from: a */
    public static void m18434a(Object obj, long j, long j2) {
        f19001f.m18396a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m18433a(Object obj, long j, Object obj2) {
        f19001f.f19006a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m18432a(Object obj, long j, boolean z) {
        f19001f.mo18395a(obj, j, z);
    }

    /* renamed from: a */
    public static void m18430a(byte[] bArr, long j, byte b) {
        f19001f.mo18400a((Object) bArr, f19004i + j, b);
    }

    /* renamed from: a */
    public static boolean m18442a() {
        return f19003h;
    }

    /* renamed from: b */
    public static int m18428b(Class<?> cls) {
        if (f19003h) {
            return f19001f.f19006a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m18427b(Object obj, long j) {
        return f19001f.m18394b(obj, j);
    }

    /* renamed from: b */
    public static void m18426b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m18439a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m18435a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m18425b(Object obj, long j, boolean z) {
        m18438a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m18429b() {
        return f19002g;
    }

    /* renamed from: c */
    public static int m18423c(Class<?> cls) {
        if (f19003h) {
            return f19001f.f19006a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Unsafe m18424c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C8237m());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m18420c(Object obj, long j, boolean z) {
        m18426b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m18422c(Object obj, long j) {
        return f19001f.mo18393c(obj, j);
    }

    /* renamed from: d */
    public static float m18417d(Object obj, long j) {
        return f19001f.mo18392d(obj, j);
    }

    /* renamed from: d */
    public static boolean m18419d() {
        Unsafe unsafe = f18997b;
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
            if (C8126g8.m18498a()) {
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
            Logger logger = f18996a;
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
    public static boolean m18418d(Class<?> cls) {
        if (!C8126g8.m18498a()) {
            return false;
        }
        try {
            Class<?> cls2 = f18998c;
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
    public static double m18413e(Object obj, long j) {
        return f19001f.mo18391e(obj, j);
    }

    /* renamed from: e */
    public static boolean m18414e() {
        Unsafe unsafe = f18997b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m18411f() == null) {
                return false;
            }
            if (C8126g8.m18498a()) {
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
            Logger logger = f18996a;
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
    public static Object m18410f(Object obj, long j) {
        return f19001f.f19006a.getObject(obj, j);
    }

    /* renamed from: f */
    public static Field m18411f() {
        Field a;
        if (C8126g8.m18498a() && (a = m18440a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m18440a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: g */
    public static byte m18409g(Object obj, long j) {
        return (byte) (m18439a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: h */
    public static byte m18408h(Object obj, long j) {
        return (byte) (m18439a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m18407i(Object obj, long j) {
        return m18409g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m18406j(Object obj, long j) {
        return m18408h(obj, j) != 0;
    }
}
