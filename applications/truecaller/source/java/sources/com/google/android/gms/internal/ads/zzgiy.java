package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgiy.class */
public final class zzgiy {
    public static final long zza;
    public static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd = zzgei.zza();
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzgix zzg;
    private static final boolean zzh;
    private static final boolean zzi;
    private static final long zzj;

    /* JADX WARN: Removed duplicated region for block: B:31:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0246  */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    static {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgiy.m44837clinit():void");
    }

    private zzgiy() {
    }

    public static /* synthetic */ void zzB(Throwable th) {
        Logger.getLogger(zzgiy.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    private static int zzC(Class<?> cls) {
        if (zzi) {
            return zzg.zzk(cls);
        }
        return -1;
    }

    private static int zzD(Class<?> cls) {
        if (zzi) {
            return zzg.zzl(cls);
        }
        return -1;
    }

    private static Field zzE() {
        int i = zzgei.zza;
        Field zzF = zzF(Buffer.class, "effectiveDirectAddress");
        Field field = zzF;
        if (zzF == null) {
            Field zzF2 = zzF(Buffer.class, "address");
            if (zzF2 != null && zzF2.getType() == Long.TYPE) {
                return zzF2;
            }
            field = null;
        }
        return field;
    }

    private static Field zzF(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    public static void zzG(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzgix zzgixVar = zzg;
        int zzm = zzgixVar.zzm(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzgixVar.zzn(obj, j2, ((255 & b) << i) | (zzm & ((255 << i) ^ (-1))));
    }

    public static void zzH(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzgix zzgixVar = zzg;
        int zzm = zzgixVar.zzm(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzgixVar.zzn(obj, j2, ((255 & b) << i) | (zzm & ((255 << i) ^ (-1))));
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
        return zzg.zzm(obj, j);
    }

    public static void zze(Object obj, long j, int i) {
        zzg.zzn(obj, j, i);
    }

    public static long zzf(Object obj, long j) {
        return zzg.zzo(obj, j);
    }

    public static void zzg(Object obj, long j, long j2) {
        zzg.zzp(obj, j, j2);
    }

    public static boolean zzh(Object obj, long j) {
        return zzg.zzb(obj, j);
    }

    public static void zzi(Object obj, long j, boolean z) {
        zzg.zzc(obj, j, z);
    }

    public static float zzj(Object obj, long j) {
        return zzg.zzd(obj, j);
    }

    public static void zzk(Object obj, long j, float f) {
        zzg.zze(obj, j, f);
    }

    public static double zzl(Object obj, long j) {
        return zzg.zzf(obj, j);
    }

    public static void zzm(Object obj, long j, double d) {
        zzg.zzg(obj, j, d);
    }

    public static Object zzn(Object obj, long j) {
        return zzg.zzq(obj, j);
    }

    public static void zzo(Object obj, long j, Object obj2) {
        zzg.zzr(obj, j, obj2);
    }

    public static void zzp(byte[] bArr, long j, byte b) {
        zzg.zza(bArr, zza + j, b);
    }

    public static void zzq(long j, byte[] bArr, long j2, long j3) {
        zzg.zzi(j, bArr, j2, j3);
    }

    public static byte zzr(long j) {
        return zzg.zzh(j);
    }

    public static long zzs(ByteBuffer byteBuffer) {
        return zzg.zzo(byteBuffer, zzj);
    }

    public static Unsafe zzt() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzgiu());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static boolean zzu(Class<?> cls) {
        int i = zzgei.zza;
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

    public static /* synthetic */ boolean zzx(Object obj, long j) {
        return ((byte) ((zzg.zzm(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean zzy(Object obj, long j) {
        return ((byte) ((zzg.zzm(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }
}
