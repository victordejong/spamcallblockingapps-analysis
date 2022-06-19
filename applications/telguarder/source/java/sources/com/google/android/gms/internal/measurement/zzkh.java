package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkh.class */
public final class zzkh {
    static final long zza;
    static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd = zzgd.zzb();
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzkg zzg;
    private static final boolean zzh;
    private static final boolean zzi;

    static {
        Unsafe zzr = zzr();
        zzc = zzr;
        boolean zzE = zzE(Long.TYPE);
        zze = zzE;
        boolean zzE2 = zzE(Integer.TYPE);
        zzf = zzE2;
        zzke zzkeVar = null;
        if (zzr != null) {
            if (!zzgd.zza()) {
                zzkeVar = new zzkf(zzr);
            } else if (zzE) {
                zzkeVar = new zzke(zzr);
            } else if (zzE2) {
                zzkeVar = new zzkd(zzr);
            }
        }
        zzg = zzkeVar;
        zzh = zzkeVar == null ? false : zzkeVar.zzj();
        zzi = zzkeVar == null ? false : zzkeVar.zzi();
        zza = zzC(byte[].class);
        zzC(boolean[].class);
        zzD(boolean[].class);
        zzC(int[].class);
        zzD(int[].class);
        zzC(long[].class);
        zzD(long[].class);
        zzC(float[].class);
        zzD(float[].class);
        zzC(double[].class);
        zzD(double[].class);
        zzC(Object[].class);
        zzD(Object[].class);
        Field zzF = zzF();
        if (zzF != null && zzkeVar != null) {
            zzkeVar.zzk(zzF);
        }
        boolean z = false;
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z = true;
        }
        zzb = z;
    }

    private zzkh() {
    }

    private static int zzC(Class<?> cls) {
        if (zzi) {
            return zzg.zzl(cls);
        }
        return -1;
    }

    private static int zzD(Class<?> cls) {
        if (zzi) {
            return zzg.zzm(cls);
        }
        return -1;
    }

    private static boolean zzE(Class<?> cls) {
        if (!zzgd.zza()) {
            return false;
        }
        try {
            Class<?> cls2 = zzd;
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

    public static Field zzF() {
        Field zzG;
        if (!zzgd.zza() || (zzG = zzG(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzG2 = zzG(Buffer.class, "address");
            if (zzG2 != null && zzG2.getType() == Long.TYPE) {
                return zzG2;
            }
            return null;
        }
        return zzG;
    }

    private static Field zzG(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    public static byte zzH(Object obj, long j) {
        return (byte) ((zzg.zzn(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    public static byte zzI(Object obj, long j) {
        return (byte) ((zzg.zzn(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    public static void zzJ(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzkg zzkgVar = zzg;
        int zzn = zzkgVar.zzn(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzkgVar.zzo(obj, j2, ((255 & b) << i) | (zzn & ((255 << i) ^ (-1))));
    }

    public static void zzK(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzkg zzkgVar = zzg;
        int zzn = zzkgVar.zzn(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzkgVar.zzo(obj, j2, ((255 & b) << i) | (zzn & ((255 << i) ^ (-1))));
    }

    public static boolean zza() {
        return zzi;
    }

    public static boolean zzb() {
        return zzh;
    }

    public static <T> T zzc(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static int zzd(Object obj, long j) {
        return zzg.zzn(obj, j);
    }

    public static void zze(Object obj, long j, int i) {
        zzg.zzo(obj, j, i);
    }

    public static long zzf(Object obj, long j) {
        return zzg.zzp(obj, j);
    }

    public static void zzg(Object obj, long j, long j2) {
        zzg.zzq(obj, j, j2);
    }

    public static boolean zzh(Object obj, long j) {
        return zzg.zzc(obj, j);
    }

    public static void zzi(Object obj, long j, boolean z) {
        zzg.zzd(obj, j, z);
    }

    public static float zzj(Object obj, long j) {
        return zzg.zze(obj, j);
    }

    public static void zzk(Object obj, long j, float f) {
        zzg.zzf(obj, j, f);
    }

    public static double zzl(Object obj, long j) {
        return zzg.zzg(obj, j);
    }

    public static void zzm(Object obj, long j, double d) {
        zzg.zzh(obj, j, d);
    }

    public static Object zzn(Object obj, long j) {
        return zzg.zzr(obj, j);
    }

    public static void zzo(Object obj, long j, Object obj2) {
        zzg.zzs(obj, j, obj2);
    }

    public static byte zzp(byte[] bArr, long j) {
        return zzg.zza(bArr, zza + j);
    }

    public static void zzq(byte[] bArr, long j, byte b) {
        zzg.zzb(bArr, zza + j, b);
    }

    public static Unsafe zzr() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzkc());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static /* synthetic */ void zzs(Throwable th) {
        Logger logger = Logger.getLogger(zzkh.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    public static /* synthetic */ boolean zzy(Object obj, long j) {
        return zzH(obj, j) != 0;
    }

    public static /* synthetic */ boolean zzz(Object obj, long j) {
        return zzI(obj, j) != 0;
    }
}
