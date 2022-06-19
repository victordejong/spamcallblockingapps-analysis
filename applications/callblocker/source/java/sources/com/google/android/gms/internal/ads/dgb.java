package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgb.class */
public final class dgb {

    /* renamed from: a */
    static final boolean f14234a;

    /* renamed from: b */
    private static final Logger f14235b = Logger.getLogger(dgb.class.getName());

    /* renamed from: c */
    private static final Unsafe f14236c = m9698c();

    /* renamed from: d */
    private static final Class<?> f14237d = dbf.m10228b();

    /* renamed from: e */
    private static final boolean f14238e = m9692d(Long.TYPE);

    /* renamed from: f */
    private static final boolean f14239f = m9692d(Integer.TYPE);

    /* renamed from: g */
    private static final AbstractC2967c f14240g;

    /* renamed from: h */
    private static final boolean f14241h;

    /* renamed from: i */
    private static final boolean f14242i;

    /* renamed from: j */
    private static final long f14243j;

    /* renamed from: k */
    private static final long f14244k;

    /* renamed from: l */
    private static final long f14245l;

    /* renamed from: m */
    private static final long f14246m;

    /* renamed from: n */
    private static final long f14247n;

    /* renamed from: o */
    private static final long f14248o;

    /* renamed from: p */
    private static final long f14249p;

    /* renamed from: q */
    private static final long f14250q;

    /* renamed from: r */
    private static final long f14251r;

    /* renamed from: s */
    private static final long f14252s;

    /* renamed from: t */
    private static final long f14253t;

    /* renamed from: u */
    private static final long f14254u;

    /* renamed from: v */
    private static final long f14255v;

    /* renamed from: w */
    private static final long f14256w;

    /* renamed from: x */
    private static final int f14257x;

    /* renamed from: com.google.android.gms.internal.ads.dgb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgb$a.class */
    static final class C2965a extends AbstractC2967c {
        C2965a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final byte mo9671a(Object obj, long j) {
            return dgb.f14234a ? dgb.m9679k(obj, j) : dgb.m9678l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9670a(Object obj, long j, byte b) {
            if (dgb.f14234a) {
                dgb.m9695c(obj, j, b);
            } else {
                dgb.m9690d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9669a(Object obj, long j, double d) {
            m9674a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9668a(Object obj, long j, float f) {
            m9675a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9667a(Object obj, long j, boolean z) {
            if (dgb.f14234a) {
                dgb.m9689d(obj, j, z);
            } else {
                dgb.m9686e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: b */
        public final boolean mo9666b(Object obj, long j) {
            return dgb.f14234a ? dgb.m9677m(obj, j) : dgb.m9676n(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: c */
        public final float mo9665c(Object obj, long j) {
            return Float.intBitsToFloat(m9673e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: d */
        public final double mo9664d(Object obj, long j) {
            return Double.longBitsToDouble(m9672f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dgb$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgb$b.class */
    static final class C2966b extends AbstractC2967c {
        C2966b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final byte mo9671a(Object obj, long j) {
            return dgb.f14234a ? dgb.m9679k(obj, j) : dgb.m9678l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9670a(Object obj, long j, byte b) {
            if (dgb.f14234a) {
                dgb.m9695c(obj, j, b);
            } else {
                dgb.m9690d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9669a(Object obj, long j, double d) {
            m9674a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9668a(Object obj, long j, float f) {
            m9675a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9667a(Object obj, long j, boolean z) {
            if (dgb.f14234a) {
                dgb.m9689d(obj, j, z);
            } else {
                dgb.m9686e(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: b */
        public final boolean mo9666b(Object obj, long j) {
            return dgb.f14234a ? dgb.m9677m(obj, j) : dgb.m9676n(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: c */
        public final float mo9665c(Object obj, long j) {
            return Float.intBitsToFloat(m9673e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: d */
        public final double mo9664d(Object obj, long j) {
            return Double.longBitsToDouble(m9672f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dgb$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgb$c.class */
    public static abstract class AbstractC2967c {

        /* renamed from: a */
        Unsafe f14258a;

        AbstractC2967c(Unsafe unsafe) {
            this.f14258a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo9671a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo9670a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo9669a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo9668a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m9675a(Object obj, long j, int i) {
            this.f14258a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m9674a(Object obj, long j, long j2) {
            this.f14258a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo9667a(Object obj, long j, boolean z);

        /* renamed from: b */
        public abstract boolean mo9666b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo9665c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo9664d(Object obj, long j);

        /* renamed from: e */
        public final int m9673e(Object obj, long j) {
            return this.f14258a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m9672f(Object obj, long j) {
            return this.f14258a.getLong(obj, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dgb$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgb$d.class */
    static final class C2968d extends AbstractC2967c {
        C2968d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final byte mo9671a(Object obj, long j) {
            return this.f14258a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9670a(Object obj, long j, byte b) {
            this.f14258a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9669a(Object obj, long j, double d) {
            this.f14258a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9668a(Object obj, long j, float f) {
            this.f14258a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: a */
        public final void mo9667a(Object obj, long j, boolean z) {
            this.f14258a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: b */
        public final boolean mo9666b(Object obj, long j) {
            return this.f14258a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: c */
        public final float mo9665c(Object obj, long j) {
            return this.f14258a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dgb.AbstractC2967c
        /* renamed from: d */
        public final double mo9664d(Object obj, long j) {
            return this.f14258a.getDouble(obj, j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    static {
        AbstractC2967c abstractC2967c = null;
        if (f14236c != null) {
            if (!dbf.m10230a()) {
                abstractC2967c = new C2968d(f14236c);
            } else if (f14238e) {
                abstractC2967c = new C2965a(f14236c);
            } else if (f14239f) {
                abstractC2967c = new C2966b(f14236c);
            }
        }
        f14240g = abstractC2967c;
        f14241h = m9688e();
        f14242i = m9693d();
        f14243j = m9702b(byte[].class);
        f14244k = m9702b(boolean[].class);
        f14245l = m9697c(boolean[].class);
        f14246m = m9702b(int[].class);
        f14247n = m9697c(int[].class);
        f14248o = m9702b(long[].class);
        f14249p = m9697c(long[].class);
        f14250q = m9702b(float[].class);
        f14251r = m9697c(float[].class);
        f14252s = m9702b(double[].class);
        f14253t = m9697c(double[].class);
        f14254u = m9702b(Object[].class);
        f14255v = m9697c(Object[].class);
        Field m9685f = m9685f();
        f14256w = (m9685f == null || f14240g == null) ? (char) 65535 : f14240g.f14258a.objectFieldOffset(m9685f);
        f14257x = (int) (f14243j & 7);
        f14234a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private dgb() {
    }

    /* renamed from: a */
    public static byte m9705a(byte[] bArr, long j) {
        return f14240g.mo9671a(bArr, f14243j + j);
    }

    /* renamed from: a */
    public static int m9713a(Object obj, long j) {
        return f14240g.m9673e(obj, j);
    }

    /* renamed from: a */
    public static <T> T m9715a(Class<T> cls) {
        try {
            return (T) f14236c.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m9714a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m9711a(Object obj, long j, double d) {
        f14240g.mo9669a(obj, j, d);
    }

    /* renamed from: a */
    public static void m9710a(Object obj, long j, float f) {
        f14240g.mo9668a(obj, j, f);
    }

    /* renamed from: a */
    public static void m9709a(Object obj, long j, int i) {
        f14240g.m9675a(obj, j, i);
    }

    /* renamed from: a */
    public static void m9708a(Object obj, long j, long j2) {
        f14240g.m9674a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m9707a(Object obj, long j, Object obj2) {
        f14240g.f14258a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m9706a(Object obj, long j, boolean z) {
        f14240g.mo9667a(obj, j, z);
    }

    /* renamed from: a */
    public static void m9704a(byte[] bArr, long j, byte b) {
        f14240g.mo9670a((Object) bArr, f14243j + j, b);
    }

    /* renamed from: a */
    public static boolean m9716a() {
        return f14242i;
    }

    /* renamed from: b */
    private static int m9702b(Class<?> cls) {
        return f14242i ? f14240g.f14258a.arrayBaseOffset(cls) : -1;
    }

    /* renamed from: b */
    public static long m9701b(Object obj, long j) {
        return f14240g.m9672f(obj, j);
    }

    /* renamed from: b */
    public static boolean m9703b() {
        return f14241h;
    }

    /* renamed from: c */
    private static int m9697c(Class<?> cls) {
        return f14242i ? f14240g.f14258a.arrayIndexScale(cls) : -1;
    }

    /* renamed from: c */
    public static Unsafe m9698c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new dga());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m9695c(Object obj, long j, byte b) {
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m9709a(obj, j & (-4), (m9713a(obj, j & (-4)) & ((255 << i) ^ (-1))) | ((b & 255) << i));
    }

    /* renamed from: c */
    public static boolean m9696c(Object obj, long j) {
        return f14240g.mo9666b(obj, j);
    }

    /* renamed from: d */
    public static float m9691d(Object obj, long j) {
        return f14240g.mo9665c(obj, j);
    }

    /* renamed from: d */
    public static void m9690d(Object obj, long j, byte b) {
        int i = (((int) j) & 3) << 3;
        m9709a(obj, j & (-4), (m9713a(obj, j & (-4)) & ((255 << i) ^ (-1))) | ((b & 255) << i));
    }

    /* renamed from: d */
    public static void m9689d(Object obj, long j, boolean z) {
        m9695c(obj, j, (byte) (z ? 1 : 0));
    }

    /* renamed from: d */
    private static boolean m9693d() {
        boolean z = false;
        if (f14236c != null) {
            try {
                Class<?> cls = f14236c.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                cls.getMethod("getInt", Object.class, Long.TYPE);
                cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
                cls.getMethod("getObject", Object.class, Long.TYPE);
                cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
                if (dbf.m10230a()) {
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
                Logger logger = f14235b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(th);
                logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", new StringBuilder(String.valueOf(valueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(valueOf).toString());
            }
        }
        return z;
    }

    /* renamed from: d */
    private static boolean m9692d(Class<?> cls) {
        boolean z = false;
        if (dbf.m10230a()) {
            try {
                Class<?> cls2 = f14237d;
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
    public static double m9687e(Object obj, long j) {
        return f14240g.mo9664d(obj, j);
    }

    /* renamed from: e */
    public static void m9686e(Object obj, long j, boolean z) {
        m9690d(obj, j, (byte) (z ? 1 : 0));
    }

    /* renamed from: e */
    private static boolean m9688e() {
        boolean z;
        if (f14236c == null) {
            z = false;
        } else {
            try {
                Class<?> cls = f14236c.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                z = false;
                if (m9685f() != null) {
                    if (dbf.m10230a()) {
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
                Logger logger = f14235b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(th);
                logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", new StringBuilder(String.valueOf(valueOf).length() + 71).append("platform method missing - proto runtime falling back to safer methods: ").append(valueOf).toString());
                z = false;
            }
        }
        return z;
    }

    /* renamed from: f */
    public static Object m9684f(Object obj, long j) {
        return f14240g.f14258a.getObject(obj, j);
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
    private static java.lang.reflect.Field m9685f() {
        /*
            boolean r0 = com.google.android.gms.internal.ads.dbf.m10230a()
            if (r0 == 0) goto L16
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "effectiveDirectAddress"
            java.lang.reflect.Field r0 = m9714a(r0, r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L16
        L14:
            r0 = r3
            return r0
        L16:
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "address"
            java.lang.reflect.Field r0 = m9714a(r0, r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dgb.m9685f():java.lang.reflect.Field");
    }

    /* renamed from: k */
    public static byte m9679k(Object obj, long j) {
        return (byte) (m9713a(obj, (-4) & j) >>> ((int) ((((-1) ^ j) & 3) << 3)));
    }

    /* renamed from: l */
    public static byte m9678l(Object obj, long j) {
        return (byte) (m9713a(obj, (-4) & j) >>> ((int) ((3 & j) << 3)));
    }

    /* renamed from: m */
    public static boolean m9677m(Object obj, long j) {
        return m9679k(obj, j) != 0;
    }

    /* renamed from: n */
    public static boolean m9676n(Object obj, long j) {
        return m9678l(obj, j) != 0;
    }
}
