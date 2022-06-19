package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnp.class */
public final class zzgnp {
    public static final long zza;
    public static final boolean zzb;
    private static final Unsafe zzc;
    private static final Class<?> zzd = zzgip.zza();
    private static final boolean zze;
    private static final boolean zzf;
    private static final zzgno zzg;
    private static final boolean zzh;
    private static final boolean zzi;
    private static final long zzj;

    /* JADX WARN: Removed duplicated region for block: B:31:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0244  */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    static {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgnp.m10134clinit():void");
    }

    private zzgnp() {
    }

    public static boolean zzA() {
        return zzi;
    }

    public static boolean zzB() {
        return zzh;
    }

    private static int zzC(Class<?> cls) {
        if (zzi) {
            return zzg.zzj(cls);
        }
        return -1;
    }

    private static int zzD(Class<?> cls) {
        if (zzi) {
            return zzg.zzk(cls);
        }
        return -1;
    }

    private static Field zzE() {
        int i = zzgip.zza;
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
        zzgno zzgnoVar = zzg;
        int zzl = zzgnoVar.zzl(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        zzgnoVar.zzp(obj, j2, ((255 & b) << i) | (zzl & ((255 << i) ^ (-1))));
    }

    public static void zzH(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        zzgno zzgnoVar = zzg;
        int zzl = zzgnoVar.zzl(obj, j2);
        int i = (((int) j) & 3) << 3;
        zzgnoVar.zzp(obj, j2, ((255 & b) << i) | (zzl & ((255 << i) ^ (-1))));
    }

    public static byte zza(long j) {
        return zzg.zza(j);
    }

    public static double zzb(Object obj, long j) {
        return zzg.zzb(obj, j);
    }

    public static float zzc(Object obj, long j) {
        return zzg.zzc(obj, j);
    }

    public static int zzd(Object obj, long j) {
        return zzg.zzl(obj, j);
    }

    public static long zze(ByteBuffer byteBuffer) {
        return zzg.zzm(byteBuffer, zzj);
    }

    public static long zzf(Object obj, long j) {
        return zzg.zzm(obj, j);
    }

    public static <T> T zzg(Class<T> cls) {
        try {
            return (T) zzc.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Object zzh(Object obj, long j) {
        return zzg.zzo(obj, j);
    }

    public static Unsafe zzi() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new zzgnl());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    public static /* bridge */ /* synthetic */ void zzj(Throwable th) {
        Logger.getLogger(zzgnp.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    public static void zzo(long j, byte[] bArr, long j2, long j3) {
        zzg.zzd(j, bArr, j2, j3);
    }

    public static void zzp(Object obj, long j, boolean z) {
        zzg.zze(obj, j, z);
    }

    public static void zzq(byte[] bArr, long j, byte b) {
        zzg.zzf(bArr, zza + j, b);
    }

    public static void zzr(Object obj, long j, double d) {
        zzg.zzg(obj, j, d);
    }

    public static void zzs(Object obj, long j, float f) {
        zzg.zzh(obj, j, f);
    }

    public static void zzt(Object obj, long j, int i) {
        zzg.zzp(obj, j, i);
    }

    public static void zzu(Object obj, long j, long j2) {
        zzg.zzq(obj, j, j2);
    }

    public static void zzv(Object obj, long j, Object obj2) {
        zzg.zzr(obj, j, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean zzw(Object obj, long j) {
        return ((byte) ((zzg.zzl(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean zzx(Object obj, long j) {
        return ((byte) ((zzg.zzl(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    public static boolean zzy(Class<?> cls) {
        int i = zzgip.zza;
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

    public static boolean zzz(Object obj, long j) {
        return zzg.zzi(obj, j);
    }
}
