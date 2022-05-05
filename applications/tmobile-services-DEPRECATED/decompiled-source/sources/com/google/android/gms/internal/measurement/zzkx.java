package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx.class */
final class zzkx {

    /* renamed from: a */
    private static final Logger f8631a = Logger.getLogger(zzkx.class.getName());

    /* renamed from: b */
    private static final Unsafe f8632b = m12065t();

    /* renamed from: c */
    private static final Class<?> f8633c = zzgk.m12657c();

    /* renamed from: d */
    private static final boolean f8634d = m12098B(Long.TYPE);

    /* renamed from: e */
    private static final boolean f8635e = m12098B(Integer.TYPE);

    /* renamed from: f */
    private static final zzd f8636f;

    /* renamed from: g */
    private static final boolean f8637g;

    /* renamed from: h */
    private static final boolean f8638h;

    /* renamed from: i */
    private static final long f8639i;

    /* renamed from: j */
    static final boolean f8640j;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx$zza.class */
    private static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: a */
        public final byte mo12058a(Object obj, long j) {
            return zzkx.f8640j ? zzkx.m12088L(obj, j) : zzkx.m12087M(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: b */
        public final void mo12057b(Object obj, long j, byte b) {
            if (zzkx.f8640j) {
                zzkx.m12064u(obj, j, b);
            } else {
                zzkx.m12060y(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: c */
        public final void mo12056c(Object obj, long j, double d) {
            m12053f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: d */
        public final void mo12055d(Object obj, long j, float f) {
            m12054e(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: g */
        public final void mo12052g(Object obj, long j, boolean z) {
            if (zzkx.f8640j) {
                zzkx.m12059z(obj, j, z);
            } else {
                zzkx.m12096D(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: h */
        public final boolean mo12051h(Object obj, long j) {
            return zzkx.f8640j ? zzkx.m12086N(obj, j) : zzkx.m12085O(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: i */
        public final float mo12050i(Object obj, long j) {
            return Float.intBitsToFloat(m12048k(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: j */
        public final double mo12049j(Object obj, long j) {
            return Double.longBitsToDouble(m12047l(obj, j));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx$zzb.class */
    private static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: a */
        public final byte mo12058a(Object obj, long j) {
            return this.f8641a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: b */
        public final void mo12057b(Object obj, long j, byte b) {
            this.f8641a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: c */
        public final void mo12056c(Object obj, long j, double d) {
            this.f8641a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: d */
        public final void mo12055d(Object obj, long j, float f) {
            this.f8641a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: g */
        public final void mo12052g(Object obj, long j, boolean z) {
            this.f8641a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: h */
        public final boolean mo12051h(Object obj, long j) {
            return this.f8641a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: i */
        public final float mo12050i(Object obj, long j) {
            return this.f8641a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: j */
        public final double mo12049j(Object obj, long j) {
            return this.f8641a.getDouble(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx$zzc.class */
    private static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: a */
        public final byte mo12058a(Object obj, long j) {
            return zzkx.f8640j ? zzkx.m12088L(obj, j) : zzkx.m12087M(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: b */
        public final void mo12057b(Object obj, long j, byte b) {
            if (zzkx.f8640j) {
                zzkx.m12064u(obj, j, b);
            } else {
                zzkx.m12060y(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: c */
        public final void mo12056c(Object obj, long j, double d) {
            m12053f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: d */
        public final void mo12055d(Object obj, long j, float f) {
            m12054e(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: g */
        public final void mo12052g(Object obj, long j, boolean z) {
            if (zzkx.f8640j) {
                zzkx.m12059z(obj, j, z);
            } else {
                zzkx.m12096D(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: h */
        public final boolean mo12051h(Object obj, long j) {
            return zzkx.f8640j ? zzkx.m12086N(obj, j) : zzkx.m12085O(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: i */
        public final float mo12050i(Object obj, long j) {
            return Float.intBitsToFloat(m12048k(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzkx.zzd
        /* renamed from: j */
        public final double mo12049j(Object obj, long j) {
            return Double.longBitsToDouble(m12047l(obj, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkx$zzd.class */
    public static abstract class zzd {

        /* renamed from: a */
        Unsafe f8641a;

        zzd(Unsafe unsafe) {
            this.f8641a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo12058a(Object obj, long j);

        /* renamed from: b */
        public abstract void mo12057b(Object obj, long j, byte b);

        /* renamed from: c */
        public abstract void mo12056c(Object obj, long j, double d);

        /* renamed from: d */
        public abstract void mo12055d(Object obj, long j, float f);

        /* renamed from: e */
        public final void m12054e(Object obj, long j, int i) {
            this.f8641a.putInt(obj, j, i);
        }

        /* renamed from: f */
        public final void m12053f(Object obj, long j, long j2) {
            this.f8641a.putLong(obj, j, j2);
        }

        /* renamed from: g */
        public abstract void mo12052g(Object obj, long j, boolean z);

        /* renamed from: h */
        public abstract boolean mo12051h(Object obj, long j);

        /* renamed from: i */
        public abstract float mo12050i(Object obj, long j);

        /* renamed from: j */
        public abstract double mo12049j(Object obj, long j);

        /* renamed from: k */
        public final int m12048k(Object obj, long j) {
            return this.f8641a.getInt(obj, j);
        }

        /* renamed from: l */
        public final long m12047l(Object obj, long j) {
            return this.f8641a.getLong(obj, j);
        }
    }

    static {
        zzd zzdVar;
        zzd zzdVar2 = null;
        if (f8632b != null) {
            if (!zzgk.m12658b()) {
                zzdVar2 = new zzb(f8632b);
            } else if (f8634d) {
                zzdVar2 = new zzc(f8632b);
            } else if (f8635e) {
                zzdVar2 = new zza(f8632b);
            }
        }
        f8636f = zzdVar2;
        f8637g = m12095E();
        f8638h = m12099A();
        f8639i = m12071n(byte[].class);
        m12071n(boolean[].class);
        m12066s(boolean[].class);
        m12071n(int[].class);
        m12066s(int[].class);
        m12071n(long[].class);
        m12066s(long[].class);
        m12071n(float[].class);
        m12066s(float[].class);
        m12071n(double[].class);
        m12066s(double[].class);
        m12071n(Object[].class);
        m12066s(Object[].class);
        Field G = m12093G();
        if (!(G == null || (zzdVar = f8636f) == null)) {
            zzdVar.f8641a.objectFieldOffset(G);
        }
        f8640j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzkx() {
    }

    /* renamed from: A */
    private static boolean m12099A() {
        Unsafe unsafe = f8632b;
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
            if (zzgk.m12658b()) {
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
            Logger logger = f8631a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: B */
    private static boolean m12098B(Class<?> cls) {
        if (!zzgk.m12658b()) {
            return false;
        }
        try {
            Class<?> cls2 = f8633c;
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
    /* renamed from: C */
    public static double m12097C(Object obj, long j) {
        return f8636f.mo12049j(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public static void m12096D(Object obj, long j, boolean z) {
        m12060y(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: E */
    private static boolean m12095E() {
        Unsafe unsafe = f8632b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m12093G() == null) {
                return false;
            }
            if (zzgk.m12658b()) {
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
            Logger logger = f8631a;
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
    /* renamed from: F */
    public static Object m12094F(Object obj, long j) {
        return f8636f.f8641a.getObject(obj, j);
    }

    /* renamed from: G */
    private static Field m12093G() {
        Field d;
        if (zzgk.m12658b() && (d = m12081d(Buffer.class, "effectiveDirectAddress")) != null) {
            return d;
        }
        Field d2 = m12081d(Buffer.class, "address");
        if (d2 == null || d2.getType() != Long.TYPE) {
            return null;
        }
        return d2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public static byte m12088L(Object obj, long j) {
        return (byte) (m12083b(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public static byte m12087M(Object obj, long j) {
        return (byte) (m12083b(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public static boolean m12086N(Object obj, long j) {
        return m12088L(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public static boolean m12085O(Object obj, long j) {
        return m12087M(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static byte m12084a(byte[] bArr, long j) {
        return f8636f.mo12058a(bArr, f8639i + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m12083b(Object obj, long j) {
        return f8636f.m12048k(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static <T> T m12082c(Class<T> cls) {
        try {
            return (T) f8632b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: d */
    private static Field m12081d(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m12079f(Object obj, long j, double d) {
        f8636f.mo12056c(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m12078g(Object obj, long j, float f) {
        f8636f.mo12055d(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m12077h(Object obj, long j, int i) {
        f8636f.m12054e(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m12076i(Object obj, long j, long j2) {
        f8636f.m12053f(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m12075j(Object obj, long j, Object obj2) {
        f8636f.f8641a.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static void m12074k(Object obj, long j, boolean z) {
        f8636f.mo12052g(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static void m12073l(byte[] bArr, long j, byte b) {
        f8636f.mo12057b(bArr, f8639i + j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static boolean m12072m() {
        return f8638h;
    }

    /* renamed from: n */
    private static int m12071n(Class<?> cls) {
        if (f8638h) {
            return f8636f.f8641a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static long m12070o(Object obj, long j) {
        return f8636f.m12047l(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static boolean m12067r() {
        return f8637g;
    }

    /* renamed from: s */
    private static int m12066s(Class<?> cls) {
        if (f8638h) {
            return f8636f.f8641a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static Unsafe m12065t() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzkz());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public static void m12064u(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int b2 = m12083b(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m12077h(obj, j2, ((255 & b) << i) | (b2 & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static boolean m12062w(Object obj, long j) {
        return f8636f.mo12051h(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static float m12061x(Object obj, long j) {
        return f8636f.mo12050i(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public static void m12060y(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int b2 = m12083b(obj, j2);
        int i = (((int) j) & 3) << 3;
        m12077h(obj, j2, ((255 & b) << i) | (b2 & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public static void m12059z(Object obj, long j, boolean z) {
        m12064u(obj, j, z ? (byte) 1 : (byte) 0);
    }
}
