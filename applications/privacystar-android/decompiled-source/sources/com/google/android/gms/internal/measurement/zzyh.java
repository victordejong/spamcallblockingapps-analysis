package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyh.class */
final class zzyh {
    private static final boolean zzbuv;
    private static final zzd zzccx;
    private static final boolean zzccy;
    private static final long zzccz;
    private static final long zzcda;
    private static final long zzcdb;
    private static final long zzcdc;
    private static final long zzcdd;
    private static final long zzcde;
    private static final long zzcdf;
    private static final long zzcdg;
    private static final long zzcdh;
    private static final long zzcdi;
    private static final long zzcdj;
    private static final long zzcdk;
    private static final long zzcdl;
    private static final long zzcdm;
    private static final boolean zzcdn;
    private static final Logger logger = Logger.getLogger(zzyh.class.getName());
    private static final Unsafe zzcay = zzyk();
    private static final Class<?> zzbtv = zzua.zztz();
    private static final boolean zzccv = zzm(Long.TYPE);
    private static final boolean zzccw = zzm(Integer.TYPE);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyh$zza.class */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzyh.zzcdn) {
                zzyh.zzb(obj, j, z);
            } else {
                zzyh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzyh.zzcdn) {
                zzyh.zza(obj, j, b);
            } else {
                zzyh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final boolean zzm(Object obj, long j) {
            return zzyh.zzcdn ? zzyh.zzs(obj, j) : zzyh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final byte zzy(Object obj, long j) {
            return zzyh.zzcdn ? zzyh.zzq(obj, j) : zzyh.zzr(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyh$zzb.class */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzyh.zzcdn) {
                zzyh.zzb(obj, j, z);
            } else {
                zzyh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzyh.zzcdn) {
                zzyh.zza(obj, j, b);
            } else {
                zzyh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final boolean zzm(Object obj, long j) {
            return zzyh.zzcdn ? zzyh.zzs(obj, j) : zzyh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final byte zzy(Object obj, long j) {
            return zzyh.zzcdn ? zzyh.zzq(obj, j) : zzyh.zzr(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyh$zzc.class */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(long j, byte b) {
            this.zzcdo.putByte(j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzcdo.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzcdo.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzcdo.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zza(byte[] bArr, long j, long j2, long j3) {
            this.zzcdo.copyMemory(bArr, zzyh.zzccz + j, (Object) null, j2, j3);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzcdo.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzcdo.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final float zzn(Object obj, long j) {
            return this.zzcdo.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final double zzo(Object obj, long j) {
            return this.zzcdo.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzyh.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzcdo.getByte(obj, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyh$zzd.class */
    public static abstract class zzd {
        Unsafe zzcdo;

        zzd(Unsafe unsafe) {
            this.zzcdo = unsafe;
        }

        public abstract void zza(long j, byte b);

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, long j2) {
            this.zzcdo.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zza(byte[] bArr, long j, long j2, long j3);

        public final void zzb(Object obj, long j, int i) {
            this.zzcdo.putInt(obj, j, i);
        }

        public abstract void zze(Object obj, long j, byte b);

        public final int zzk(Object obj, long j) {
            return this.zzcdo.getInt(obj, j);
        }

        public final long zzl(Object obj, long j) {
            return this.zzcdo.getLong(obj, j);
        }

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);
    }

    static {
        zzd zzdVar = null;
        if (zzcay != null) {
            if (!zzua.zzty()) {
                zzdVar = new zzc(zzcay);
            } else if (zzccv) {
                zzdVar = new zzb(zzcay);
            } else if (zzccw) {
                zzdVar = new zza(zzcay);
            }
        }
        zzccx = zzdVar;
        zzccy = zzym();
        zzbuv = zzyl();
        zzccz = zzk(byte[].class);
        zzcda = zzk(boolean[].class);
        zzcdb = zzl(boolean[].class);
        zzcdc = zzk(int[].class);
        zzcdd = zzl(int[].class);
        zzcde = zzk(long[].class);
        zzcdf = zzl(long[].class);
        zzcdg = zzk(float[].class);
        zzcdh = zzl(float[].class);
        zzcdi = zzk(double[].class);
        zzcdj = zzl(double[].class);
        zzcdk = zzk(Object[].class);
        zzcdl = zzl(Object[].class);
        Field zzyn = zzyn();
        zzcdm = (zzyn == null || zzccx == null) ? -1L : zzccx.zzcdo.objectFieldOffset(zzyn);
        zzcdn = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzyh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte zza(byte[] bArr, long j) {
        return zzccx.zzy(bArr, zzccz + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(long j, byte b) {
        zzccx.zza(j, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, double d) {
        zzccx.zza(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, float f) {
        zzccx.zza(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, long j2) {
        zzccx.zza(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, Object obj2) {
        zzccx.zzcdo.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, boolean z) {
        zzccx.zza(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(byte[] bArr, long j, byte b) {
        zzccx.zze(bArr, zzccz + j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(byte[] bArr, long j, long j2, long j3) {
        zzccx.zza(bArr, j, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzb(ByteBuffer byteBuffer) {
        return zzccx.zzl(byteBuffer, zzcdm);
    }

    private static Field zzb(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
            field.setAccessible(true);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(Object obj, long j, int i) {
        zzccx.zzb(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    private static int zzk(Class<?> cls) {
        if (zzbuv) {
            return zzccx.zzcdo.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(Object obj, long j) {
        return zzccx.zzk(obj, j);
    }

    private static int zzl(Class<?> cls) {
        if (zzbuv) {
            return zzccx.zzcdo.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzl(Object obj, long j) {
        return zzccx.zzl(obj, j);
    }

    private static boolean zzm(Class<?> cls) {
        if (!zzua.zzty()) {
            return false;
        }
        try {
            Class<?> cls2 = zzbtv;
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
    public static boolean zzm(Object obj, long j) {
        return zzccx.zzm(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzn(Object obj, long j) {
        return zzccx.zzn(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zzo(Object obj, long j) {
        return zzccx.zzo(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzp(Object obj, long j) {
        return zzccx.zzcdo.getObject(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzyi() {
        return zzbuv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzyj() {
        return zzccy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe zzyk() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzyi());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    private static boolean zzyl() {
        if (zzcay == null) {
            return false;
        }
        try {
            Class<?> cls = zzcay.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzua.zzty()) {
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

    private static boolean zzym() {
        if (zzcay == null) {
            return false;
        }
        try {
            Class<?> cls = zzcay.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzyn() == null) {
                return false;
            }
            if (zzua.zzty()) {
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

    private static Field zzyn() {
        Field zzb2;
        if (zzua.zzty() && (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return zzb2;
        }
        Field zzb3 = zzb(Buffer.class, "address");
        if (zzb3 == null || zzb3.getType() != Long.TYPE) {
            return null;
        }
        return zzb3;
    }
}
