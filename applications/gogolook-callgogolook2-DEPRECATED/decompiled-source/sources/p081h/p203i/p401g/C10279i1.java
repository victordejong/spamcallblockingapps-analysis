package p081h.p203i.p401g;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: h.i.g.i1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/i1.class */
public final class C10279i1 {

    /* renamed from: a */
    public static final Logger f23123a = Logger.getLogger(C10279i1.class.getName());

    /* renamed from: b */
    public static final Unsafe f23124b = m12782c();

    /* renamed from: c */
    public static final Class<?> f23125c = C10242e.m13031a();

    /* renamed from: d */
    public static final boolean f23126d = m12781c(Long.TYPE);

    /* renamed from: e */
    public static final boolean f23127e = m12781c(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC10284e f23128f = m12787b();

    /* renamed from: g */
    public static final boolean f23129g = m12772g();

    /* renamed from: h */
    public static final boolean f23130h = m12773f();

    /* renamed from: i */
    public static final long f23131i = m12795a(byte[].class);

    /* renamed from: j */
    public static final boolean f23132j;

    /* renamed from: h.i.g.i1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i1$a.class */
    public static final class C10280a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public Unsafe run() throws Exception {
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

    /* renamed from: h.i.g.i1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i1$b.class */
    public static final class C10281b extends AbstractC10284e {
        public C10281b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public byte mo12770a(Object obj, long j) {
            return C10279i1.f23132j ? C10279i1.m12780c(obj, j) : C10279i1.m12777d(obj, j);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public void mo12769a(Object obj, long j, byte b) {
            if (C10279i1.f23132j) {
                C10279i1.m12779c(obj, j, b);
            } else {
                C10279i1.m12776d(obj, j, b);
            }
        }
    }

    /* renamed from: h.i.g.i1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i1$c.class */
    public static final class C10282c extends AbstractC10284e {
        public C10282c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public byte mo12770a(Object obj, long j) {
            return C10279i1.f23132j ? C10279i1.m12780c(obj, j) : C10279i1.m12777d(obj, j);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public void mo12769a(Object obj, long j, byte b) {
            if (C10279i1.f23132j) {
                C10279i1.m12779c(obj, j, b);
            } else {
                C10279i1.m12776d(obj, j, b);
            }
        }
    }

    /* renamed from: h.i.g.i1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i1$d.class */
    public static final class C10283d extends AbstractC10284e {
        public C10283d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public byte mo12770a(Object obj, long j) {
            return this.f23133a.getByte(obj, j);
        }

        @Override // p081h.p203i.p401g.C10279i1.AbstractC10284e
        /* renamed from: a */
        public void mo12769a(Object obj, long j, byte b) {
            this.f23133a.putByte(obj, j, b);
        }
    }

    /* renamed from: h.i.g.i1$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/i1$e.class */
    public static abstract class AbstractC10284e {

        /* renamed from: a */
        public Unsafe f23133a;

        public AbstractC10284e(Unsafe unsafe) {
            this.f23133a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo12770a(Object obj, long j);

        /* renamed from: a */
        public final int m12771a(Class<?> cls) {
            return this.f23133a.arrayBaseOffset(cls);
        }

        /* renamed from: a */
        public final long m12767a(Field field) {
            return this.f23133a.objectFieldOffset(field);
        }

        /* renamed from: a */
        public abstract void mo12769a(Object obj, long j, byte b);

        /* renamed from: a */
        public final void m12768a(Object obj, long j, int i) {
            this.f23133a.putInt(obj, j, i);
        }

        /* renamed from: b */
        public final int m12766b(Class<?> cls) {
            return this.f23133a.arrayIndexScale(cls);
        }

        /* renamed from: b */
        public final int m12765b(Object obj, long j) {
            return this.f23133a.getInt(obj, j);
        }
    }

    static {
        m12795a(boolean[].class);
        m12786b(boolean[].class);
        m12795a(int[].class);
        m12786b(int[].class);
        m12795a(long[].class);
        m12786b(long[].class);
        m12795a(float[].class);
        m12786b(float[].class);
        m12795a(double[].class);
        m12786b(double[].class);
        m12795a(Object[].class);
        m12786b(Object[].class);
        m12790a(m12796a());
        f23132j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m12789a(byte[] bArr, long j) {
        return f23128f.mo12770a(bArr, f23131i + j);
    }

    /* renamed from: a */
    public static int m12795a(Class<?> cls) {
        return f23130h ? f23128f.m12771a(cls) : -1;
    }

    /* renamed from: a */
    public static long m12790a(Field field) {
        AbstractC10284e eVar;
        return (field == null || (eVar = f23128f) == null) ? -1L : eVar.m12767a(field);
    }

    /* renamed from: a */
    public static Field m12796a() {
        Field a;
        if (C10242e.m13029b() && (a = m12794a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m12794a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            a2 = null;
        }
        return a2;
    }

    /* renamed from: a */
    public static Field m12794a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m12791a(Object obj, long j, int i) {
        f23128f.m12768a(obj, j, i);
    }

    /* renamed from: a */
    public static void m12788a(byte[] bArr, long j, byte b) {
        f23128f.mo12769a((Object) bArr, f23131i + j, b);
    }

    /* renamed from: b */
    public static int m12786b(Class<?> cls) {
        return f23130h ? f23128f.m12766b(cls) : -1;
    }

    /* renamed from: b */
    public static long m12783b(Field field) {
        return f23128f.m12767a(field);
    }

    /* renamed from: b */
    public static AbstractC10284e m12787b() {
        if (f23124b == null) {
            return null;
        }
        if (!C10242e.m13029b()) {
            return new C10283d(f23124b);
        }
        if (f23126d) {
            return new C10282c(f23124b);
        }
        if (f23127e) {
            return new C10281b(f23124b);
        }
        return null;
    }

    /* renamed from: c */
    public static byte m12780c(Object obj, long j) {
        return (byte) ((m12774e(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: c */
    public static Unsafe m12782c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C10280a());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m12779c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int e = m12774e(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m12791a(obj, j2, ((255 & b) << i) | (e & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    public static boolean m12781c(Class<?> cls) {
        if (!C10242e.m13029b()) {
            return false;
        }
        try {
            Class<?> cls2 = f23125c;
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

    /* renamed from: d */
    public static byte m12777d(Object obj, long j) {
        return (byte) ((m12774e(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: d */
    public static void m12776d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int e = m12774e(obj, j2);
        int i = (((int) j) & 3) << 3;
        m12791a(obj, j2, ((255 & b) << i) | (e & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    public static boolean m12778d() {
        return f23130h;
    }

    /* renamed from: e */
    public static int m12774e(Object obj, long j) {
        return f23128f.m12765b(obj, j);
    }

    /* renamed from: e */
    public static boolean m12775e() {
        return f23129g;
    }

    /* renamed from: f */
    public static boolean m12773f() {
        Unsafe unsafe = f23124b;
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
            if (C10242e.m13029b()) {
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
            Logger logger = f23123a;
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m12772g() {
        Unsafe unsafe = f23124b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m12796a() == null) {
                return false;
            }
            if (C10242e.m13029b()) {
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
            Logger logger = f23123a;
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }
}
