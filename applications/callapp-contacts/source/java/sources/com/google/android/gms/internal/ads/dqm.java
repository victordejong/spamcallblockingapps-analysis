package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm.class */
public final class dqm {

    /* renamed from: a */
    static final boolean f47423a;

    /* renamed from: b */
    private static final Unsafe f47424b;

    /* renamed from: c */
    private static final Class<?> f47425c = dlp.m16502b();

    /* renamed from: d */
    private static final boolean f47426d;

    /* renamed from: e */
    private static final boolean f47427e;

    /* renamed from: f */
    private static final AbstractC12393d f47428f;

    /* renamed from: g */
    private static final boolean f47429g;

    /* renamed from: h */
    private static final boolean f47430h;

    /* renamed from: i */
    private static final long f47431i;

    /* renamed from: j */
    private static final long f47432j;

    /* renamed from: k */
    private static final long f47433k;

    /* renamed from: l */
    private static final long f47434l;

    /* renamed from: m */
    private static final long f47435m;

    /* renamed from: n */
    private static final long f47436n;

    /* renamed from: o */
    private static final long f47437o;

    /* renamed from: p */
    private static final long f47438p;

    /* renamed from: q */
    private static final long f47439q;

    /* renamed from: r */
    private static final long f47440r;

    /* renamed from: s */
    private static final long f47441s;

    /* renamed from: t */
    private static final long f47442t;

    /* renamed from: u */
    private static final long f47443u;

    /* renamed from: v */
    private static final long f47444v;

    /* renamed from: w */
    private static final int f47445w;

    /* renamed from: com.google.android.gms.internal.ads.dqm$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$a.class */
    static final class C12390a extends AbstractC12393d {
        C12390a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final byte mo15959a(Object obj, long j) {
            return dqm.f47423a ? dqm.m15961k(obj, j) : dqm.m15960l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15958a(Object obj, long j, byte b) {
            if (dqm.f47423a) {
                dqm.m15975c(obj, j, b);
            } else {
                dqm.m15970d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15957a(Object obj, long j, double d) {
            m15954a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15956a(Object obj, long j, float f) {
            m15955a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15953a(Object obj, long j, boolean z) {
            if (dqm.f47423a) {
                dqm.m15979b(obj, j, z);
            } else {
                dqm.m15974c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: b */
        public final boolean mo15952b(Object obj, long j) {
            return dqm.f47423a ? dqm.m15963i(obj, j) : dqm.m15962j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: c */
        public final float mo15951c(Object obj, long j) {
            return Float.intBitsToFloat(m15949e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: d */
        public final double mo15950d(Object obj, long j) {
            return Double.longBitsToDouble(m15948f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dqm$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$b.class */
    static final class C12391b extends AbstractC12393d {
        C12391b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final byte mo15959a(Object obj, long j) {
            return this.f47446a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15958a(Object obj, long j, byte b) {
            this.f47446a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15957a(Object obj, long j, double d) {
            this.f47446a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15956a(Object obj, long j, float f) {
            this.f47446a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15953a(Object obj, long j, boolean z) {
            this.f47446a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: b */
        public final boolean mo15952b(Object obj, long j) {
            return this.f47446a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: c */
        public final float mo15951c(Object obj, long j) {
            return this.f47446a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: d */
        public final double mo15950d(Object obj, long j) {
            return this.f47446a.getDouble(obj, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dqm$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$c.class */
    static final class C12392c extends AbstractC12393d {
        C12392c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final byte mo15959a(Object obj, long j) {
            return dqm.f47423a ? dqm.m15961k(obj, j) : dqm.m15960l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15958a(Object obj, long j, byte b) {
            if (dqm.f47423a) {
                dqm.m15975c(obj, j, b);
            } else {
                dqm.m15970d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15957a(Object obj, long j, double d) {
            m15954a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15956a(Object obj, long j, float f) {
            m15955a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: a */
        public final void mo15953a(Object obj, long j, boolean z) {
            if (dqm.f47423a) {
                dqm.m15979b(obj, j, z);
            } else {
                dqm.m15974c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: b */
        public final boolean mo15952b(Object obj, long j) {
            return dqm.f47423a ? dqm.m15963i(obj, j) : dqm.m15962j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: c */
        public final float mo15951c(Object obj, long j) {
            return Float.intBitsToFloat(m15949e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dqm.AbstractC12393d
        /* renamed from: d */
        public final double mo15950d(Object obj, long j) {
            return Double.longBitsToDouble(m15948f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dqm$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$d.class */
    public static abstract class AbstractC12393d {

        /* renamed from: a */
        Unsafe f47446a;

        AbstractC12393d(Unsafe unsafe) {
            this.f47446a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo15959a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo15958a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo15957a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo15956a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m15955a(Object obj, long j, int i) {
            this.f47446a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m15954a(Object obj, long j, long j2) {
            this.f47446a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo15953a(Object obj, long j, boolean z);

        /* renamed from: b */
        public abstract boolean mo15952b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo15951c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo15950d(Object obj, long j);

        /* renamed from: e */
        public final int m15949e(Object obj, long j) {
            return this.f47446a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m15948f(Object obj, long j) {
            return this.f47446a.getLong(obj, j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    static {
        Unsafe m15978c = m15978c();
        f47424b = m15978c;
        boolean m15972d = m15972d(Long.TYPE);
        f47426d = m15972d;
        boolean m15972d2 = m15972d(Integer.TYPE);
        f47427e = m15972d2;
        C12392c c12392c = null;
        C12392c c12392c2 = c12392c;
        if (m15978c != null) {
            if (!dlp.m16504a()) {
                c12392c2 = new C12391b(m15978c);
            } else if (m15972d) {
                c12392c2 = new C12392c(m15978c);
            } else {
                c12392c2 = c12392c;
                if (m15972d2) {
                    c12392c2 = new C12390a(m15978c);
                }
            }
        }
        f47428f = c12392c2;
        f47429g = m15969e();
        f47430h = m15973d();
        long m15982b = m15982b(byte[].class);
        f47431i = m15982b;
        f47432j = m15982b(boolean[].class);
        f47433k = m15977c(boolean[].class);
        f47434l = m15982b(int[].class);
        f47435m = m15977c(int[].class);
        f47436n = m15982b(long[].class);
        f47437o = m15977c(long[].class);
        f47438p = m15982b(float[].class);
        f47439q = m15977c(float[].class);
        f47440r = m15982b(double[].class);
        f47441s = m15977c(double[].class);
        f47442t = m15982b(Object[].class);
        f47443u = m15977c(Object[].class);
        Field m15967f = m15967f();
        f47444v = (m15967f == null || c12392c2 == null) ? (char) 65535 : c12392c2.f47446a.objectFieldOffset(m15967f);
        f47445w = (int) (7 & m15982b);
        f47423a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private dqm() {
    }

    /* renamed from: a */
    public static byte m15985a(byte[] bArr, long j) {
        return f47428f.mo15959a(bArr, f47431i + j);
    }

    /* renamed from: a */
    public static int m15993a(Object obj, long j) {
        return f47428f.m15949e(obj, j);
    }

    /* renamed from: a */
    public static <T> T m15995a(Class<T> cls) {
        try {
            return (T) f47424b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m15994a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m15991a(Object obj, long j, double d) {
        f47428f.mo15957a(obj, j, d);
    }

    /* renamed from: a */
    public static void m15990a(Object obj, long j, float f) {
        f47428f.mo15956a(obj, j, f);
    }

    /* renamed from: a */
    public static void m15989a(Object obj, long j, int i) {
        f47428f.m15955a(obj, j, i);
    }

    /* renamed from: a */
    public static void m15988a(Object obj, long j, long j2) {
        f47428f.m15954a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m15987a(Object obj, long j, Object obj2) {
        f47428f.f47446a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m15986a(Object obj, long j, boolean z) {
        f47428f.mo15953a(obj, j, z);
    }

    /* renamed from: a */
    public static void m15984a(byte[] bArr, long j, byte b) {
        f47428f.mo15958a((Object) bArr, f47431i + j, b);
    }

    /* renamed from: a */
    public static boolean m15996a() {
        return f47430h;
    }

    /* renamed from: b */
    private static int m15982b(Class<?> cls) {
        if (f47430h) {
            return f47428f.f47446a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m15981b(Object obj, long j) {
        return f47428f.m15948f(obj, j);
    }

    /* renamed from: b */
    static /* synthetic */ void m15979b(Object obj, long j, boolean z) {
        m15975c(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m15983b() {
        return f47429g;
    }

    /* renamed from: c */
    private static int m15977c(Class<?> cls) {
        if (f47430h) {
            return f47428f.f47446a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Unsafe m15978c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new dqo());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m15975c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m15993a = m15993a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m15989a(obj, j2, ((255 & b) << i) | (m15993a & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    static /* synthetic */ void m15974c(Object obj, long j, boolean z) {
        m15970d(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m15976c(Object obj, long j) {
        return f47428f.mo15952b(obj, j);
    }

    /* renamed from: d */
    public static float m15971d(Object obj, long j) {
        return f47428f.mo15951c(obj, j);
    }

    /* renamed from: d */
    public static void m15970d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m15993a = m15993a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m15989a(obj, j2, ((255 & b) << i) | (m15993a & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    private static boolean m15973d() {
        Unsafe unsafe = f47424b;
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
            if (dlp.m16504a()) {
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
            Logger logger = Logger.getLogger(dqm.class.getName());
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
    private static boolean m15972d(Class<?> cls) {
        if (!dlp.m16504a()) {
            return false;
        }
        try {
            Class<?> cls2 = f47425c;
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
    public static double m15968e(Object obj, long j) {
        return f47428f.mo15950d(obj, j);
    }

    /* renamed from: e */
    private static boolean m15969e() {
        Unsafe unsafe = f47424b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m15967f() == null) {
                return false;
            }
            if (dlp.m16504a()) {
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
            Logger logger = Logger.getLogger(dqm.class.getName());
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
    public static Object m15966f(Object obj, long j) {
        return f47428f.f47446a.getObject(obj, j);
    }

    /* renamed from: f */
    private static Field m15967f() {
        Field m15994a;
        if (!dlp.m16504a() || (m15994a = m15994a(Buffer.class, "effectiveDirectAddress")) == null) {
            Field m15994a2 = m15994a(Buffer.class, "address");
            if (m15994a2 != null && m15994a2.getType() == Long.TYPE) {
                return m15994a2;
            }
            return null;
        }
        return m15994a;
    }

    /* renamed from: i */
    static /* synthetic */ boolean m15963i(Object obj, long j) {
        return m15961k(obj, j) != 0;
    }

    /* renamed from: j */
    static /* synthetic */ boolean m15962j(Object obj, long j) {
        return m15960l(obj, j) != 0;
    }

    /* renamed from: k */
    public static byte m15961k(Object obj, long j) {
        return (byte) (m15993a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: l */
    public static byte m15960l(Object obj, long j) {
        return (byte) (m15993a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }
}
