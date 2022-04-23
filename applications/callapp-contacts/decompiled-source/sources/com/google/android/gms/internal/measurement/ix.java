package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ix.class */
final class ix {

    /* renamed from: a  reason: collision with root package name */
    static final long f29143a;

    /* renamed from: b  reason: collision with root package name */
    static final boolean f29144b;

    /* renamed from: c  reason: collision with root package name */
    private static final Unsafe f29145c;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f29146d = Memory.class;
    private static final boolean e;
    private static final boolean f;
    private static final iw g;
    private static final boolean h;
    private static final boolean i;

    /* JADX WARN: Removed duplicated region for block: B:31:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0217  */
    static {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.ix.m5216clinit():void");
    }

    private ix() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Object obj, long j) {
        return g.d(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(Class<T> cls) {
        try {
            return (T) f29145c.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private static Field a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, double d2) {
        g.a(obj, j, d2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, float f2) {
        g.a(obj, j, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, int i2) {
        g.a(obj, j, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, long j2) {
        g.a(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, Object obj2) {
        g.f29142a.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, long j, boolean z) {
        g.a(obj, j, z);
    }

    private static /* synthetic */ void a(Throwable th) {
        Logger logger = Logger.getLogger(ix.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(byte[] bArr, long j, byte b2) {
        g.a((Object) bArr, f29143a + j, b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return i;
    }

    private static int b(Class<?> cls) {
        if (i) {
            return g.f29142a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(Object obj, long j) {
        return g.e(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return h;
    }

    private static int c(Class<?> cls) {
        if (i) {
            return g.f29142a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new it());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        iw iwVar = g;
        int d2 = iwVar.d(obj, j2);
        int i2 = ((((int) j) ^ (-1)) & 3) << 3;
        iwVar.a(obj, j2, ((255 & b2) << i2) | (d2 & ((255 << i2) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(Object obj, long j) {
        return g.a(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(Object obj, long j) {
        return g.b(obj, j);
    }

    private static Field d() {
        Field a2 = a(Buffer.class, "effectiveDirectAddress");
        Field field = a2;
        if (a2 == null) {
            Field a3 = a(Buffer.class, "address");
            if (a3 != null && a3.getType() == Long.TYPE) {
                return a3;
            }
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Object obj, long j, byte b2) {
        long j2 = (-4) & j;
        iw iwVar = g;
        int d2 = iwVar.d(obj, j2);
        int i2 = (((int) j) & 3) << 3;
        iwVar.a(obj, j2, ((255 & b2) << i2) | (d2 & ((255 << i2) ^ (-1))));
    }

    private static boolean d(Class<?> cls) {
        try {
            Class<?> cls2 = f29146d;
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
    public static double e(Object obj, long j) {
        return g.c(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object f(Object obj, long j) {
        return g.f29142a.getObject(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean g(Object obj, long j) {
        return ((byte) ((g.d(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean h(Object obj, long j) {
        return ((byte) ((g.d(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }
}
