package com.google.android.gms.internal.icing;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgs.class */
final class zzgs {

    /* renamed from: a */
    private static final Logger f8102a = Logger.getLogger(zzgs.class.getName());

    /* renamed from: b */
    private static final Unsafe f8103b = m13561s();

    /* renamed from: c */
    private static final Class<?> f8104c = zzcs.m13981b();

    /* renamed from: d */
    private static final boolean f8105d = m13593B(Long.TYPE);

    /* renamed from: e */
    private static final boolean f8106e = m13593B(Integer.TYPE);

    /* renamed from: f */
    private static final zzd f8107f;

    /* renamed from: g */
    private static final boolean f8108g;

    /* renamed from: h */
    private static final boolean f8109h;

    /* renamed from: i */
    private static final long f8110i;

    /* renamed from: j */
    static final boolean f8111j;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgs$zza.class */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: a */
        public final void mo13553a(Object obj, long j, double d) {
            m13550d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: b */
        public final void mo13552b(Object obj, long j, float f) {
            m13551c(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: e */
        public final void mo13549e(Object obj, long j, boolean z) {
            if (zzgs.f8111j) {
                zzgs.m13568l(obj, j, z);
            } else {
                zzgs.m13566n(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: f */
        public final void mo13548f(Object obj, long j, byte b) {
            if (zzgs.f8111j) {
                zzgs.m13578b(obj, j, b);
            } else {
                zzgs.m13569k(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: i */
        public final boolean mo13545i(Object obj, long j) {
            return zzgs.f8111j ? zzgs.m13585J(obj, j) : zzgs.m13584K(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: j */
        public final float mo13544j(Object obj, long j) {
            return Float.intBitsToFloat(m13547g(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: k */
        public final double mo13543k(Object obj, long j) {
            return Double.longBitsToDouble(m13546h(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: l */
        public final byte mo13542l(Object obj, long j) {
            return zzgs.f8111j ? zzgs.m13587H(obj, j) : zzgs.m13586I(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgs$zzb.class */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: a */
        public final void mo13553a(Object obj, long j, double d) {
            this.f8112a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: b */
        public final void mo13552b(Object obj, long j, float f) {
            this.f8112a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: e */
        public final void mo13549e(Object obj, long j, boolean z) {
            this.f8112a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: f */
        public final void mo13548f(Object obj, long j, byte b) {
            this.f8112a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: i */
        public final boolean mo13545i(Object obj, long j) {
            return this.f8112a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: j */
        public final float mo13544j(Object obj, long j) {
            return this.f8112a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: k */
        public final double mo13543k(Object obj, long j) {
            return this.f8112a.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: l */
        public final byte mo13542l(Object obj, long j) {
            return this.f8112a.getByte(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgs$zzc.class */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: a */
        public final void mo13553a(Object obj, long j, double d) {
            m13550d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: b */
        public final void mo13552b(Object obj, long j, float f) {
            m13551c(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: e */
        public final void mo13549e(Object obj, long j, boolean z) {
            if (zzgs.f8111j) {
                zzgs.m13568l(obj, j, z);
            } else {
                zzgs.m13566n(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: f */
        public final void mo13548f(Object obj, long j, byte b) {
            if (zzgs.f8111j) {
                zzgs.m13578b(obj, j, b);
            } else {
                zzgs.m13569k(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: i */
        public final boolean mo13545i(Object obj, long j) {
            return zzgs.f8111j ? zzgs.m13585J(obj, j) : zzgs.m13584K(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: j */
        public final float mo13544j(Object obj, long j) {
            return Float.intBitsToFloat(m13547g(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: k */
        public final double mo13543k(Object obj, long j) {
            return Double.longBitsToDouble(m13546h(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzgs.zzd
        /* renamed from: l */
        public final byte mo13542l(Object obj, long j) {
            return zzgs.f8111j ? zzgs.m13587H(obj, j) : zzgs.m13586I(obj, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgs$zzd.class */
    public static abstract class zzd {

        /* renamed from: a */
        Unsafe f8112a;

        zzd(Unsafe unsafe) {
            this.f8112a = unsafe;
        }

        /* renamed from: a */
        public abstract void mo13553a(Object obj, long j, double d);

        /* renamed from: b */
        public abstract void mo13552b(Object obj, long j, float f);

        /* renamed from: c */
        public final void m13551c(Object obj, long j, int i) {
            this.f8112a.putInt(obj, j, i);
        }

        /* renamed from: d */
        public final void m13550d(Object obj, long j, long j2) {
            this.f8112a.putLong(obj, j, j2);
        }

        /* renamed from: e */
        public abstract void mo13549e(Object obj, long j, boolean z);

        /* renamed from: f */
        public abstract void mo13548f(Object obj, long j, byte b);

        /* renamed from: g */
        public final int m13547g(Object obj, long j) {
            return this.f8112a.getInt(obj, j);
        }

        /* renamed from: h */
        public final long m13546h(Object obj, long j) {
            return this.f8112a.getLong(obj, j);
        }

        /* renamed from: i */
        public abstract boolean mo13545i(Object obj, long j);

        /* renamed from: j */
        public abstract float mo13544j(Object obj, long j);

        /* renamed from: k */
        public abstract double mo13543k(Object obj, long j);

        /* renamed from: l */
        public abstract byte mo13542l(Object obj, long j);
    }

    static {
        zzd zzdVar;
        zzd zzdVar2 = null;
        if (f8103b != null) {
            if (!zzcs.m13982a()) {
                zzdVar2 = new zzb(f8103b);
            } else if (f8105d) {
                zzdVar2 = new zzc(f8103b);
            } else if (f8106e) {
                zzdVar2 = new zza(f8103b);
            }
        }
        f8107f = zzdVar2;
        f8108g = m13559u();
        f8109h = m13560t();
        f8110i = m13555y(byte[].class);
        m13555y(boolean[].class);
        m13554z(boolean[].class);
        m13555y(int[].class);
        m13554z(int[].class);
        m13555y(long[].class);
        m13554z(long[].class);
        m13555y(float[].class);
        m13554z(float[].class);
        m13555y(double[].class);
        m13554z(double[].class);
        m13555y(Object[].class);
        m13554z(Object[].class);
        Field v = m13558v();
        if (!(v == null || (zzdVar = f8107f) == null)) {
            zzdVar.f8112a.objectFieldOffset(v);
        }
        f8111j = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzgs() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static int m13594A(Object obj, long j) {
        return f8107f.m13547g(obj, j);
    }

    /* renamed from: B */
    private static boolean m13593B(Class<?> cls) {
        if (!zzcs.m13982a()) {
            return false;
        }
        try {
            Class<?> cls2 = f8104c;
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
    public static long m13592C(Object obj, long j) {
        return f8107f.m13546h(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static boolean m13591D(Object obj, long j) {
        return f8107f.mo13545i(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public static float m13590E(Object obj, long j) {
        return f8107f.mo13544j(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static double m13589F(Object obj, long j) {
        return f8107f.mo13543k(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public static Object m13588G(Object obj, long j) {
        return f8107f.f8112a.getObject(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public static byte m13587H(Object obj, long j) {
        return (byte) (m13594A(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public static byte m13586I(Object obj, long j) {
        return (byte) (m13594A(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public static boolean m13585J(Object obj, long j) {
        return m13587H(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public static boolean m13584K(Object obj, long j) {
        return m13586I(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static byte m13579a(byte[] bArr, long j) {
        return f8107f.mo13542l(bArr, f8110i + j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m13578b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int A = m13594A(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m13575e(obj, j2, ((255 & b) << i) | (A & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m13577c(Object obj, long j, double d) {
        f8107f.mo13553a(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m13576d(Object obj, long j, float f) {
        f8107f.mo13552b(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static void m13575e(Object obj, long j, int i) {
        f8107f.m13551c(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m13574f(Object obj, long j, long j2) {
        f8107f.m13550d(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m13573g(Object obj, long j, Object obj2) {
        f8107f.f8112a.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m13572h(Object obj, long j, boolean z) {
        f8107f.mo13549e(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m13571i(byte[] bArr, long j, byte b) {
        f8107f.mo13548f(bArr, f8110i + j, b);
    }

    /* renamed from: j */
    private static Field m13570j(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static void m13569k(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int A = m13594A(obj, j2);
        int i = (((int) j) & 3) << 3;
        m13575e(obj, j2, ((255 & b) << i) | (A & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static void m13568l(Object obj, long j, boolean z) {
        m13578b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public static void m13566n(Object obj, long j, boolean z) {
        m13569k(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static boolean m13563q() {
        return f8109h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static boolean m13562r() {
        return f8108g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static Unsafe m13561s() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzgu());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: t */
    private static boolean m13560t() {
        Unsafe unsafe = f8103b;
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
            if (zzcs.m13982a()) {
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
            Logger logger = f8102a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: u */
    private static boolean m13559u() {
        Unsafe unsafe = f8103b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m13558v() == null) {
                return false;
            }
            if (zzcs.m13982a()) {
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
            Logger logger = f8102a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: v */
    private static Field m13558v() {
        Field j;
        if (zzcs.m13982a() && (j = m13570j(Buffer.class, "effectiveDirectAddress")) != null) {
            return j;
        }
        Field j2 = m13570j(Buffer.class, "address");
        if (j2 == null || j2.getType() != Long.TYPE) {
            return null;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static <T> T m13556x(Class<T> cls) {
        try {
            return (T) f8103b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: y */
    private static int m13555y(Class<?> cls) {
        if (f8109h) {
            return f8107f.f8112a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: z */
    private static int m13554z(Class<?> cls) {
        if (f8109h) {
            return f8107f.f8112a.arrayIndexScale(cls);
        }
        return -1;
    }
}
