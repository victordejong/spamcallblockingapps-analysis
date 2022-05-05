package com.google.android.gms.internal.icing;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd.class */
final class zzfd {
    private static final boolean zzeg;
    private static final zzd zzlv;
    private static final boolean zzlw;
    private static final long zzlx;
    private static final long zzly;
    private static final long zzlz;
    private static final long zzma;
    private static final long zzmb;
    private static final long zzmc;
    private static final long zzmd;
    private static final long zzme;
    private static final long zzmf;
    private static final long zzmg;
    private static final long zzmh;
    private static final long zzmi;
    private static final long zzmj;
    private static final long zzmk;
    private static final long zzml;
    private static final boolean zzmm;
    private static final Logger logger = Logger.getLogger(zzfd.class.getName());
    private static final Unsafe zzjx = zzcu();
    private static final Class<?> zzdm = zzbf.zzs();
    private static final boolean zzlt = zzi(Long.TYPE);
    private static final boolean zzlu = zzi(Integer.TYPE);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd$zza.class */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzfd.zzmm) {
                zzfd.zzb(obj, j, z);
            } else {
                zzfd.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzfd.zzmm) {
                zzfd.zza(obj, j, b);
            } else {
                zzfd.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final boolean zzl(Object obj, long j) {
            return zzfd.zzmm ? zzfd.zzr(obj, j) : zzfd.zzs(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final float zzm(Object obj, long j) {
            return Float.intBitsToFloat(zzj(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final double zzn(Object obj, long j) {
            return Double.longBitsToDouble(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final byte zzx(Object obj, long j) {
            return zzfd.zzmm ? zzfd.zzp(obj, j) : zzfd.zzq(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd$zzb.class */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzfd.zzmm) {
                zzfd.zzb(obj, j, z);
            } else {
                zzfd.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzfd.zzmm) {
                zzfd.zza(obj, j, b);
            } else {
                zzfd.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final boolean zzl(Object obj, long j) {
            return zzfd.zzmm ? zzfd.zzr(obj, j) : zzfd.zzs(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final float zzm(Object obj, long j) {
            return Float.intBitsToFloat(zzj(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final double zzn(Object obj, long j) {
            return Double.longBitsToDouble(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final byte zzx(Object obj, long j) {
            return zzfd.zzmm ? zzfd.zzp(obj, j) : zzfd.zzq(obj, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd$zzc.class */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzmn.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzmn.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzmn.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzmn.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final boolean zzl(Object obj, long j) {
            return this.zzmn.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final float zzm(Object obj, long j) {
            return this.zzmn.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final double zzn(Object obj, long j) {
            return this.zzmn.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.icing.zzfd.zzd
        public final byte zzx(Object obj, long j) {
            return this.zzmn.getByte(obj, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfd$zzd.class */
    public static abstract class zzd {
        Unsafe zzmn;

        zzd(Unsafe unsafe) {
            this.zzmn = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public final void zza(Object obj, long j, int i) {
            this.zzmn.putInt(obj, j, i);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzmn.putLong(obj, j, j2);
        }

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zze(Object obj, long j, byte b);

        public final int zzj(Object obj, long j) {
            return this.zzmn.getInt(obj, j);
        }

        public final long zzk(Object obj, long j) {
            return this.zzmn.getLong(obj, j);
        }

        public abstract boolean zzl(Object obj, long j);

        public abstract float zzm(Object obj, long j);

        public abstract double zzn(Object obj, long j);

        public abstract byte zzx(Object obj, long j);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x012a  */
    static {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfd.m1253clinit():void");
    }

    private zzfd() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte zza(byte[] bArr, long j) {
        return zzlv.zzx(bArr, zzlx + j);
    }

    private static long zza(Field field) {
        if (field == null || zzlv == null) {
            return -1L;
        }
        return zzlv.zzmn.objectFieldOffset(field);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzj = zzj(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, double d) {
        zzlv.zza(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, float f) {
        zzlv.zza(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, int i) {
        zzlv.zza(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, long j2) {
        zzlv.zza(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, Object obj2) {
        zzlv.zzmn.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, boolean z) {
        zzlv.zza(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(byte[] bArr, long j, byte b) {
        zzlv.zze(bArr, zzlx + j, b);
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzj = zzj(obj, j2);
        int i = (((int) j) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzcs() {
        return zzeg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzct() {
        return zzlw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe zzcu() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzfe());
        } catch (Throwable th) {
            return null;
        }
    }

    private static boolean zzcv() {
        if (zzjx == null) {
            return false;
        }
        try {
            Class<?> cls = zzjx.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (zzbf.zzr()) {
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

    private static boolean zzcw() {
        if (zzjx == null) {
            return false;
        }
        try {
            Class<?> cls = zzjx.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (zzcx() == null) {
                return false;
            }
            if (zzbf.zzr()) {
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

    private static Field zzcx() {
        Field zzb2;
        if (zzbf.zzr() && (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) != null) {
            return zzb2;
        }
        Field zzb3 = zzb(Buffer.class, "address");
        if (zzb3 == null || zzb3.getType() != Long.TYPE) {
            return null;
        }
        return zzb3;
    }

    private static int zzg(Class<?> cls) {
        if (zzeg) {
            return zzlv.zzmn.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzh(Class<?> cls) {
        if (zzeg) {
            return zzlv.zzmn.arrayIndexScale(cls);
        }
        return -1;
    }

    private static boolean zzi(Class<?> cls) {
        if (!zzbf.zzr()) {
            return false;
        }
        try {
            Class<?> cls2 = zzdm;
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
    public static int zzj(Object obj, long j) {
        return zzlv.zzj(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzk(Object obj, long j) {
        return zzlv.zzk(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzl(Object obj, long j) {
        return zzlv.zzl(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzm(Object obj, long j) {
        return zzlv.zzm(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zzn(Object obj, long j) {
        return zzlv.zzn(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzo(Object obj, long j) {
        return zzlv.zzmn.getObject(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzp(Object obj, long j) {
        return (byte) (zzj(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzj(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzr(Object obj, long j) {
        return zzp(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }
}
