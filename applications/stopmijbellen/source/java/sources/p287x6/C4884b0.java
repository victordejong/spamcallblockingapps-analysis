package p287x6;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* renamed from: x6.b0 */
/* loaded from: classes-dex2jar.jar:x6/b0.class */
public final class C4884b0 {

    /* renamed from: a */
    public static final Unsafe f14951a;

    /* renamed from: b */
    public static final Class<?> f14952b = C4879a.f14943a;

    /* renamed from: c */
    public static final boolean f14953c;

    /* renamed from: d */
    public static final boolean f14954d;

    /* renamed from: e */
    public static final AbstractC4889e f14955e;

    /* renamed from: f */
    public static final boolean f14956f;

    /* renamed from: g */
    public static final boolean f14957g;

    /* renamed from: h */
    public static final long f14958h;

    /* renamed from: i */
    public static final boolean f14959i;

    /* renamed from: x6.b0$a */
    /* loaded from: classes-dex2jar.jar:x6/b0$a.class */
    public static final class C4885a implements PrivilegedExceptionAction<Unsafe> {
        /* renamed from: a */
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

    /* renamed from: x6.b0$b */
    /* loaded from: classes-dex2jar.jar:x6/b0$b.class */
    public static final class C4886b extends AbstractC4889e {
        public C4886b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: c */
        public boolean mo294c(Object obj, long j) {
            boolean z = false;
            if (C4884b0.f14959i) {
                if (C4884b0.m309h(obj, j) != 0) {
                    z = true;
                }
                return z;
            }
            boolean z2 = false;
            if (C4884b0.m308i(obj, j) != 0) {
                z2 = true;
            }
            return z2;
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: d */
        public byte mo293d(Object obj, long j) {
            return C4884b0.f14959i ? C4884b0.m309h(obj, j) : C4884b0.m308i(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: e */
        public double mo292e(Object obj, long j) {
            return Double.longBitsToDouble(m289h(obj, j));
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: f */
        public float mo291f(Object obj, long j) {
            return Float.intBitsToFloat(m290g(obj, j));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: k */
        public void mo286k(Object obj, long j, boolean z) {
            if (C4884b0.f14959i) {
                C4884b0.m300q(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C4884b0.m299r(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: l */
        public void mo285l(Object obj, long j, byte b) {
            if (C4884b0.f14959i) {
                C4884b0.m300q(obj, j, b);
            } else {
                C4884b0.m299r(obj, j, b);
            }
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: m */
        public void mo284m(Object obj, long j, double d) {
            m281p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: n */
        public void mo283n(Object obj, long j, float f) {
            m282o(obj, j, Float.floatToIntBits(f));
        }
    }

    /* renamed from: x6.b0$c */
    /* loaded from: classes-dex2jar.jar:x6/b0$c.class */
    public static final class C4887c extends AbstractC4889e {
        public C4887c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: c */
        public boolean mo294c(Object obj, long j) {
            boolean z = false;
            if (C4884b0.f14959i) {
                if (C4884b0.m309h(obj, j) != 0) {
                    z = true;
                }
                return z;
            }
            boolean z2 = false;
            if (C4884b0.m308i(obj, j) != 0) {
                z2 = true;
            }
            return z2;
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: d */
        public byte mo293d(Object obj, long j) {
            return C4884b0.f14959i ? C4884b0.m309h(obj, j) : C4884b0.m308i(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: e */
        public double mo292e(Object obj, long j) {
            return Double.longBitsToDouble(m289h(obj, j));
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: f */
        public float mo291f(Object obj, long j) {
            return Float.intBitsToFloat(m290g(obj, j));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: k */
        public void mo286k(Object obj, long j, boolean z) {
            if (C4884b0.f14959i) {
                C4884b0.m300q(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C4884b0.m299r(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: l */
        public void mo285l(Object obj, long j, byte b) {
            if (C4884b0.f14959i) {
                C4884b0.m300q(obj, j, b);
            } else {
                C4884b0.m299r(obj, j, b);
            }
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: m */
        public void mo284m(Object obj, long j, double d) {
            m281p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: n */
        public void mo283n(Object obj, long j, float f) {
            m282o(obj, j, Float.floatToIntBits(f));
        }
    }

    /* renamed from: x6.b0$d */
    /* loaded from: classes-dex2jar.jar:x6/b0$d.class */
    public static final class C4888d extends AbstractC4889e {
        public C4888d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: c */
        public boolean mo294c(Object obj, long j) {
            return this.f14960a.getBoolean(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: d */
        public byte mo293d(Object obj, long j) {
            return this.f14960a.getByte(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: e */
        public double mo292e(Object obj, long j) {
            return this.f14960a.getDouble(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: f */
        public float mo291f(Object obj, long j) {
            return this.f14960a.getFloat(obj, j);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: k */
        public void mo286k(Object obj, long j, boolean z) {
            this.f14960a.putBoolean(obj, j, z);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: l */
        public void mo285l(Object obj, long j, byte b) {
            this.f14960a.putByte(obj, j, b);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: m */
        public void mo284m(Object obj, long j, double d) {
            this.f14960a.putDouble(obj, j, d);
        }

        @Override // p287x6.C4884b0.AbstractC4889e
        /* renamed from: n */
        public void mo283n(Object obj, long j, float f) {
            this.f14960a.putFloat(obj, j, f);
        }
    }

    /* renamed from: x6.b0$e */
    /* loaded from: classes-dex2jar.jar:x6/b0$e.class */
    public static abstract class AbstractC4889e {

        /* renamed from: a */
        public Unsafe f14960a;

        public AbstractC4889e(Unsafe unsafe) {
            this.f14960a = unsafe;
        }

        /* renamed from: a */
        public final int m296a(Class<?> cls) {
            return this.f14960a.arrayBaseOffset(cls);
        }

        /* renamed from: b */
        public final int m295b(Class<?> cls) {
            return this.f14960a.arrayIndexScale(cls);
        }

        /* renamed from: c */
        public abstract boolean mo294c(Object obj, long j);

        /* renamed from: d */
        public abstract byte mo293d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo292e(Object obj, long j);

        /* renamed from: f */
        public abstract float mo291f(Object obj, long j);

        /* renamed from: g */
        public final int m290g(Object obj, long j) {
            return this.f14960a.getInt(obj, j);
        }

        /* renamed from: h */
        public final long m289h(Object obj, long j) {
            return this.f14960a.getLong(obj, j);
        }

        /* renamed from: i */
        public final Object m288i(Object obj, long j) {
            return this.f14960a.getObject(obj, j);
        }

        /* renamed from: j */
        public final long m287j(Field field) {
            return this.f14960a.objectFieldOffset(field);
        }

        /* renamed from: k */
        public abstract void mo286k(Object obj, long j, boolean z);

        /* renamed from: l */
        public abstract void mo285l(Object obj, long j, byte b);

        /* renamed from: m */
        public abstract void mo284m(Object obj, long j, double d);

        /* renamed from: n */
        public abstract void mo283n(Object obj, long j, float f);

        /* renamed from: o */
        public final void m282o(Object obj, long j, int i) {
            this.f14960a.putInt(obj, j, i);
        }

        /* renamed from: p */
        public final void m281p(Object obj, long j, long j2) {
            this.f14960a.putLong(obj, j, j2);
        }

        /* renamed from: q */
        public final void m280q(Object obj, long j, Object obj2) {
            this.f14960a.putObject(obj, j, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 1029
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p287x6.C4884b0.m11068clinit():void");
    }

    /* renamed from: a */
    public static <T> T m316a(Class<T> cls) {
        try {
            return (T) f14951a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: b */
    public static int m315b(Class<?> cls) {
        return f14957g ? f14955e.m296a(cls) : -1;
    }

    /* renamed from: c */
    public static int m314c(Class<?> cls) {
        return f14957g ? f14955e.m295b(cls) : -1;
    }

    /* renamed from: d */
    public static Field m313d() {
        Field field;
        Field field2;
        if (C4879a.m318a()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable th) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable th2) {
            field = null;
        }
        Field field3 = null;
        if (field != null) {
            field3 = null;
            if (field.getType() == Long.TYPE) {
                field3 = field;
            }
        }
        return field3;
    }

    /* renamed from: e */
    public static boolean m312e(Class<?> cls) {
        if (!C4879a.m318a()) {
            return false;
        }
        try {
            Class<?> cls2 = f14952b;
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

    /* renamed from: f */
    public static boolean m311f(Object obj, long j) {
        return f14955e.mo294c(obj, j);
    }

    /* renamed from: g */
    public static byte m310g(byte[] bArr, long j) {
        return f14955e.mo293d(bArr, f14958h + j);
    }

    /* renamed from: h */
    public static byte m309h(Object obj, long j) {
        return (byte) ((m305l(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: i */
    public static byte m308i(Object obj, long j) {
        return (byte) ((m305l(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: j */
    public static double m307j(Object obj, long j) {
        return f14955e.mo292e(obj, j);
    }

    /* renamed from: k */
    public static float m306k(Object obj, long j) {
        return f14955e.mo291f(obj, j);
    }

    /* renamed from: l */
    public static int m305l(Object obj, long j) {
        return f14955e.m290g(obj, j);
    }

    /* renamed from: m */
    public static long m304m(Object obj, long j) {
        return f14955e.m289h(obj, j);
    }

    /* renamed from: n */
    public static Object m303n(Object obj, long j) {
        return f14955e.m288i(obj, j);
    }

    /* renamed from: o */
    public static Unsafe m302o() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C4885a());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: p */
    public static void m301p(byte[] bArr, long j, byte b) {
        f14955e.mo285l(bArr, f14958h + j, b);
    }

    /* renamed from: q */
    public static void m300q(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m305l = m305l(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        f14955e.m282o(obj, j2, ((255 & b) << i) | (m305l & ((255 << i) ^ (-1))));
    }

    /* renamed from: r */
    public static void m299r(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m305l = m305l(obj, j2);
        int i = (((int) j) & 3) << 3;
        f14955e.m282o(obj, j2, ((255 & b) << i) | (m305l & ((255 << i) ^ (-1))));
    }

    /* renamed from: s */
    public static void m298s(Object obj, long j, long j2) {
        f14955e.m281p(obj, j, j2);
    }
}
