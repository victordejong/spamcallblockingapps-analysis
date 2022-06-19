package com.google.android.gms.internal.firebase_remote_config;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkd.class */
public final class zzkd {
    private static final boolean zzpv;
    private static final zzd zzxo;
    private static final boolean zzxp;
    private static final long zzxq;
    private static final long zzxr;
    private static final long zzxs;
    private static final long zzxt;
    private static final long zzxu;
    private static final long zzxv;
    private static final long zzxw;
    private static final long zzxx;
    private static final long zzxy;
    private static final long zzxz;
    private static final long zzya;
    private static final long zzyb;
    private static final long zzyc;
    private static final long zzyd;
    private static final int zzye;
    static final boolean zzyf;
    private static final Logger logger = Logger.getLogger(zzkd.class.getName());
    private static final Unsafe zzvq = zzjf();
    private static final Class<?> zzon = zzfu.zzev();
    private static final boolean zzxm = zzp(Long.TYPE);
    private static final boolean zzxn = zzp(Integer.TYPE);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkd$zza.class */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzkd.zzyf) {
                zzkd.zzb(obj, j, z);
            } else {
                zzkd.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzkd.zzyf) {
                zzkd.zza(obj, j, b);
            } else {
                zzkd.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final boolean zzm(Object obj, long j) {
            return zzkd.zzyf ? zzkd.zzs(obj, j) : zzkd.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final byte zzy(Object obj, long j) {
            return zzkd.zzyf ? zzkd.zzq(obj, j) : zzkd.zzr(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkd$zzb.class */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzyi.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzyi.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzyi.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzyi.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzyi.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final float zzn(Object obj, long j) {
            return this.zzyi.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final double zzo(Object obj, long j) {
            return this.zzyi.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzyi.getByte(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkd$zzc.class */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzkd.zzyf) {
                zzkd.zzb(obj, j, z);
            } else {
                zzkd.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzkd.zzyf) {
                zzkd.zza(obj, j, b);
            } else {
                zzkd.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final boolean zzm(Object obj, long j) {
            return zzkd.zzyf ? zzkd.zzs(obj, j) : zzkd.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_remote_config.zzkd.zzd
        public final byte zzy(Object obj, long j) {
            return zzkd.zzyf ? zzkd.zzq(obj, j) : zzkd.zzr(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzkd$zzd.class */
    public static abstract class zzd {
        Unsafe zzyi;

        zzd(Unsafe unsafe) {
            this.zzyi = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, long j2) {
            this.zzyi.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public final void zzb(Object obj, long j, int i) {
            this.zzyi.putInt(obj, j, i);
        }

        public abstract void zze(Object obj, long j, byte b);

        public final int zzk(Object obj, long j) {
            return this.zzyi.getInt(obj, j);
        }

        public final long zzl(Object obj, long j) {
            return this.zzyi.getLong(obj, j);
        }

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);
    }

    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    static {
        zzd zzdVar;
        zzc zzcVar = null;
        zzc zzcVar2 = zzcVar;
        if (zzvq != null) {
            if (!zzfu.zzeu()) {
                zzcVar2 = new zzb(zzvq);
            } else if (zzxm) {
                zzcVar2 = new zzc(zzvq);
            } else {
                zzcVar2 = zzcVar;
                if (zzxn) {
                    zzcVar2 = new zza(zzvq);
                }
            }
        }
        zzxo = zzcVar2;
        zzxp = zzjh();
        zzpv = zzjg();
        zzxq = zzn(byte[].class);
        zzxr = zzn(boolean[].class);
        zzxs = zzo(boolean[].class);
        zzxt = zzn(int[].class);
        zzxu = zzo(int[].class);
        zzxv = zzn(long[].class);
        zzxw = zzo(long[].class);
        zzxx = zzn(float[].class);
        zzxy = zzo(float[].class);
        zzxz = zzn(double[].class);
        zzya = zzo(double[].class);
        zzyb = zzn(Object[].class);
        zzyc = zzo(Object[].class);
        Field zzji = zzji();
        zzyd = (zzji == null || (zzdVar = zzxo) == null) ? (char) 65535 : zzdVar.zzyi.objectFieldOffset(zzji);
        zzye = (int) (zzxq & 7);
        zzyf = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzkd() {
    }

    public static byte zza(byte[] bArr, long j) {
        return zzxo.zzy(bArr, zzxq + j);
    }

    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    public static void zza(Object obj, long j, double d) {
        zzxo.zza(obj, j, d);
    }

    public static void zza(Object obj, long j, float f) {
        zzxo.zza(obj, j, f);
    }

    public static void zza(Object obj, long j, long j2) {
        zzxo.zza(obj, j, j2);
    }

    public static void zza(Object obj, long j, Object obj2) {
        zzxo.zzyi.putObject(obj, j, obj2);
    }

    public static void zza(Object obj, long j, boolean z) {
        zzxo.zza(obj, j, z);
    }

    public static void zza(byte[] bArr, long j, byte b) {
        zzxo.zze(bArr, zzxq + j, b);
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
        zzxo.zzb(obj, j, i);
    }

    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static boolean zzjd() {
        return zzpv;
    }

    public static boolean zzje() {
        return zzxp;
    }

    public static Unsafe zzjf() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzkf());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    private static boolean zzjg() {
        Unsafe unsafe = zzvq;
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
            if (zzfu.zzeu()) {
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

    private static boolean zzjh() {
        Unsafe unsafe = zzvq;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzji() == null) {
                return false;
            }
            if (zzfu.zzeu()) {
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

    private static Field zzji() {
        Field zzb2;
        if (!zzfu.zzeu() || (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzb3 = zzb(Buffer.class, "address");
            if (zzb3 != null && zzb3.getType() == Long.TYPE) {
                return zzb3;
            }
            return null;
        }
        return zzb2;
    }

    public static int zzk(Object obj, long j) {
        return zzxo.zzk(obj, j);
    }

    public static long zzl(Object obj, long j) {
        return zzxo.zzl(obj, j);
    }

    public static <T> T zzm(Class<T> cls) {
        try {
            return (T) zzvq.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static boolean zzm(Object obj, long j) {
        return zzxo.zzm(obj, j);
    }

    public static float zzn(Object obj, long j) {
        return zzxo.zzn(obj, j);
    }

    private static int zzn(Class<?> cls) {
        if (zzpv) {
            return zzxo.zzyi.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static double zzo(Object obj, long j) {
        return zzxo.zzo(obj, j);
    }

    private static int zzo(Class<?> cls) {
        if (zzpv) {
            return zzxo.zzyi.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Object zzp(Object obj, long j) {
        return zzxo.zzyi.getObject(obj, j);
    }

    private static boolean zzp(Class<?> cls) {
        if (!zzfu.zzeu()) {
            return false;
        }
        try {
            Class<?> cls2 = zzon;
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
