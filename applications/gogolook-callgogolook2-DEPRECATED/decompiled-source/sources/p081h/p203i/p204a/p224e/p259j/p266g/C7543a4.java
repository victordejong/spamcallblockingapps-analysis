package p081h.p203i.p204a.p224e.p259j.p266g;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.g.a4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a4.class */
public final class C7543a4 {

    /* renamed from: a */
    public static final Logger f17716a = Logger.getLogger(C7543a4.class.getName());

    /* renamed from: b */
    public static final Unsafe f17717b = m20343d();

    /* renamed from: c */
    public static final Class<?> f17718c = C7699u.m19786b();

    /* renamed from: d */
    public static final boolean f17719d = m20347c(Long.TYPE);

    /* renamed from: e */
    public static final boolean f17720e = m20347c(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC7547d f17721f;

    /* renamed from: g */
    public static final boolean f17722g;

    /* renamed from: h */
    public static final boolean f17723h;

    /* renamed from: i */
    public static final long f17724i;

    /* renamed from: j */
    public static final long f17725j;

    /* renamed from: k */
    public static final boolean f17726k;

    /* renamed from: h.i.a.e.j.g.a4$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a4$a.class */
    public static final class C7544a extends AbstractC7547d {
        public C7544a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20324a(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20322a(Object obj, long j, byte b) {
            if (C7543a4.f17726k) {
                C7543a4.m20366a(obj, j, b);
            } else {
                C7543a4.m20351b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20321a(Object obj, long j, double d) {
            m20318a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20320a(Object obj, long j, float f) {
            m20319a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20317a(Object obj, long j, boolean z) {
            if (C7543a4.f17726k) {
                C7543a4.m20350b(obj, j, z);
            } else {
                C7543a4.m20344c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20315a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: c */
        public final boolean mo20313c(Object obj, long j) {
            return C7543a4.f17726k ? C7543a4.m20330i(obj, j) : C7543a4.m20329j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: d */
        public final float mo20312d(Object obj, long j) {
            return Float.intBitsToFloat(m20323a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: e */
        public final double mo20311e(Object obj, long j) {
            return Double.longBitsToDouble(m20314b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: f */
        public final byte mo20310f(Object obj, long j) {
            return C7543a4.f17726k ? C7543a4.m20333g(obj, j) : C7543a4.m20331h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.g.a4$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a4$b.class */
    public static final class C7545b extends AbstractC7547d {
        public C7545b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20324a(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20322a(Object obj, long j, byte b) {
            if (C7543a4.f17726k) {
                C7543a4.m20366a(obj, j, b);
            } else {
                C7543a4.m20351b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20321a(Object obj, long j, double d) {
            m20318a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20320a(Object obj, long j, float f) {
            m20319a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20317a(Object obj, long j, boolean z) {
            if (C7543a4.f17726k) {
                C7543a4.m20350b(obj, j, z);
            } else {
                C7543a4.m20344c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20315a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: c */
        public final boolean mo20313c(Object obj, long j) {
            return C7543a4.f17726k ? C7543a4.m20330i(obj, j) : C7543a4.m20329j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: d */
        public final float mo20312d(Object obj, long j) {
            return Float.intBitsToFloat(m20323a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: e */
        public final double mo20311e(Object obj, long j) {
            return Double.longBitsToDouble(m20314b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: f */
        public final byte mo20310f(Object obj, long j) {
            return C7543a4.f17726k ? C7543a4.m20333g(obj, j) : C7543a4.m20331h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.g.a4$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a4$c.class */
    public static final class C7546c extends AbstractC7547d {
        public C7546c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20324a(long j, byte b) {
            this.f17727a.putByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20322a(Object obj, long j, byte b) {
            this.f17727a.putByte(obj, j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20321a(Object obj, long j, double d) {
            this.f17727a.putDouble(obj, j, d);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20320a(Object obj, long j, float f) {
            this.f17727a.putFloat(obj, j, f);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20317a(Object obj, long j, boolean z) {
            this.f17727a.putBoolean(obj, j, z);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: a */
        public final void mo20315a(byte[] bArr, long j, long j2, long j3) {
            this.f17727a.copyMemory(bArr, C7543a4.f17724i + j, (Object) null, j2, j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: c */
        public final boolean mo20313c(Object obj, long j) {
            return this.f17727a.getBoolean(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: d */
        public final float mo20312d(Object obj, long j) {
            return this.f17727a.getFloat(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: e */
        public final double mo20311e(Object obj, long j) {
            return this.f17727a.getDouble(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.AbstractC7547d
        /* renamed from: f */
        public final byte mo20310f(Object obj, long j) {
            return this.f17727a.getByte(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.g.a4$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a4$d.class */
    public static abstract class AbstractC7547d {

        /* renamed from: a */
        public Unsafe f17727a;

        public AbstractC7547d(Unsafe unsafe) {
            this.f17727a = unsafe;
        }

        /* renamed from: a */
        public final int m20323a(Object obj, long j) {
            return this.f17727a.getInt(obj, j);
        }

        /* renamed from: a */
        public final long m20316a(Field field) {
            return this.f17727a.objectFieldOffset(field);
        }

        /* renamed from: a */
        public abstract void mo20324a(long j, byte b);

        /* renamed from: a */
        public abstract void mo20322a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo20321a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo20320a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m20319a(Object obj, long j, int i) {
            this.f17727a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m20318a(Object obj, long j, long j2) {
            this.f17727a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo20317a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract void mo20315a(byte[] bArr, long j, long j2, long j3);

        /* renamed from: b */
        public final long m20314b(Object obj, long j) {
            return this.f17727a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo20313c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo20312d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo20311e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo20310f(Object obj, long j);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0104  */
    static {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7543a4.m40007clinit():void");
    }

    /* renamed from: a */
    public static byte m20357a(byte[] bArr, long j) {
        return f17721f.mo20310f(bArr, f17724i + j);
    }

    /* renamed from: a */
    public static int m20369a(Class<?> cls) {
        if (f17723h) {
            return f17721f.f17727a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m20367a(Object obj, long j) {
        return f17721f.m20323a(obj, j);
    }

    /* renamed from: a */
    public static long m20359a(Field field) {
        return f17721f.m20316a(field);
    }

    /* renamed from: a */
    public static long m20358a(ByteBuffer byteBuffer) {
        return f17721f.m20314b(byteBuffer, f17725j);
    }

    /* renamed from: a */
    public static Field m20368a(Class<?> cls, String str) {
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
    public static void m20370a(long j, byte b) {
        f17721f.mo20324a(j, b);
    }

    /* renamed from: a */
    public static void m20366a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m20367a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m20363a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m20365a(Object obj, long j, double d) {
        f17721f.mo20321a(obj, j, d);
    }

    /* renamed from: a */
    public static void m20364a(Object obj, long j, float f) {
        f17721f.mo20320a(obj, j, f);
    }

    /* renamed from: a */
    public static void m20363a(Object obj, long j, int i) {
        f17721f.m20319a(obj, j, i);
    }

    /* renamed from: a */
    public static void m20362a(Object obj, long j, long j2) {
        f17721f.m20318a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m20361a(Object obj, long j, Object obj2) {
        f17721f.f17727a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m20360a(Object obj, long j, boolean z) {
        f17721f.mo20317a(obj, j, z);
    }

    /* renamed from: a */
    public static void m20356a(byte[] bArr, long j, byte b) {
        f17721f.mo20322a((Object) bArr, f17724i + j, b);
    }

    /* renamed from: a */
    public static void m20355a(byte[] bArr, long j, long j2, long j3) {
        f17721f.mo20315a(bArr, j, j2, j3);
    }

    /* renamed from: b */
    public static int m20353b(Class<?> cls) {
        if (f17723h) {
            return f17721f.f17727a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m20352b(Object obj, long j) {
        return f17721f.m20314b(obj, j);
    }

    /* renamed from: b */
    public static long m20349b(Field field) {
        AbstractC7547d dVar;
        if (field == null || (dVar = f17721f) == null) {
            return -1L;
        }
        return dVar.m20316a(field);
    }

    /* renamed from: b */
    public static void m20351b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m20367a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m20363a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m20350b(Object obj, long j, boolean z) {
        m20366a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m20354b() {
        return f17723h;
    }

    /* renamed from: c */
    public static void m20344c(Object obj, long j, boolean z) {
        m20351b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m20348c() {
        return f17722g;
    }

    /* renamed from: c */
    public static boolean m20347c(Class<?> cls) {
        if (!C7699u.m19788a()) {
            return false;
        }
        try {
            Class<?> cls2 = f17718c;
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
    public static boolean m20346c(Object obj, long j) {
        return f17721f.mo20313c(obj, j);
    }

    /* renamed from: d */
    public static float m20342d(Object obj, long j) {
        return f17721f.mo20312d(obj, j);
    }

    /* renamed from: d */
    public static Unsafe m20343d() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C7555b4());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: e */
    public static double m20338e(Object obj, long j) {
        return f17721f.mo20311e(obj, j);
    }

    /* renamed from: e */
    public static boolean m20339e() {
        Unsafe unsafe = f17717b;
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
            if (C7699u.m19788a()) {
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
            Logger logger = f17716a;
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
    public static Object m20335f(Object obj, long j) {
        return f17721f.f17727a.getObject(obj, j);
    }

    /* renamed from: f */
    public static boolean m20336f() {
        Unsafe unsafe = f17717b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m20334g() == null) {
                return false;
            }
            if (C7699u.m19788a()) {
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
            Logger logger = f17716a;
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
    public static byte m20333g(Object obj, long j) {
        return (byte) (m20367a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: g */
    public static Field m20334g() {
        Field a;
        if (C7699u.m19788a() && (a = m20368a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m20368a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: h */
    public static byte m20331h(Object obj, long j) {
        return (byte) (m20367a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m20330i(Object obj, long j) {
        return m20333g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m20329j(Object obj, long j) {
        return m20331h(obj, j) != 0;
    }
}
