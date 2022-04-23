package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm.class */
final class dqm {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f27111a;

    /* renamed from: b  reason: collision with root package name */
    private static final Unsafe f27112b;

    /* renamed from: c  reason: collision with root package name */
    private static final Class<?> f27113c = dlp.b();

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f27114d;
    private static final boolean e;
    private static final d f;
    private static final boolean g;
    private static final boolean h;
    private static final long i;
    private static final long j;
    private static final long k;
    private static final long l;
    private static final long m;
    private static final long n;
    private static final long o;
    private static final long p;
    private static final long q;
    private static final long r;
    private static final long s;
    private static final long t;
    private static final long u;
    private static final long v;
    private static final int w;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$a.class */
    static final class a extends d {
        a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final byte a(Object obj, long j) {
            return dqm.f27111a ? dqm.k(obj, j) : dqm.l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, byte b2) {
            if (dqm.f27111a) {
                dqm.c(obj, j, b2);
            } else {
                dqm.d(obj, j, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, double d2) {
            a(obj, j, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, boolean z) {
            if (dqm.f27111a) {
                dqm.b(obj, j, z);
            } else {
                dqm.c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final boolean b(Object obj, long j) {
            return dqm.f27111a ? dqm.i(obj, j) : dqm.j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final float c(Object obj, long j) {
            return Float.intBitsToFloat(e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final double d(Object obj, long j) {
            return Double.longBitsToDouble(f(obj, j));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$b.class */
    static final class b extends d {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final byte a(Object obj, long j) {
            return this.f27115a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, byte b2) {
            this.f27115a.putByte(obj, j, b2);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, double d2) {
            this.f27115a.putDouble(obj, j, d2);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, float f) {
            this.f27115a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, boolean z) {
            this.f27115a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final boolean b(Object obj, long j) {
            return this.f27115a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final float c(Object obj, long j) {
            return this.f27115a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final double d(Object obj, long j) {
            return this.f27115a.getDouble(obj, j);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$c.class */
    static final class c extends d {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final byte a(Object obj, long j) {
            return dqm.f27111a ? dqm.k(obj, j) : dqm.l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, byte b2) {
            if (dqm.f27111a) {
                dqm.c(obj, j, b2);
            } else {
                dqm.d(obj, j, b2);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, double d2) {
            a(obj, j, Double.doubleToLongBits(d2));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, float f) {
            a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final void a(Object obj, long j, boolean z) {
            if (dqm.f27111a) {
                dqm.b(obj, j, z);
            } else {
                dqm.c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final boolean b(Object obj, long j) {
            return dqm.f27111a ? dqm.i(obj, j) : dqm.j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final float c(Object obj, long j) {
            return Float.intBitsToFloat(e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.dqm.d
        public final double d(Object obj, long j) {
            return Double.longBitsToDouble(f(obj, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqm$d.class */
    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f27115a;

        d(Unsafe unsafe) {
            this.f27115a = unsafe;
        }

        public abstract byte a(Object obj, long j);

        public abstract void a(Object obj, long j, byte b2);

        public abstract void a(Object obj, long j, double d2);

        public abstract void a(Object obj, long j, float f);

        public final void a(Object obj, long j, int i) {
            this.f27115a.putInt(obj, j, i);
        }

        public final void a(Object obj, long j, long j2) {
            this.f27115a.putLong(obj, j, j2);
        }

        public abstract void a(Object obj, long j, boolean z);

        public abstract boolean b(Object obj, long j);

        public abstract float c(Object obj, long j);

        public abstract double d(Object obj, long j);

        public final int e(Object obj, long j) {
            return this.f27115a.getInt(obj, j);
        }

        public final long f(Object obj, long j) {
            return this.f27115a.getLong(obj, j);
        }
    }

    static {
        Unsafe c2 = c();
        f27112b = c2;
        boolean d2 = d(Long.TYPE);
        f27114d = d2;
        boolean d3 = d(Integer.TYPE);
        e = d3;
        d dVar = null;
        if (c2 != null) {
            if (!dlp.a()) {
                dVar = new b(c2);
            } else if (d2) {
                dVar = new c(c2);
            } else if (d3) {
                dVar = new a(c2);
            }
        }
        f = dVar;
        g = e();
        h = d();
        long b2 = b(byte[].class);
        i = b2;
        j = b(boolean[].class);
        k = c(boolean[].class);
        l = b(int[].class);
        m = c(int[].class);
        n = b(long[].class);
        o = c(long[].class);
        p = b(float[].class);
        q = c(float[].class);
        r = b(double[].class);
        s = c(double[].class);
        t = b(Object[].class);
        u = c(Object[].class);
        Field f2 = f();
        v = (f2 == null || dVar == null) ? -1L : dVar.f27115a.objectFieldOffset(f2);
        w = (int) (7 & b2);
        f27111a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private dqm() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte a(byte[] bArr, long j2) {
        return f.a(bArr, i + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj, long j2) {
        return f.e(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(Class<T> cls) {
        try {
            return (T) f27112b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static Field a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, double d2) {
        f.a(obj, j2, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, float f2) {
        f.a(obj, j2, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, int i2) {
        f.a(obj, j2, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, long j3) {
        f.a(obj, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, Object obj2) {
        f.f27115a.putObject(obj, j2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j2, boolean z) {
        f.a(obj, j2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j2, byte b2) {
        f.a((Object) bArr, i + j2, b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return h;
    }

    private static int b(Class<?> cls) {
        if (h) {
            return f.f27115a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(Object obj, long j2) {
        return f.f(obj, j2);
    }

    static /* synthetic */ void b(Object obj, long j2, boolean z) {
        c(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return g;
    }

    private static int c(Class<?> cls) {
        if (h) {
            return f.f27115a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new dqo());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int a2 = a(obj, j3);
        int i2 = ((((int) j2) ^ (-1)) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a2 & ((255 << i2) ^ (-1))));
    }

    static /* synthetic */ void c(Object obj, long j2, boolean z) {
        d(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Object obj, long j2) {
        return f.b(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(Object obj, long j2) {
        return f.c(obj, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int a2 = a(obj, j3);
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a2 & ((255 << i2) ^ (-1))));
    }

    private static boolean d() {
        Unsafe unsafe = f27112b;
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
            if (dlp.a()) {
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

    private static boolean d(Class<?> cls) {
        if (!dlp.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f27113c;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double e(Object obj, long j2) {
        return f.d(obj, j2);
    }

    private static boolean e() {
        Unsafe unsafe = f27112b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (f() == null) {
                return false;
            }
            if (dlp.a()) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, long j2) {
        return f.f27115a.getObject(obj, j2);
    }

    private static Field f() {
        Field a2;
        if (dlp.a() && (a2 = a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a2;
        }
        Field a3 = a(Buffer.class, "address");
        if (a3 == null || a3.getType() != Long.TYPE) {
            return null;
        }
        return a3;
    }

    static /* synthetic */ boolean i(Object obj, long j2) {
        return k(obj, j2) != 0;
    }

    static /* synthetic */ boolean j(Object obj, long j2) {
        return l(obj, j2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte k(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) (((j2 ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte l(Object obj, long j2) {
        return (byte) (a(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)));
    }
}
