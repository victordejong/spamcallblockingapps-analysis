package p131c.p161d.p170b.p224d.p252g.p255c;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: c.d.b.d.g.c.k2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k2.class */
public final class C4368k2 {

    /* renamed from: a */
    public static final Logger f16545a = Logger.getLogger(C4368k2.class.getName());

    /* renamed from: b */
    public static final Unsafe f16546b = m25856d();

    /* renamed from: c */
    public static final Class<?> f16547c = C4379m.m25807b();

    /* renamed from: d */
    public static final boolean f16548d = m25860c(Long.TYPE);

    /* renamed from: e */
    public static final boolean f16549e = m25860c(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC4372d f16550f;

    /* renamed from: g */
    public static final boolean f16551g;

    /* renamed from: h */
    public static final boolean f16552h;

    /* renamed from: i */
    public static final long f16553i;

    /* renamed from: j */
    public static final long f16554j;

    /* renamed from: k */
    public static final boolean f16555k;

    /* renamed from: c.d.b.d.g.c.k2$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k2$a.class */
    public static final class C4369a extends AbstractC4372d {
        public C4369a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25837a(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25835a(Object obj, long j, byte b) {
            if (C4368k2.f16555k) {
                C4368k2.m25879a(obj, j, b);
            } else {
                C4368k2.m25864b(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25834a(Object obj, long j, double d) {
            m25831a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25833a(Object obj, long j, float f) {
            m25832a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25830a(Object obj, long j, boolean z) {
            if (C4368k2.f16555k) {
                C4368k2.m25863b(obj, j, z);
            } else {
                C4368k2.m25857c(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25828a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: c */
        public final boolean mo25826c(Object obj, long j) {
            return C4368k2.f16555k ? C4368k2.m25843i(obj, j) : C4368k2.m25842j(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: d */
        public final float mo25825d(Object obj, long j) {
            return Float.intBitsToFloat(m25836a(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: e */
        public final double mo25824e(Object obj, long j) {
            return Double.longBitsToDouble(m25827b(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: f */
        public final byte mo25823f(Object obj, long j) {
            return C4368k2.f16555k ? C4368k2.m25846g(obj, j) : C4368k2.m25844h(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.c.k2$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k2$b.class */
    public static final class C4370b extends AbstractC4372d {
        public C4370b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25837a(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25835a(Object obj, long j, byte b) {
            if (C4368k2.f16555k) {
                C4368k2.m25879a(obj, j, b);
            } else {
                C4368k2.m25864b(obj, j, b);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25834a(Object obj, long j, double d) {
            m25831a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25833a(Object obj, long j, float f) {
            m25832a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25830a(Object obj, long j, boolean z) {
            if (C4368k2.f16555k) {
                C4368k2.m25863b(obj, j, z);
            } else {
                C4368k2.m25857c(obj, j, z);
            }
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25828a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: c */
        public final boolean mo25826c(Object obj, long j) {
            return C4368k2.f16555k ? C4368k2.m25843i(obj, j) : C4368k2.m25842j(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: d */
        public final float mo25825d(Object obj, long j) {
            return Float.intBitsToFloat(m25836a(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: e */
        public final double mo25824e(Object obj, long j) {
            return Double.longBitsToDouble(m25827b(obj, j));
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: f */
        public final byte mo25823f(Object obj, long j) {
            return C4368k2.f16555k ? C4368k2.m25846g(obj, j) : C4368k2.m25844h(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.c.k2$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k2$c.class */
    public static final class C4371c extends AbstractC4372d {
        public C4371c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25837a(long j, byte b) {
            this.f16556a.putByte(j, b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25835a(Object obj, long j, byte b) {
            this.f16556a.putByte(obj, j, b);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25834a(Object obj, long j, double d) {
            this.f16556a.putDouble(obj, j, d);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25833a(Object obj, long j, float f) {
            this.f16556a.putFloat(obj, j, f);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25830a(Object obj, long j, boolean z) {
            this.f16556a.putBoolean(obj, j, z);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: a */
        public final void mo25828a(byte[] bArr, long j, long j2, long j3) {
            this.f16556a.copyMemory(bArr, C4368k2.f16553i + j, (Object) null, j2, j3);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: c */
        public final boolean mo25826c(Object obj, long j) {
            return this.f16556a.getBoolean(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: d */
        public final float mo25825d(Object obj, long j) {
            return this.f16556a.getFloat(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: e */
        public final double mo25824e(Object obj, long j) {
            return this.f16556a.getDouble(obj, j);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.AbstractC4372d
        /* renamed from: f */
        public final byte mo25823f(Object obj, long j) {
            return this.f16556a.getByte(obj, j);
        }
    }

    /* renamed from: c.d.b.d.g.c.k2$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/k2$d.class */
    public static abstract class AbstractC4372d {

        /* renamed from: a */
        public Unsafe f16556a;

        public AbstractC4372d(Unsafe unsafe) {
            this.f16556a = unsafe;
        }

        /* renamed from: a */
        public final int m25836a(Object obj, long j) {
            return this.f16556a.getInt(obj, j);
        }

        /* renamed from: a */
        public final long m25829a(Field field) {
            return this.f16556a.objectFieldOffset(field);
        }

        /* renamed from: a */
        public abstract void mo25837a(long j, byte b);

        /* renamed from: a */
        public abstract void mo25835a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo25834a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo25833a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m25832a(Object obj, long j, int i) {
            this.f16556a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m25831a(Object obj, long j, long j2) {
            this.f16556a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo25830a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract void mo25828a(byte[] bArr, long j, long j2, long j3);

        /* renamed from: b */
        public final long m25827b(Object obj, long j) {
            return this.f16556a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo25826c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo25825d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo25824e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo25823f(Object obj, long j);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0109  */
    static {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4368k2.m40227clinit():void");
    }

    /* renamed from: a */
    public static byte m25870a(byte[] bArr, long j) {
        return f16550f.mo25823f(bArr, f16553i + j);
    }

    /* renamed from: a */
    public static int m25882a(Class<?> cls) {
        if (f16552h) {
            return f16550f.f16556a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m25880a(Object obj, long j) {
        return f16550f.m25836a(obj, j);
    }

    /* renamed from: a */
    public static long m25872a(Field field) {
        return f16550f.m25829a(field);
    }

    /* renamed from: a */
    public static long m25871a(ByteBuffer byteBuffer) {
        return f16550f.m25827b(byteBuffer, f16554j);
    }

    /* renamed from: a */
    public static Field m25881a(Class<?> cls, String str) {
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
    public static void m25883a(long j, byte b) {
        f16550f.mo25837a(j, b);
    }

    /* renamed from: a */
    public static void m25879a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m25880a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m25876a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m25878a(Object obj, long j, double d) {
        f16550f.mo25834a(obj, j, d);
    }

    /* renamed from: a */
    public static void m25877a(Object obj, long j, float f) {
        f16550f.mo25833a(obj, j, f);
    }

    /* renamed from: a */
    public static void m25876a(Object obj, long j, int i) {
        f16550f.m25832a(obj, j, i);
    }

    /* renamed from: a */
    public static void m25875a(Object obj, long j, long j2) {
        f16550f.m25831a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m25874a(Object obj, long j, Object obj2) {
        f16550f.f16556a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m25873a(Object obj, long j, boolean z) {
        f16550f.mo25830a(obj, j, z);
    }

    /* renamed from: a */
    public static void m25869a(byte[] bArr, long j, byte b) {
        f16550f.mo25835a((Object) bArr, f16553i + j, b);
    }

    /* renamed from: a */
    public static void m25868a(byte[] bArr, long j, long j2, long j3) {
        f16550f.mo25828a(bArr, j, j2, j3);
    }

    /* renamed from: b */
    public static int m25866b(Class<?> cls) {
        if (f16552h) {
            return f16550f.f16556a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m25865b(Object obj, long j) {
        return f16550f.m25827b(obj, j);
    }

    /* renamed from: b */
    public static long m25862b(Field field) {
        AbstractC4372d dVar;
        if (field == null || (dVar = f16550f) == null) {
            return -1L;
        }
        return dVar.m25829a(field);
    }

    /* renamed from: b */
    public static void m25864b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m25880a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m25876a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m25863b(Object obj, long j, boolean z) {
        m25879a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m25867b() {
        return f16552h;
    }

    /* renamed from: c */
    public static void m25857c(Object obj, long j, boolean z) {
        m25864b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m25861c() {
        return f16551g;
    }

    /* renamed from: c */
    public static boolean m25860c(Class<?> cls) {
        if (!C4379m.m25809a()) {
            return false;
        }
        try {
            Class<?> cls2 = f16547c;
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
    public static boolean m25859c(Object obj, long j) {
        return f16550f.mo25826c(obj, j);
    }

    /* renamed from: d */
    public static float m25855d(Object obj, long j) {
        return f16550f.mo25825d(obj, j);
    }

    /* renamed from: d */
    public static Unsafe m25856d() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C4377l2());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: e */
    public static double m25851e(Object obj, long j) {
        return f16550f.mo25824e(obj, j);
    }

    /* renamed from: e */
    public static boolean m25852e() {
        Unsafe unsafe = f16546b;
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
            if (C4379m.m25809a()) {
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
            Logger logger = f16545a;
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
    public static Object m25848f(Object obj, long j) {
        return f16550f.f16556a.getObject(obj, j);
    }

    /* renamed from: f */
    public static boolean m25849f() {
        Unsafe unsafe = f16546b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m25847g() == null) {
                return false;
            }
            if (C4379m.m25809a()) {
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
            Logger logger = f16545a;
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
    public static byte m25846g(Object obj, long j) {
        return (byte) (m25880a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: g */
    public static Field m25847g() {
        Field a;
        if (C4379m.m25809a() && (a = m25881a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m25881a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: h */
    public static byte m25844h(Object obj, long j) {
        return (byte) (m25880a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m25843i(Object obj, long j) {
        return m25846g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m25842j(Object obj, long j) {
        return m25844h(obj, j) != 0;
    }
}
