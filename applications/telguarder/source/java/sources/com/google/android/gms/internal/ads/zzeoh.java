package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh.class */
public final class zzeoh {
    private static final Unsafe zzhzj;
    private static final boolean zzinc;
    private static final boolean zzivf;
    private static final boolean zzivg;
    private static final zzd zzivh;
    private static final boolean zzivi;
    private static final long zzivj;
    private static final long zzivk;
    private static final long zzivl;
    private static final long zzivm;
    private static final long zzivn;
    private static final long zzivo;
    private static final long zzivp;
    private static final long zzivq;
    private static final long zzivr;
    private static final long zzivs;
    private static final long zzivt;
    private static final long zzivu;
    private static final long zzivv;
    private static final long zzivw;
    private static final int zzivx;
    static final boolean zzivy;
    private static final Logger logger = Logger.getLogger(zzeoh.class.getName());
    private static final Class<?> zzilq = zzejk.zzbgd();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh$zza.class */
    private static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzeoh.zzivy) {
                zzeoh.zzb(obj, j, z);
            } else {
                zzeoh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzeoh.zzivy) {
                zzeoh.zza(obj, j, b);
            } else {
                zzeoh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            return zzeoh.zzivy ? zzeoh.zzs(obj, j) : zzeoh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            return zzeoh.zzivy ? zzeoh.zzq(obj, j) : zzeoh.zzr(obj, j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh$zzb.class */
    private static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            this.zziwb.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            this.zziwb.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zziwb.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zziwb.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zziwb.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return this.zziwb.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return this.zziwb.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            return this.zziwb.getByte(obj, j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh$zzc.class */
    private static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, float f) {
            zzb(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzeoh.zzivy) {
                zzeoh.zzb(obj, j, z);
            } else {
                zzeoh.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzeoh.zzivy) {
                zzeoh.zza(obj, j, b);
            } else {
                zzeoh.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final boolean zzm(Object obj, long j) {
            return zzeoh.zzivy ? zzeoh.zzs(obj, j) : zzeoh.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.zzeoh.zzd
        public final byte zzy(Object obj, long j) {
            return zzeoh.zzivy ? zzeoh.zzq(obj, j) : zzeoh.zzr(obj, j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoh$zzd.class */
    public static abstract class zzd {
        Unsafe zziwb;

        zzd(Unsafe unsafe) {
            this.zziwb = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, long j2) {
            this.zziwb.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public final void zzb(Object obj, long j, int i) {
            this.zziwb.putInt(obj, j, i);
        }

        public abstract void zze(Object obj, long j, byte b);

        public final int zzk(Object obj, long j) {
            return this.zziwb.getInt(obj, j);
        }

        public final long zzl(Object obj, long j) {
            return this.zziwb.getLong(obj, j);
        }

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);
    }

    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    static {
        Unsafe zzble = zzble();
        zzhzj = zzble;
        boolean zzm = zzm(Long.TYPE);
        zzivf = zzm;
        boolean zzm2 = zzm(Integer.TYPE);
        zzivg = zzm2;
        zzc zzcVar = null;
        zzc zzcVar2 = zzcVar;
        if (zzble != null) {
            if (!zzejk.zzbgc()) {
                zzcVar2 = new zzb(zzble);
            } else if (zzm) {
                zzcVar2 = new zzc(zzble);
            } else {
                zzcVar2 = zzcVar;
                if (zzm2) {
                    zzcVar2 = new zza(zzble);
                }
            }
        }
        zzivh = zzcVar2;
        zzivi = zzblg();
        zzinc = zzblf();
        long zzk = zzk(byte[].class);
        zzivj = zzk;
        zzivk = zzk(boolean[].class);
        zzivl = zzl(boolean[].class);
        zzivm = zzk(int[].class);
        zzivn = zzl(int[].class);
        zzivo = zzk(long[].class);
        zzivp = zzl(long[].class);
        zzivq = zzk(float[].class);
        zzivr = zzl(float[].class);
        zzivs = zzk(double[].class);
        zzivt = zzl(double[].class);
        zzivu = zzk(Object[].class);
        zzivv = zzl(Object[].class);
        Field zzblh = zzblh();
        zzivw = (zzblh == null || zzcVar2 == null) ? (char) 65535 : zzcVar2.zziwb.objectFieldOffset(zzblh);
        zzivx = (int) (7 & zzk);
        zzivy = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private zzeoh() {
    }

    public static byte zza(byte[] bArr, long j) {
        return zzivh.zzy(bArr, zzivj + j);
    }

    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzb(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    public static void zza(Object obj, long j, double d) {
        zzivh.zza(obj, j, d);
    }

    public static void zza(Object obj, long j, float f) {
        zzivh.zza(obj, j, f);
    }

    public static void zza(Object obj, long j, long j2) {
        zzivh.zza(obj, j, j2);
    }

    public static void zza(Object obj, long j, Object obj2) {
        zzivh.zziwb.putObject(obj, j, obj2);
    }

    public static void zza(Object obj, long j, boolean z) {
        zzivh.zza(obj, j, z);
    }

    public static void zza(byte[] bArr, long j, byte b) {
        zzivh.zze(bArr, zzivj + j, b);
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
        zzivh.zzb(obj, j, i);
    }

    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static boolean zzblc() {
        return zzinc;
    }

    public static boolean zzbld() {
        return zzivi;
    }

    public static Unsafe zzble() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzeoj());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    private static boolean zzblf() {
        Unsafe unsafe = zzhzj;
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
            if (zzejk.zzbgc()) {
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

    private static boolean zzblg() {
        Unsafe unsafe = zzhzj;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzblh() == null) {
                return false;
            }
            if (zzejk.zzbgc()) {
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

    private static Field zzblh() {
        Field zzb2;
        if (!zzejk.zzbgc() || (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzb3 = zzb(Buffer.class, "address");
            if (zzb3 != null && zzb3.getType() == Long.TYPE) {
                return zzb3;
            }
            return null;
        }
        return zzb2;
    }

    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    public static <T> T zzj(Class<T> cls) {
        try {
            return (T) zzhzj.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzk(Class<?> cls) {
        if (zzinc) {
            return zzivh.zziwb.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int zzk(Object obj, long j) {
        return zzivh.zzk(obj, j);
    }

    private static int zzl(Class<?> cls) {
        if (zzinc) {
            return zzivh.zziwb.arrayIndexScale(cls);
        }
        return -1;
    }

    public static long zzl(Object obj, long j) {
        return zzivh.zzl(obj, j);
    }

    private static boolean zzm(Class<?> cls) {
        if (!zzejk.zzbgc()) {
            return false;
        }
        try {
            Class<?> cls2 = zzilq;
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

    public static boolean zzm(Object obj, long j) {
        return zzivh.zzm(obj, j);
    }

    public static float zzn(Object obj, long j) {
        return zzivh.zzn(obj, j);
    }

    public static double zzo(Object obj, long j) {
        return zzivh.zzo(obj, j);
    }

    public static Object zzp(Object obj, long j) {
        return zzivh.zziwb.getObject(obj, j);
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
