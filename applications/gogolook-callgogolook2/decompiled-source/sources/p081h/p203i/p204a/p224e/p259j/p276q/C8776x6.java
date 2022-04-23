package p081h.p203i.p204a.p224e.p259j.p276q;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.q.x6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x6.class */
public final class C8776x6 {

    /* renamed from: a */
    public static final Logger f20117a = Logger.getLogger(C8776x6.class.getName());

    /* renamed from: b */
    public static final Unsafe f20118b = m17036d();

    /* renamed from: c */
    public static final Class<?> f20119c = C8709q2.m17238b();

    /* renamed from: d */
    public static final boolean f20120d = m17040c(Long.TYPE);

    /* renamed from: e */
    public static final boolean f20121e = m17040c(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC8780d f20122f;

    /* renamed from: g */
    public static final boolean f20123g;

    /* renamed from: h */
    public static final boolean f20124h;

    /* renamed from: i */
    public static final long f20125i;

    /* renamed from: j */
    public static final long f20126j;

    /* renamed from: k */
    public static final boolean f20127k;

    /* renamed from: h.i.a.e.j.q.x6$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x6$a.class */
    public static final class C8777a extends AbstractC8780d {
        public C8777a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17017a(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17015a(Object obj, long j, byte b) {
            if (C8776x6.f20127k) {
                C8776x6.m17057a(obj, j, b);
            } else {
                C8776x6.m17043b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17014a(Object obj, long j, double d) {
            m17011a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17013a(Object obj, long j, float f) {
            m17012a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17010a(Object obj, long j, boolean z) {
            if (C8776x6.f20127k) {
                C8776x6.m17042b(obj, j, z);
            } else {
                C8776x6.m17037c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17009a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: c */
        public final boolean mo17007c(Object obj, long j) {
            return C8776x6.f20127k ? C8776x6.m17023i(obj, j) : C8776x6.m17022j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: d */
        public final float mo17006d(Object obj, long j) {
            return Float.intBitsToFloat(m17016a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: e */
        public final double mo17005e(Object obj, long j) {
            return Double.longBitsToDouble(m17008b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: f */
        public final byte mo17004f(Object obj, long j) {
            return C8776x6.f20127k ? C8776x6.m17026g(obj, j) : C8776x6.m17024h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.q.x6$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x6$b.class */
    public static final class C8778b extends AbstractC8780d {
        public C8778b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17017a(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17015a(Object obj, long j, byte b) {
            if (C8776x6.f20127k) {
                C8776x6.m17057a(obj, j, b);
            } else {
                C8776x6.m17043b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17014a(Object obj, long j, double d) {
            m17011a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17013a(Object obj, long j, float f) {
            m17012a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17010a(Object obj, long j, boolean z) {
            if (C8776x6.f20127k) {
                C8776x6.m17042b(obj, j, z);
            } else {
                C8776x6.m17037c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17009a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: c */
        public final boolean mo17007c(Object obj, long j) {
            return C8776x6.f20127k ? C8776x6.m17023i(obj, j) : C8776x6.m17022j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: d */
        public final float mo17006d(Object obj, long j) {
            return Float.intBitsToFloat(m17016a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: e */
        public final double mo17005e(Object obj, long j) {
            return Double.longBitsToDouble(m17008b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: f */
        public final byte mo17004f(Object obj, long j) {
            return C8776x6.f20127k ? C8776x6.m17026g(obj, j) : C8776x6.m17024h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.q.x6$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x6$c.class */
    public static final class C8779c extends AbstractC8780d {
        public C8779c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17017a(long j, byte b) {
            this.f20128a.putByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17015a(Object obj, long j, byte b) {
            this.f20128a.putByte(obj, j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17014a(Object obj, long j, double d) {
            this.f20128a.putDouble(obj, j, d);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17013a(Object obj, long j, float f) {
            this.f20128a.putFloat(obj, j, f);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17010a(Object obj, long j, boolean z) {
            this.f20128a.putBoolean(obj, j, z);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: a */
        public final void mo17009a(byte[] bArr, long j, long j2, long j3) {
            this.f20128a.copyMemory(bArr, C8776x6.f20125i + j, (Object) null, j2, j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: c */
        public final boolean mo17007c(Object obj, long j) {
            return this.f20128a.getBoolean(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: d */
        public final float mo17006d(Object obj, long j) {
            return this.f20128a.getFloat(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: e */
        public final double mo17005e(Object obj, long j) {
            return this.f20128a.getDouble(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8776x6.AbstractC8780d
        /* renamed from: f */
        public final byte mo17004f(Object obj, long j) {
            return this.f20128a.getByte(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.q.x6$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x6$d.class */
    public static abstract class AbstractC8780d {

        /* renamed from: a */
        public Unsafe f20128a;

        public AbstractC8780d(Unsafe unsafe) {
            this.f20128a = unsafe;
        }

        /* renamed from: a */
        public final int m17016a(Object obj, long j) {
            return this.f20128a.getInt(obj, j);
        }

        /* renamed from: a */
        public abstract void mo17017a(long j, byte b);

        /* renamed from: a */
        public abstract void mo17015a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo17014a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo17013a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m17012a(Object obj, long j, int i) {
            this.f20128a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m17011a(Object obj, long j, long j2) {
            this.f20128a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo17010a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract void mo17009a(byte[] bArr, long j, long j2, long j3);

        /* renamed from: b */
        public final long m17008b(Object obj, long j) {
            return this.f20128a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo17007c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo17006d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo17005e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo17004f(Object obj, long j);
    }

    static {
        AbstractC8780d dVar;
        AbstractC8780d dVar2 = null;
        if (f20118b != null) {
            if (!C8709q2.m17240a()) {
                dVar2 = new C8779c(f20118b);
            } else if (f20120d) {
                dVar2 = new C8778b(f20118b);
            } else if (f20121e) {
                dVar2 = new C8777a(f20118b);
            }
        }
        f20122f = dVar2;
        f20123g = m17029f();
        f20124h = m17032e();
        f20125i = m17060a(byte[].class);
        m17060a(boolean[].class);
        m17045b(boolean[].class);
        m17060a(int[].class);
        m17045b(int[].class);
        m17060a(long[].class);
        m17045b(long[].class);
        m17060a(float[].class);
        m17045b(float[].class);
        m17060a(double[].class);
        m17045b(double[].class);
        m17060a(Object[].class);
        m17045b(Object[].class);
        Field g = m17027g();
        f20126j = (g == null || (dVar = f20122f) == null) ? -1L : dVar.f20128a.objectFieldOffset(g);
        f20127k = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m17049a(byte[] bArr, long j) {
        return f20122f.mo17004f(bArr, f20125i + j);
    }

    /* renamed from: a */
    public static int m17060a(Class<?> cls) {
        if (f20124h) {
            return f20122f.f20128a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m17058a(Object obj, long j) {
        return f20122f.m17016a(obj, j);
    }

    /* renamed from: a */
    public static long m17050a(ByteBuffer byteBuffer) {
        return f20122f.m17008b(byteBuffer, f20126j);
    }

    /* renamed from: a */
    public static Field m17059a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
            field.setAccessible(true);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m17061a(long j, byte b) {
        f20122f.mo17017a(j, b);
    }

    /* renamed from: a */
    public static void m17057a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m17058a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m17054a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m17056a(Object obj, long j, double d) {
        f20122f.mo17014a(obj, j, d);
    }

    /* renamed from: a */
    public static void m17055a(Object obj, long j, float f) {
        f20122f.mo17013a(obj, j, f);
    }

    /* renamed from: a */
    public static void m17054a(Object obj, long j, int i) {
        f20122f.m17012a(obj, j, i);
    }

    /* renamed from: a */
    public static void m17053a(Object obj, long j, long j2) {
        f20122f.m17011a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m17052a(Object obj, long j, Object obj2) {
        f20122f.f20128a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m17051a(Object obj, long j, boolean z) {
        f20122f.mo17010a(obj, j, z);
    }

    /* renamed from: a */
    public static void m17048a(byte[] bArr, long j, byte b) {
        f20122f.mo17015a((Object) bArr, f20125i + j, b);
    }

    /* renamed from: a */
    public static void m17047a(byte[] bArr, long j, long j2, long j3) {
        f20122f.mo17009a(bArr, j, j2, j3);
    }

    /* renamed from: b */
    public static int m17045b(Class<?> cls) {
        if (f20124h) {
            return f20122f.f20128a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m17044b(Object obj, long j) {
        return f20122f.m17008b(obj, j);
    }

    /* renamed from: b */
    public static void m17043b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m17058a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m17054a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m17042b(Object obj, long j, boolean z) {
        m17057a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m17046b() {
        return f20124h;
    }

    /* renamed from: c */
    public static void m17037c(Object obj, long j, boolean z) {
        m17043b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m17041c() {
        return f20123g;
    }

    /* renamed from: c */
    public static boolean m17040c(Class<?> cls) {
        if (!C8709q2.m17240a()) {
            return false;
        }
        try {
            Class<?> cls2 = f20119c;
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

    /* renamed from: c */
    public static boolean m17039c(Object obj, long j) {
        return f20122f.mo17007c(obj, j);
    }

    /* renamed from: d */
    public static float m17035d(Object obj, long j) {
        return f20122f.mo17006d(obj, j);
    }

    /* renamed from: d */
    public static Unsafe m17036d() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C8789y6());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: e */
    public static double m17031e(Object obj, long j) {
        return f20122f.mo17005e(obj, j);
    }

    /* renamed from: e */
    public static boolean m17032e() {
        Unsafe unsafe = f20118b;
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
            if (C8709q2.m17240a()) {
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
            Logger logger = f20117a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: f */
    public static Object m17028f(Object obj, long j) {
        return f20122f.f20128a.getObject(obj, j);
    }

    /* renamed from: f */
    public static boolean m17029f() {
        Unsafe unsafe = f20118b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m17027g() == null) {
                return false;
            }
            if (C8709q2.m17240a()) {
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
            Logger logger = f20117a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: g */
    public static byte m17026g(Object obj, long j) {
        return (byte) (m17058a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: g */
    public static Field m17027g() {
        Field a;
        if (C8709q2.m17240a() && (a = m17059a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m17059a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: h */
    public static byte m17024h(Object obj, long j) {
        return (byte) (m17058a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m17023i(Object obj, long j) {
        return m17026g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m17022j(Object obj, long j) {
        return m17024h(obj, j) != 0;
    }
}
