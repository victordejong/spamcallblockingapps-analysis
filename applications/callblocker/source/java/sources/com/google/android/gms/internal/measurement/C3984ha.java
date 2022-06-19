package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.ha */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ha.class */
public final class C3984ha {

    /* renamed from: a */
    static final boolean f18243a;

    /* renamed from: b */
    private static final Logger f18244b = Logger.getLogger(C3984ha.class.getName());

    /* renamed from: c */
    private static final Unsafe f18245c = m5281c();

    /* renamed from: d */
    private static final Class<?> f18246d = C3856cq.m5817b();

    /* renamed from: e */
    private static final boolean f18247e = m5275d(Long.TYPE);

    /* renamed from: f */
    private static final boolean f18248f = m5275d(Integer.TYPE);

    /* renamed from: g */
    private static final AbstractC3988d f18249g;

    /* renamed from: h */
    private static final boolean f18250h;

    /* renamed from: i */
    private static final boolean f18251i;

    /* renamed from: j */
    private static final long f18252j;

    /* renamed from: k */
    private static final long f18253k;

    /* renamed from: l */
    private static final long f18254l;

    /* renamed from: m */
    private static final long f18255m;

    /* renamed from: n */
    private static final long f18256n;

    /* renamed from: o */
    private static final long f18257o;

    /* renamed from: p */
    private static final long f18258p;

    /* renamed from: q */
    private static final long f18259q;

    /* renamed from: r */
    private static final long f18260r;

    /* renamed from: s */
    private static final long f18261s;

    /* renamed from: t */
    private static final long f18262t;

    /* renamed from: u */
    private static final long f18263u;

    /* renamed from: v */
    private static final long f18264v;

    /* renamed from: w */
    private static final long f18265w;

    /* renamed from: x */
    private static final int f18266x;

    /* renamed from: com.google.android.gms.internal.measurement.ha$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ha$a.class */
    static final class C3985a extends AbstractC3988d {
        C3985a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final byte mo5258a(Object obj, long j) {
            return C3984ha.f18243a ? C3984ha.m5262k(obj, j) : C3984ha.m5261l(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5257a(Object obj, long j, byte b) {
            if (C3984ha.f18243a) {
                C3984ha.m5278c(obj, j, b);
            } else {
                C3984ha.m5273d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5256a(Object obj, long j, double d) {
            m5253a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5255a(Object obj, long j, float f) {
            m5254a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5252a(Object obj, long j, boolean z) {
            if (C3984ha.f18243a) {
                C3984ha.m5272d(obj, j, z);
            } else {
                C3984ha.m5269e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: b */
        public final boolean mo5251b(Object obj, long j) {
            return C3984ha.f18243a ? C3984ha.m5260m(obj, j) : C3984ha.m5259n(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: c */
        public final float mo5250c(Object obj, long j) {
            return Float.intBitsToFloat(m5248e(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: d */
        public final double mo5249d(Object obj, long j) {
            return Double.longBitsToDouble(m5247f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ha$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ha$b.class */
    static final class C3986b extends AbstractC3988d {
        C3986b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final byte mo5258a(Object obj, long j) {
            return this.f18267a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5257a(Object obj, long j, byte b) {
            this.f18267a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5256a(Object obj, long j, double d) {
            this.f18267a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5255a(Object obj, long j, float f) {
            this.f18267a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5252a(Object obj, long j, boolean z) {
            this.f18267a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: b */
        public final boolean mo5251b(Object obj, long j) {
            return this.f18267a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: c */
        public final float mo5250c(Object obj, long j) {
            return this.f18267a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: d */
        public final double mo5249d(Object obj, long j) {
            return this.f18267a.getDouble(obj, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ha$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ha$c.class */
    static final class C3987c extends AbstractC3988d {
        C3987c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final byte mo5258a(Object obj, long j) {
            return C3984ha.f18243a ? C3984ha.m5262k(obj, j) : C3984ha.m5261l(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5257a(Object obj, long j, byte b) {
            if (C3984ha.f18243a) {
                C3984ha.m5278c(obj, j, b);
            } else {
                C3984ha.m5273d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5256a(Object obj, long j, double d) {
            m5253a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5255a(Object obj, long j, float f) {
            m5254a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: a */
        public final void mo5252a(Object obj, long j, boolean z) {
            if (C3984ha.f18243a) {
                C3984ha.m5272d(obj, j, z);
            } else {
                C3984ha.m5269e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: b */
        public final boolean mo5251b(Object obj, long j) {
            return C3984ha.f18243a ? C3984ha.m5260m(obj, j) : C3984ha.m5259n(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: c */
        public final float mo5250c(Object obj, long j) {
            return Float.intBitsToFloat(m5248e(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.C3984ha.AbstractC3988d
        /* renamed from: d */
        public final double mo5249d(Object obj, long j) {
            return Double.longBitsToDouble(m5247f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ha$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ha$d.class */
    public static abstract class AbstractC3988d {

        /* renamed from: a */
        Unsafe f18267a;

        AbstractC3988d(Unsafe unsafe) {
            this.f18267a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo5258a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo5257a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo5256a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo5255a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m5254a(Object obj, long j, int i) {
            this.f18267a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m5253a(Object obj, long j, long j2) {
            this.f18267a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo5252a(Object obj, long j, boolean z);

        /* renamed from: b */
        public abstract boolean mo5251b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo5250c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo5249d(Object obj, long j);

        /* renamed from: e */
        public final int m5248e(Object obj, long j) {
            return this.f18267a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m5247f(Object obj, long j) {
            return this.f18267a.getLong(obj, j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    static {
        AbstractC3988d abstractC3988d = null;
        if (f18245c != null) {
            if (!C3856cq.m5819a()) {
                abstractC3988d = new C3986b(f18245c);
            } else if (f18247e) {
                abstractC3988d = new C3987c(f18245c);
            } else if (f18248f) {
                abstractC3988d = new C3985a(f18245c);
            }
        }
        f18249g = abstractC3988d;
        f18250h = m5271e();
        f18251i = m5276d();
        f18252j = m5285b(byte[].class);
        f18253k = m5285b(boolean[].class);
        f18254l = m5280c(boolean[].class);
        f18255m = m5285b(int[].class);
        f18256n = m5280c(int[].class);
        f18257o = m5285b(long[].class);
        f18258p = m5280c(long[].class);
        f18259q = m5285b(float[].class);
        f18260r = m5280c(float[].class);
        f18261s = m5285b(double[].class);
        f18262t = m5280c(double[].class);
        f18263u = m5285b(Object[].class);
        f18264v = m5280c(Object[].class);
        Field m5268f = m5268f();
        f18265w = (m5268f == null || f18249g == null) ? (char) 65535 : f18249g.f18267a.objectFieldOffset(m5268f);
        f18266x = (int) (f18252j & 7);
        f18243a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private C3984ha() {
    }

    /* renamed from: a */
    public static byte m5288a(byte[] bArr, long j) {
        return f18249g.mo5258a(bArr, f18252j + j);
    }

    /* renamed from: a */
    public static int m5296a(Object obj, long j) {
        return f18249g.m5248e(obj, j);
    }

    /* renamed from: a */
    public static <T> T m5298a(Class<T> cls) {
        try {
            return (T) f18245c.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m5297a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m5294a(Object obj, long j, double d) {
        f18249g.mo5256a(obj, j, d);
    }

    /* renamed from: a */
    public static void m5293a(Object obj, long j, float f) {
        f18249g.mo5255a(obj, j, f);
    }

    /* renamed from: a */
    public static void m5292a(Object obj, long j, int i) {
        f18249g.m5254a(obj, j, i);
    }

    /* renamed from: a */
    public static void m5291a(Object obj, long j, long j2) {
        f18249g.m5253a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m5290a(Object obj, long j, Object obj2) {
        f18249g.f18267a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m5289a(Object obj, long j, boolean z) {
        f18249g.mo5252a(obj, j, z);
    }

    /* renamed from: a */
    public static void m5287a(byte[] bArr, long j, byte b) {
        f18249g.mo5257a((Object) bArr, f18252j + j, b);
    }

    /* renamed from: a */
    public static boolean m5299a() {
        return f18251i;
    }

    /* renamed from: b */
    private static int m5285b(Class<?> cls) {
        return f18251i ? f18249g.f18267a.arrayBaseOffset(cls) : -1;
    }

    /* renamed from: b */
    public static long m5284b(Object obj, long j) {
        return f18249g.m5247f(obj, j);
    }

    /* renamed from: b */
    public static boolean m5286b() {
        return f18250h;
    }

    /* renamed from: c */
    private static int m5280c(Class<?> cls) {
        return f18251i ? f18249g.f18267a.arrayIndexScale(cls) : -1;
    }

    /* renamed from: c */
    public static Unsafe m5281c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C3990hc());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m5278c(Object obj, long j, byte b) {
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m5292a(obj, j & (-4), (m5296a(obj, j & (-4)) & ((255 << i) ^ (-1))) | ((b & 255) << i));
    }

    /* renamed from: c */
    public static boolean m5279c(Object obj, long j) {
        return f18249g.mo5251b(obj, j);
    }

    /* renamed from: d */
    public static float m5274d(Object obj, long j) {
        return f18249g.mo5250c(obj, j);
    }

    /* renamed from: d */
    public static void m5273d(Object obj, long j, byte b) {
        int i = (((int) j) & 3) << 3;
        m5292a(obj, j & (-4), (m5296a(obj, j & (-4)) & ((255 << i) ^ (-1))) | ((b & 255) << i));
    }

    /* renamed from: d */
    public static void m5272d(Object obj, long j, boolean z) {
        m5278c(obj, j, (byte) (z ? 1 : 0));
    }

    /* renamed from: d */
    private static boolean m5276d() {
        boolean z = false;
        if (f18245c != null) {
            try {
                Class<?> cls = f18245c.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                cls.getMethod("getInt", Object.class, Long.TYPE);
                cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
                cls.getMethod("getObject", Object.class, Long.TYPE);
                cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
                if (C3856cq.m5819a()) {
                    z = true;
                } else {
                    cls.getMethod("getByte", Object.class, Long.TYPE);
                    cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
                    cls.getMethod("getBoolean", Object.class, Long.TYPE);
                    cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
                    cls.getMethod("getFloat", Object.class, Long.TYPE);
                    cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
                    cls.getMethod("getDouble", Object.class, Long.TYPE);
                    cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
                    z = true;
                }
            } catch (Throwable th) {
                Logger logger = f18244b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(th);
                logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", new StringBuilder(String.valueOf(valueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(valueOf).toString());
            }
        }
        return z;
    }

    /* renamed from: d */
    private static boolean m5275d(Class<?> cls) {
        boolean z = false;
        if (C3856cq.m5819a()) {
            try {
                Class<?> cls2 = f18246d;
                cls2.getMethod("peekLong", cls, Boolean.TYPE);
                cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
                cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
                cls2.getMethod("peekInt", cls, Boolean.TYPE);
                cls2.getMethod("pokeByte", cls, Byte.TYPE);
                cls2.getMethod("peekByte", cls);
                cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
                cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
                z = true;
            } catch (Throwable th) {
            }
        }
        return z;
    }

    /* renamed from: e */
    public static double m5270e(Object obj, long j) {
        return f18249g.mo5249d(obj, j);
    }

    /* renamed from: e */
    public static void m5269e(Object obj, long j, boolean z) {
        m5273d(obj, j, (byte) (z ? 1 : 0));
    }

    /* renamed from: e */
    private static boolean m5271e() {
        boolean z;
        if (f18245c == null) {
            z = false;
        } else {
            try {
                Class<?> cls = f18245c.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                z = false;
                if (m5268f() != null) {
                    if (C3856cq.m5819a()) {
                        z = true;
                    } else {
                        cls.getMethod("getByte", Long.TYPE);
                        cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
                        cls.getMethod("getInt", Long.TYPE);
                        cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
                        cls.getMethod("getLong", Long.TYPE);
                        cls.getMethod("putLong", Long.TYPE, Long.TYPE);
                        cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
                        cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
                        z = true;
                    }
                }
            } catch (Throwable th) {
                Logger logger = f18244b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(th);
                logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", new StringBuilder(String.valueOf(valueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(valueOf).toString());
                z = false;
            }
        }
        return z;
    }

    /* renamed from: f */
    public static Object m5267f(Object obj, long j) {
        return f18249g.f18267a.getObject(obj, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0.getType() != java.lang.Long.TYPE) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r3 != null) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Field m5268f() {
        /*
            boolean r0 = com.google.android.gms.internal.measurement.C3856cq.m5819a()
            if (r0 == 0) goto L16
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "effectiveDirectAddress"
            java.lang.reflect.Field r0 = m5297a(r0, r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L16
        L14:
            r0 = r3
            return r0
        L16:
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "address"
            java.lang.reflect.Field r0 = m5297a(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L30
            r0 = r4
            r3 = r0
            r0 = r4
            java.lang.Class r0 = r0.getType()
            java.lang.Class r1 = java.lang.Long.TYPE
            if (r0 == r1) goto L14
        L30:
            r0 = 0
            r3 = r0
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3984ha.m5268f():java.lang.reflect.Field");
    }

    /* renamed from: k */
    public static byte m5262k(Object obj, long j) {
        return (byte) (m5296a(obj, (-4) & j) >>> ((int) ((((-1) ^ j) & 3) << 3)));
    }

    /* renamed from: l */
    public static byte m5261l(Object obj, long j) {
        return (byte) (m5296a(obj, (-4) & j) >>> ((int) ((3 & j) << 3)));
    }

    /* renamed from: m */
    public static boolean m5260m(Object obj, long j) {
        return m5262k(obj, j) != 0;
    }

    /* renamed from: n */
    public static boolean m5259n(Object obj, long j) {
        return m5261l(obj, j) != 0;
    }
}
