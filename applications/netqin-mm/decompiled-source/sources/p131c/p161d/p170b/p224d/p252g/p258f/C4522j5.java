package p131c.p161d.p170b.p224d.p252g.p258f;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.f.j5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j5.class */
public final class C4522j5 {

    /* renamed from: a */
    public static final Unsafe f16786a = m25421c();

    /* renamed from: b */
    public static final Class<?> f16787b = C4512i2.m25450b();

    /* renamed from: c */
    public static final boolean f16788c = m25415d(Long.TYPE);

    /* renamed from: d */
    public static final boolean f16789d = m25415d(Integer.TYPE);

    /* renamed from: e */
    public static final AbstractC4525c f16790e;

    /* renamed from: f */
    public static final boolean f16791f;

    /* renamed from: g */
    public static final boolean f16792g;

    /* renamed from: h */
    public static final long f16793h;

    /* renamed from: i */
    public static final boolean f16794i;

    /* renamed from: c.d.b.d.g.f.j5$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j5$a.class */
    public static final class C4523a extends AbstractC4525c {
        public C4523a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final byte mo25394a(Object obj, long j) {
            return C4522j5.f16794i ? C4522j5.m25402k(obj, j) : C4522j5.m25401l(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25393a(Object obj, long j, byte b) {
            if (C4522j5.f16794i) {
                C4522j5.m25418c(obj, j, b);
            } else {
                C4522j5.m25413d(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25392a(Object obj, long j, double d) {
            m25397a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25391a(Object obj, long j, float f) {
            m25398a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25390a(Object obj, long j, boolean z) {
            if (C4522j5.f16794i) {
                C4522j5.m25412d(obj, j, z);
            } else {
                C4522j5.m25409e(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: b */
        public final boolean mo25389b(Object obj, long j) {
            return C4522j5.f16794i ? C4522j5.m25400m(obj, j) : C4522j5.m25399n(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: c */
        public final float mo25388c(Object obj, long j) {
            return Float.intBitsToFloat(m25396e(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: d */
        public final double mo25387d(Object obj, long j) {
            return Double.longBitsToDouble(m25395f(obj, j));
        }
    }

    /* renamed from: c.d.b.d.g.f.j5$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j5$b.class */
    public static final class C4524b extends AbstractC4525c {
        public C4524b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final byte mo25394a(Object obj, long j) {
            return C4522j5.f16794i ? C4522j5.m25402k(obj, j) : C4522j5.m25401l(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25393a(Object obj, long j, byte b) {
            if (C4522j5.f16794i) {
                C4522j5.m25418c(obj, j, b);
            } else {
                C4522j5.m25413d(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25392a(Object obj, long j, double d) {
            m25397a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25391a(Object obj, long j, float f) {
            m25398a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25390a(Object obj, long j, boolean z) {
            if (C4522j5.f16794i) {
                C4522j5.m25412d(obj, j, z);
            } else {
                C4522j5.m25409e(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: b */
        public final boolean mo25389b(Object obj, long j) {
            return C4522j5.f16794i ? C4522j5.m25400m(obj, j) : C4522j5.m25399n(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: c */
        public final float mo25388c(Object obj, long j) {
            return Float.intBitsToFloat(m25396e(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: d */
        public final double mo25387d(Object obj, long j) {
            return Double.longBitsToDouble(m25395f(obj, j));
        }
    }

    /* renamed from: c.d.b.d.g.f.j5$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j5$c.class */
    public static abstract class AbstractC4525c {

        /* renamed from: a */
        public Unsafe f16795a;

        public AbstractC4525c(Unsafe unsafe) {
            this.f16795a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo25394a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo25393a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo25392a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo25391a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m25398a(Object obj, long j, int i) {
            this.f16795a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m25397a(Object obj, long j, long j2) {
            this.f16795a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo25390a(Object obj, long j, boolean z);

        /* renamed from: b */
        public abstract boolean mo25389b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo25388c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo25387d(Object obj, long j);

        /* renamed from: e */
        public final int m25396e(Object obj, long j) {
            return this.f16795a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m25395f(Object obj, long j) {
            return this.f16795a.getLong(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.f.j5$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j5$d.class */
    public static final class C4526d extends AbstractC4525c {
        public C4526d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final byte mo25394a(Object obj, long j) {
            return this.f16795a.getByte(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25393a(Object obj, long j, byte b) {
            this.f16795a.putByte(obj, j, b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25392a(Object obj, long j, double d) {
            this.f16795a.putDouble(obj, j, d);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25391a(Object obj, long j, float f) {
            this.f16795a.putFloat(obj, j, f);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: a */
        public final void mo25390a(Object obj, long j, boolean z) {
            this.f16795a.putBoolean(obj, j, z);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: b */
        public final boolean mo25389b(Object obj, long j) {
            return this.f16795a.getBoolean(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: c */
        public final float mo25388c(Object obj, long j) {
            return this.f16795a.getFloat(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4522j5.AbstractC4525c
        /* renamed from: d */
        public final double mo25387d(Object obj, long j) {
            return this.f16795a.getDouble(obj, j);
        }
    }

    static {
        AbstractC4525c cVar;
        AbstractC4525c cVar2 = null;
        if (f16786a != null) {
            if (!C4512i2.m25452a()) {
                cVar2 = new C4526d(f16786a);
            } else if (f16788c) {
                cVar2 = new C4523a(f16786a);
            } else if (f16789d) {
                cVar2 = new C4524b(f16786a);
            }
        }
        f16790e = cVar2;
        f16791f = m25411e();
        f16792g = m25416d();
        f16793h = m25425b(byte[].class);
        m25425b(boolean[].class);
        m25420c(boolean[].class);
        m25425b(int[].class);
        m25420c(int[].class);
        m25425b(long[].class);
        m25420c(long[].class);
        m25425b(float[].class);
        m25420c(float[].class);
        m25425b(double[].class);
        m25420c(double[].class);
        m25425b(Object[].class);
        m25420c(Object[].class);
        Field f = m25408f();
        if (!(f == null || (cVar = f16790e) == null)) {
            cVar.f16795a.objectFieldOffset(f);
        }
        f16794i = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m25428a(byte[] bArr, long j) {
        return f16790e.mo25394a(bArr, f16793h + j);
    }

    /* renamed from: a */
    public static int m25436a(Object obj, long j) {
        return f16790e.m25396e(obj, j);
    }

    /* renamed from: a */
    public static <T> T m25438a(Class<T> cls) {
        try {
            return (T) f16786a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static Field m25437a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m25434a(Object obj, long j, double d) {
        f16790e.mo25392a(obj, j, d);
    }

    /* renamed from: a */
    public static void m25433a(Object obj, long j, float f) {
        f16790e.mo25391a(obj, j, f);
    }

    /* renamed from: a */
    public static void m25432a(Object obj, long j, int i) {
        f16790e.m25398a(obj, j, i);
    }

    /* renamed from: a */
    public static void m25431a(Object obj, long j, long j2) {
        f16790e.m25397a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m25430a(Object obj, long j, Object obj2) {
        f16790e.f16795a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m25429a(Object obj, long j, boolean z) {
        f16790e.mo25390a(obj, j, z);
    }

    /* renamed from: a */
    public static void m25427a(byte[] bArr, long j, byte b) {
        f16790e.mo25393a((Object) bArr, f16793h + j, b);
    }

    /* renamed from: a */
    public static boolean m25439a() {
        return f16792g;
    }

    /* renamed from: b */
    public static int m25425b(Class<?> cls) {
        if (f16792g) {
            return f16790e.f16795a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m25424b(Object obj, long j) {
        return f16790e.m25395f(obj, j);
    }

    /* renamed from: b */
    public static boolean m25426b() {
        return f16791f;
    }

    /* renamed from: c */
    public static int m25420c(Class<?> cls) {
        if (f16792g) {
            return f16790e.f16795a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Unsafe m25421c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C4515i5());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m25418c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m25436a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m25432a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    public static boolean m25419c(Object obj, long j) {
        return f16790e.mo25389b(obj, j);
    }

    /* renamed from: d */
    public static float m25414d(Object obj, long j) {
        return f16790e.mo25388c(obj, j);
    }

    /* renamed from: d */
    public static void m25413d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m25436a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m25432a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    public static void m25412d(Object obj, long j, boolean z) {
        m25418c(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: d */
    public static boolean m25416d() {
        Unsafe unsafe = f16786a;
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
            if (C4512i2.m25452a()) {
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
            Logger logger = Logger.getLogger(C4522j5.class.getName());
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
    public static boolean m25415d(Class<?> cls) {
        if (!C4512i2.m25452a()) {
            return false;
        }
        try {
            Class<?> cls2 = f16787b;
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
    public static double m25410e(Object obj, long j) {
        return f16790e.mo25387d(obj, j);
    }

    /* renamed from: e */
    public static void m25409e(Object obj, long j, boolean z) {
        m25413d(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: e */
    public static boolean m25411e() {
        Unsafe unsafe = f16786a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m25408f() == null) {
                return false;
            }
            if (C4512i2.m25452a()) {
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
            Logger logger = Logger.getLogger(C4522j5.class.getName());
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
    public static Object m25407f(Object obj, long j) {
        return f16790e.f16795a.getObject(obj, j);
    }

    /* renamed from: f */
    public static Field m25408f() {
        Field a;
        if (C4512i2.m25452a() && (a = m25437a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m25437a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: k */
    public static byte m25402k(Object obj, long j) {
        return (byte) (m25436a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: l */
    public static byte m25401l(Object obj, long j) {
        return (byte) (m25436a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: m */
    public static boolean m25400m(Object obj, long j) {
        return m25402k(obj, j) != 0;
    }

    /* renamed from: n */
    public static boolean m25399n(Object obj, long j) {
        return m25401l(obj, j) != 0;
    }
}
