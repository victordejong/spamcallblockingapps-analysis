package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmr.class */
final class zzmr {
    public static final long zza;
    public static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd = zziq.zza();
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzmq zzg;
    private static final boolean zzh;
    private static final boolean zzi;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0230  */
    static {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmr.m10362clinit():void");
    }

    private zzmr() {
    }

    private static int zzA(Class<?> cls) {
        if (zzi) {
            return zzg.zzj(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i = zziq.zza;
        Field zzC = zzC(Buffer.class, "effectiveDirectAddress");
        Field field = zzC;
        if (zzC == null) {
            Field zzC2 = zzC(Buffer.class, "address");
            if (zzC2 != null && zzC2.getType() == Long.TYPE) {
                return zzC2;
            }
            field = null;
        }
        return field;
    }

    private static Field zzC(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    public static void zzD(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzmq zzmqVar = zzg;
        int zzk = zzmqVar.zzk(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzmqVar.zzl(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
    }

    public static void zzE(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzmq zzmqVar = zzg;
        int zzk = zzmqVar.zzk(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzmqVar.zzl(obj, j2, ((255 & b) << i) | (zzk & ((255 << i) ^ (-1))));
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
        return zzg.zzk(obj, j);
    }

    public static void zze(Object obj, long j, int i) {
        zzg.zzl(obj, j, i);
    }

    public static long zzf(Object obj, long j) {
        return zzg.zzm(obj, j);
    }

    public static void zzg(Object obj, long j, long j2) {
        zzg.zzn(obj, j, j2);
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
        return zzg.zzo(obj, j);
    }

    public static void zzo(Object obj, long j, Object obj2) {
        zzg.zzp(obj, j, obj2);
    }

    public static void zzp(byte[] bArr, long j, byte b) {
        zzg.zza(bArr, zza + j, b);
    }

    public static Unsafe zzq() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzmn());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static boolean zzr(Class<?> cls) {
        int i = zziq.zza;
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

    public static /* synthetic */ void zzs(Throwable th) {
        Logger logger = Logger.getLogger(zzmr.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", C0082b.m8754h(new StringBuilder(valueOf.length() + 71), "platform method missing - proto runtime falling back to safer methods: ", valueOf));
    }

    public static /* synthetic */ boolean zzv(Object obj, long j) {
        return ((byte) ((zzg.zzk(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean zzw(Object obj, long j) {
        return ((byte) ((zzg.zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    private static int zzz(Class<?> cls) {
        if (zzi) {
            return zzg.zzi(cls);
        }
        return -1;
    }
}
