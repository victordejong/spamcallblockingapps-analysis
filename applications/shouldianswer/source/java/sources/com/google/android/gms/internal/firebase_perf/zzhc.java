package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzhc;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhc.class */
public final class zzhc {
    private static final boolean zzmv;
    private static final zzhc.zzd zzul;
    private static final boolean zzum;
    private static final long zzun;
    private static final long zzuo;
    private static final long zzup;
    private static final long zzuq;
    private static final long zzur;
    private static final long zzus;
    private static final long zzut;
    private static final long zzuu;
    private static final long zzuv;
    private static final long zzuw;
    private static final long zzux;
    private static final long zzuy;
    private static final long zzuz;
    private static final long zzva;
    private static final int zzvb;
    static final boolean zzvc;
    private static final Logger logger = Logger.getLogger(com.google.android.gms.internal.firebase-perf.zzhc.class.getName());
    private static final Unsafe zzsr = zzil();
    private static final Class<?> zzmf = zzdb.zzfi();
    private static final boolean zzuj = zzj(Long.TYPE);
    private static final boolean zzuk = zzj(Integer.TYPE);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhc$zza.class */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzhc.zzvc) {
                zzhc.zzb(obj, j, z);
            } else {
                zzhc.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzhc.zzvc) {
                zzhc.zza(obj, j, b);
            } else {
                zzhc.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final boolean zzl(Object obj, long j) {
            return zzhc.zzvc ? zzhc.zzr(obj, j) : zzhc.zzs(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final float zzm(Object obj, long j) {
            return Float.intBitsToFloat(zzj(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final double zzn(Object obj, long j) {
            return Double.longBitsToDouble(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final byte zzx(Object obj, long j) {
            return zzhc.zzvc ? zzhc.zzp(obj, j) : zzhc.zzq(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhc$zzb.class */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzvf.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzvf.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzvf.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzvf.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final boolean zzl(Object obj, long j) {
            return this.zzvf.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final float zzm(Object obj, long j) {
            return this.zzvf.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final double zzn(Object obj, long j) {
            return this.zzvf.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final byte zzx(Object obj, long j) {
            return this.zzvf.getByte(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhc$zzc.class */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzhc.zzvc) {
                zzhc.zzb(obj, j, z);
            } else {
                zzhc.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzhc.zzvc) {
                zzhc.zza(obj, j, b);
            } else {
                zzhc.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final boolean zzl(Object obj, long j) {
            return zzhc.zzvc ? zzhc.zzr(obj, j) : zzhc.zzs(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final float zzm(Object obj, long j) {
            return Float.intBitsToFloat(zzj(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final double zzn(Object obj, long j) {
            return Double.longBitsToDouble(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_perf.zzhc.zzd
        public final byte zzx(Object obj, long j) {
            return zzhc.zzvc ? zzhc.zzp(obj, j) : zzhc.zzq(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhc$zzd.class */
    public static abstract class zzd {
        Unsafe zzvf;

        zzd(Unsafe unsafe) {
            this.zzvf = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, int i) {
            this.zzvf.putInt(obj, j, i);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzvf.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zze(Object obj, long j, byte b);

        public final int zzj(Object obj, long j) {
            return this.zzvf.getInt(obj, j);
        }

        public final long zzk(Object obj, long j) {
            return this.zzvf.getLong(obj, j);
        }

        public abstract boolean zzl(Object obj, long j);

        public abstract float zzm(Object obj, long j);

        public abstract double zzn(Object obj, long j);

        public abstract byte zzx(Object obj, long j);
    }

    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    static {
        zzhc.zzd zzdVar;
        zzhc.zzd zzdVar2 = null;
        if (zzsr != null) {
            if (!zzdb.zzfh()) {
                zzdVar2 = new zzb(zzsr);
            } else if (zzuj) {
                zzdVar2 = new zzc(zzsr);
            } else if (zzuk) {
                zzdVar2 = new zza(zzsr);
            }
        }
        zzul = zzdVar2;
        zzum = zzin();
        zzmv = zzim();
        zzun = zzh(byte[].class);
        zzuo = zzh(boolean[].class);
        zzup = zzi(boolean[].class);
        zzuq = zzh(int[].class);
        zzur = zzi(int[].class);
        zzus = zzh(long[].class);
        zzut = zzi(long[].class);
        zzuu = zzh(float[].class);
        zzuv = zzi(float[].class);
        zzuw = zzh(double[].class);
        zzux = zzi(double[].class);
        zzuy = zzh(Object[].class);
        zzuz = zzi(Object[].class);
        Field zzio = zzio();
        zzva = (zzio == null || (zzdVar = zzul) == null) ? (char) 65535 : zzdVar.zzvf.objectFieldOffset(zzio);
        zzvb = (int) (zzun & 7);
        zzvc = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzhc() {
    }

    public static byte zza(byte[] bArr, long j) {
        return zzul.zzx(bArr, zzun + j);
    }

    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzj = zzj(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    public static void zza(Object obj, long j, double d) {
        zzul.zza(obj, j, d);
    }

    public static void zza(Object obj, long j, float f) {
        zzul.zza(obj, j, f);
    }

    public static void zza(Object obj, long j, int i) {
        zzul.zza(obj, j, i);
    }

    public static void zza(Object obj, long j, long j2) {
        zzul.zza(obj, j, j2);
    }

    public static void zza(Object obj, long j, Object obj2) {
        zzul.zzvf.putObject(obj, j, obj2);
    }

    public static void zza(Object obj, long j, boolean z) {
        zzul.zza(obj, j, z);
    }

    public static void zza(byte[] bArr, long j, byte b) {
        zzul.zze(bArr, zzun + j, b);
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
        int zzj = zzj(obj, j2);
        int i = (((int) j) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static <T> T zzg(Class<T> cls) {
        try {
            return (T) zzsr.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzh(Class<?> cls) {
        if (zzmv) {
            return zzul.zzvf.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzi(Class<?> cls) {
        if (zzmv) {
            return zzul.zzvf.arrayIndexScale(cls);
        }
        return -1;
    }

    public static boolean zzij() {
        return zzmv;
    }

    public static boolean zzik() {
        return zzum;
    }

    public static Unsafe zzil() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzhe());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    private static boolean zzim() {
        Unsafe unsafe = zzsr;
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
            if (zzdb.zzfh()) {
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
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzin() {
        Unsafe unsafe = zzsr;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzio() == null) {
                return false;
            }
            if (zzdb.zzfh()) {
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
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static Field zzio() {
        Field zzb2;
        if (!zzdb.zzfh() || (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzb3 = zzb(Buffer.class, "address");
            if (zzb3 != null && zzb3.getType() == Long.TYPE) {
                return zzb3;
            }
            return null;
        }
        return zzb2;
    }

    public static int zzj(Object obj, long j) {
        return zzul.zzj(obj, j);
    }

    private static boolean zzj(Class<?> cls) {
        if (!zzdb.zzfh()) {
            return false;
        }
        try {
            Class<?> cls2 = zzmf;
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

    public static long zzk(Object obj, long j) {
        return zzul.zzk(obj, j);
    }

    public static boolean zzl(Object obj, long j) {
        return zzul.zzl(obj, j);
    }

    public static float zzm(Object obj, long j) {
        return zzul.zzm(obj, j);
    }

    public static double zzn(Object obj, long j) {
        return zzul.zzn(obj, j);
    }

    public static Object zzo(Object obj, long j) {
        return zzul.zzvf.getObject(obj, j);
    }

    public static byte zzp(Object obj, long j) {
        return (byte) (zzj(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    public static byte zzq(Object obj, long j) {
        return (byte) (zzj(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    public static boolean zzr(Object obj, long j) {
        return zzp(obj, j) != 0;
    }

    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }
}
