package com.google.android.libraries.places.internal;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvc.class */
public final class zzvc {
    public static final boolean zza;
    private static final Unsafe zzc;
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzd zzg;
    private static final boolean zzh;
    private static final boolean zzi;
    private static final long zzj;
    private static final long zzk;
    private static final long zzl;
    private static final long zzm;
    private static final long zzn;
    private static final long zzo;
    private static final long zzp;
    private static final long zzq;
    private static final long zzr;
    private static final long zzs;
    private static final long zzt;
    private static final long zzu;
    private static final long zzv;
    private static final long zzw;
    private static final int zzx;
    private static final Logger zzb = Logger.getLogger(zzvc.class.getName());
    private static final Class<?> zzd = zzqz.zzb();

    /* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzvc$zzd.class */
    public static abstract class zzd {
        public Unsafe zza;

        public zzd(Unsafe unsafe) {
            this.zza = unsafe;
        }

        public abstract byte zza(Object obj, long j);

        public abstract void zza(Object obj, long j, byte b);

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, int i) {
            this.zza.putInt(obj, j, i);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zza.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public abstract boolean zzb(Object obj, long j);

        public abstract float zzc(Object obj, long j);

        public abstract double zzd(Object obj, long j);

        public final int zze(Object obj, long j) {
            return this.zza.getInt(obj, j);
        }

        public final long zzf(Object obj, long j) {
            return this.zza.getLong(obj, j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    static {
        Unsafe zzc2 = zzc();
        zzc = zzc2;
        boolean zzd2 = zzd(Long.TYPE);
        zze = zzd2;
        boolean zzd3 = zzd(Integer.TYPE);
        zzf = zzd3;
        zzc zzcVar = null;
        if (zzc2 != null) {
            if (!zzqz.zza()) {
                zzcVar = new zzb(zzc2);
            } else if (zzd2) {
                zzcVar = new zzc(zzc2);
            } else if (zzd3) {
                zzcVar = new zza(zzc2);
            }
        }
        zzg = zzcVar;
        zzh = zze();
        zzi = zzd();
        long zzb2 = zzb(byte[].class);
        zzj = zzb2;
        zzk = zzb(boolean[].class);
        zzl = zzc(boolean[].class);
        zzm = zzb(int[].class);
        zzn = zzc(int[].class);
        zzo = zzb(long[].class);
        zzp = zzc(long[].class);
        zzq = zzb(float[].class);
        zzr = zzc(float[].class);
        zzs = zzb(double[].class);
        zzt = zzc(double[].class);
        zzu = zzb(Object[].class);
        zzv = zzc(Object[].class);
        Field zzf2 = zzf();
        zzw = (zzf2 == null || zzcVar == null) ? (char) 65535 : zzcVar.zza.objectFieldOffset(zzf2);
        zzx = (int) (7 & zzb2);
        zza = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzvc() {
    }

    public static byte zza(byte[] bArr, long j) {
        return zzg.zza(bArr, zzj + j);
    }

    public static int zza(Object obj, long j) {
        return zzg.zze(obj, j);
    }

    public static <T> T zza(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static Field zza(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    public static void zza(Object obj, long j, double d) {
        zzg.zza(obj, j, d);
    }

    public static void zza(Object obj, long j, float f) {
        zzg.zza(obj, j, f);
    }

    public static void zza(Object obj, long j, int i) {
        zzg.zza(obj, j, i);
    }

    public static void zza(Object obj, long j, long j2) {
        zzg.zza(obj, j, j2);
    }

    public static void zza(Object obj, long j, Object obj2) {
        zzg.zza.putObject(obj, j, obj2);
    }

    public static void zza(Object obj, long j, boolean z) {
        zzg.zza(obj, j, z);
    }

    public static void zza(byte[] bArr, long j, byte b) {
        zzg.zza((Object) bArr, zzj + j, b);
    }

    public static boolean zza() {
        return zzi;
    }

    private static int zzb(Class<?> cls) {
        if (zzi) {
            return zzg.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static long zzb(Object obj, long j) {
        return zzg.zzf(obj, j);
    }

    public static boolean zzb() {
        return zzh;
    }

    private static int zzc(Class<?> cls) {
        if (zzi) {
            return zzg.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Unsafe zzc() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzve());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static void zzc(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zza2 = zza(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zza2 & ((255 << i) ^ (-1))));
    }

    public static boolean zzc(Object obj, long j) {
        return zzg.zzb(obj, j);
    }

    public static float zzd(Object obj, long j) {
        return zzg.zzc(obj, j);
    }

    public static void zzd(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zza2 = zza(obj, j2);
        int i = (((int) j) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zza2 & ((255 << i) ^ (-1))));
    }

    public static void zzd(Object obj, long j, boolean z) {
        zzc(obj, j, z ? (byte) 1 : (byte) 0);
    }

    private static boolean zzd() {
        Unsafe unsafe = zzc;
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
            if (zzqz.zza()) {
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
            Logger logger = zzb;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", C22128a.m8674Q1(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    private static boolean zzd(Class<?> cls) {
        if (!zzqz.zza()) {
            return false;
        }
        try {
            Class<?> cls2 = zzd;
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

    public static double zze(Object obj, long j) {
        return zzg.zzd(obj, j);
    }

    public static void zze(Object obj, long j, boolean z) {
        zzd(obj, j, z ? (byte) 1 : (byte) 0);
    }

    private static boolean zze() {
        Unsafe unsafe = zzc;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (zzf() == null) {
                return false;
            }
            if (zzqz.zza()) {
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
            Logger logger = zzb;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", C22128a.m8674Q1(valueOf.length() + 71, "platform method missing - proto runtime falling back to safer methods: ", valueOf));
            return false;
        }
    }

    public static Object zzf(Object obj, long j) {
        return zzg.zza.getObject(obj, j);
    }

    private static Field zzf() {
        Field zza2;
        if (!zzqz.zza() || (zza2 = zza(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zza3 = zza(Buffer.class, "address");
            if (zza3 != null && zza3.getType() == Long.TYPE) {
                return zza3;
            }
            return null;
        }
        return zza2;
    }

    public static byte zzk(Object obj, long j) {
        return (byte) (zza(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    public static byte zzl(Object obj, long j) {
        return (byte) (zza(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    public static boolean zzm(Object obj, long j) {
        return zzk(obj, j) != 0;
    }

    public static boolean zzn(Object obj, long j) {
        return zzl(obj, j) != 0;
    }
}
