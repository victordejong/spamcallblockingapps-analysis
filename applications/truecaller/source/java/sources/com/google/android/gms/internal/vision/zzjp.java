package com.google.android.gms.internal.vision;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjp.class */
public final class zzjp {
    private static final boolean zzaap;
    private static final boolean zzaaq;
    private static final zzd zzaar;
    private static final boolean zzaas;
    private static final long zzaat;
    private static final long zzaau;
    private static final long zzaav;
    private static final long zzaaw;
    private static final long zzaax;
    private static final long zzaay;
    private static final long zzaaz;
    private static final long zzaba;
    private static final long zzabb;
    private static final long zzabc;
    private static final long zzabd;
    private static final long zzabe;
    private static final long zzabf;
    private static final long zzabg;
    private static final int zzabh;
    public static final boolean zzabi;
    private static final boolean zzsr;
    private static final Unsafe zzyt;
    private static final Logger logger = Logger.getLogger(zzjp.class.getName());
    private static final Class<?> zzrm = zzfa.zzds();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjp$zzd.class */
    public static abstract class zzd {
        public Unsafe zzabl;

        public zzd(Unsafe unsafe) {
            this.zzabl = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, long j2) {
            this.zzabl.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public final void zzb(Object obj, long j, int i) {
            this.zzabl.putInt(obj, j, i);
        }

        public abstract void zze(Object obj, long j, byte b);

        public final int zzk(Object obj, long j) {
            return this.zzabl.getInt(obj, j);
        }

        public final long zzl(Object obj, long j) {
            return this.zzabl.getLong(obj, j);
        }

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);
    }

    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    static {
        Unsafe zzil = zzil();
        zzyt = zzil;
        boolean zzk = zzk(Long.TYPE);
        zzaap = zzk;
        boolean zzk2 = zzk(Integer.TYPE);
        zzaaq = zzk2;
        zzc zzcVar = null;
        if (zzil != null) {
            if (!zzfa.zzdr()) {
                zzcVar = new zzb(zzil);
            } else if (zzk) {
                zzcVar = new zzc(zzil);
            } else if (zzk2) {
                zzcVar = new zza(zzil);
            }
        }
        zzaar = zzcVar;
        zzaas = zzin();
        zzsr = zzim();
        long zzi = zzi(byte[].class);
        zzaat = zzi;
        zzaau = zzi(boolean[].class);
        zzaav = zzj(boolean[].class);
        zzaaw = zzi(int[].class);
        zzaax = zzj(int[].class);
        zzaay = zzi(long[].class);
        zzaaz = zzj(long[].class);
        zzaba = zzi(float[].class);
        zzabb = zzj(float[].class);
        zzabc = zzi(double[].class);
        zzabd = zzj(double[].class);
        zzabe = zzi(Object[].class);
        zzabf = zzj(Object[].class);
        Field zzio = zzio();
        zzabg = (zzio == null || zzcVar == null) ? (char) 65535 : zzcVar.zzabl.objectFieldOffset(zzio);
        zzabh = (int) (7 & zzi);
        zzabi = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzjp() {
    }

    public static byte zza(byte[] bArr, long j) {
        return zzaar.zzy(bArr, zzaat + j);
    }

    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    public static void zza(Object obj, long j, double d) {
        zzaar.zza(obj, j, d);
    }

    public static void zza(Object obj, long j, float f) {
        zzaar.zza(obj, j, f);
    }

    public static void zza(Object obj, long j, long j2) {
        zzaar.zza(obj, j, j2);
    }

    public static void zza(Object obj, long j, Object obj2) {
        zzaar.zzabl.putObject(obj, j, obj2);
    }

    public static void zza(Object obj, long j, boolean z) {
        zzaar.zza(obj, j, z);
    }

    public static void zza(byte[] bArr, long j, byte b) {
        zzaar.zze(bArr, zzaat + j, b);
    }

    private static Field zzb(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    public static void zzb(Object obj, long j, int i) {
        zzaar.zzb(obj, j, i);
    }

    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static <T> T zzh(Class<T> cls) {
        try {
            return (T) zzyt.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzi(Class<?> cls) {
        if (zzsr) {
            return zzaar.zzabl.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static boolean zzij() {
        return zzsr;
    }

    public static boolean zzik() {
        return zzaas;
    }

    public static Unsafe zzil() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzjr());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    private static boolean zzim() {
        Unsafe unsafe = zzyt;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (zzfa.zzdr()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", C22128a.m8674Q1(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    private static boolean zzin() {
        Unsafe unsafe = zzyt;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (zzio() == null) {
                return false;
            }
            if (zzfa.zzdr()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", C22128a.m8674Q1(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    private static Field zzio() {
        Field zzb;
        if (!zzfa.zzdr() || (zzb = zzb(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzb2 = zzb(Buffer.class, "address");
            if (zzb2 != null && zzb2.getType() == Long.TYPE) {
                return zzb2;
            }
            return null;
        }
        return zzb;
    }

    private static int zzj(Class<?> cls) {
        if (zzsr) {
            return zzaar.zzabl.arrayIndexScale(cls);
        }
        return -1;
    }

    public static int zzk(Object obj, long j) {
        return zzaar.zzk(obj, j);
    }

    private static boolean zzk(Class<?> cls) {
        if (!zzfa.zzdr()) {
            return false;
        }
        try {
            Class<?> cls2 = zzrm;
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

    public static long zzl(Object obj, long j) {
        return zzaar.zzl(obj, j);
    }

    public static boolean zzm(Object obj, long j) {
        return zzaar.zzm(obj, j);
    }

    public static float zzn(Object obj, long j) {
        return zzaar.zzn(obj, j);
    }

    public static double zzo(Object obj, long j) {
        return zzaar.zzo(obj, j);
    }

    public static Object zzp(Object obj, long j) {
        return zzaar.zzabl.getObject(obj, j);
    }

    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }
}
