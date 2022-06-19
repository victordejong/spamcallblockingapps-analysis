package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzml.class */
public final class zzml {
    public static final long zza;
    public static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class zzd = zzij.zza();
    private static final boolean zze;
    private static final zzmk zzf;
    private static final boolean zzg;
    private static final boolean zzh;

    /* JADX WARN: Removed duplicated region for block: B:22:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x021c  */
    static {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzml.m45257clinit():void");
    }

    private zzml() {
    }

    private static int zzA(Class cls) {
        if (zzh) {
            return zzf.zzi(cls);
        }
        return -1;
    }

    private static Field zzB() {
        int i = zzij.zza;
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

    private static Field zzC(Class cls, String str) {
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
        zzmk zzmkVar = zzf;
        int zzj = zzmkVar.zzj(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzmkVar.zzn(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    public static void zzE(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzmk zzmkVar = zzf;
        int zzj = zzmkVar.zzj(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzmkVar.zzn(obj, j2, ((255 & b) << i) | (zzj & ((255 << i) ^ (-1))));
    }

    public static double zza(Object obj, long j) {
        return zzf.zza(obj, j);
    }

    public static float zzb(Object obj, long j) {
        return zzf.zzb(obj, j);
    }

    public static int zzc(Object obj, long j) {
        return zzf.zzj(obj, j);
    }

    public static long zzd(Object obj, long j) {
        return zzf.zzk(obj, j);
    }

    public static Object zze(Class cls) {
        try {
            return zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object zzf(Object obj, long j) {
        return zzf.zzm(obj, j);
    }

    public static Unsafe zzg() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzmh());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static /* synthetic */ void zzh(Throwable th) {
        Logger.getLogger(zzml.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void zzm(Object obj, long j, boolean z) {
        zzf.zzc(obj, j, z);
    }

    public static void zzn(byte[] bArr, long j, byte b) {
        zzf.zzd(bArr, zza + j, b);
    }

    public static void zzo(Object obj, long j, double d) {
        zzf.zze(obj, j, d);
    }

    public static void zzp(Object obj, long j, float f) {
        zzf.zzf(obj, j, f);
    }

    public static void zzq(Object obj, long j, int i) {
        zzf.zzn(obj, j, i);
    }

    public static void zzr(Object obj, long j, long j2) {
        zzf.zzo(obj, j, j2);
    }

    public static void zzs(Object obj, long j, Object obj2) {
        zzf.zzp(obj, j, obj2);
    }

    public static /* synthetic */ boolean zzt(Object obj, long j) {
        return ((byte) ((zzf.zzj(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    public static /* synthetic */ boolean zzu(Object obj, long j) {
        return ((byte) ((zzf.zzj(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean zzv(Class cls) {
        int i = zzij.zza;
        try {
            Class cls2 = zzd;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
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

    public static boolean zzw(Object obj, long j) {
        return zzf.zzg(obj, j);
    }

    public static boolean zzx() {
        return zzh;
    }

    public static boolean zzy() {
        return zzg;
    }

    private static int zzz(Class cls) {
        if (zzh) {
            return zzf.zzh(cls);
        }
        return -1;
    }
}
