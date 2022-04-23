package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ff2.class */
final class ff2 {

    /* renamed from: a */
    private static final Unsafe f6490a;

    /* renamed from: b */
    private static final Class<?> f6491b = fb2.m7556a();

    /* renamed from: c */
    private static final boolean f6492c;

    /* renamed from: d */
    private static final boolean f6493d;

    /* renamed from: e */
    private static final ef2 f6494e;

    /* renamed from: f */
    private static final boolean f6495f;

    /* renamed from: g */
    private static final boolean f6496g;

    /* renamed from: h */
    static final long f6497h;

    /* renamed from: i */
    static final boolean f6498i;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0230  */
    static {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ff2.m15629clinit():void");
    }

    private ff2() {
    }

    /* renamed from: A */
    static /* synthetic */ boolean m7544A(Object obj, long j) {
        return ((byte) ((f6494e.m7640k(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: B */
    static /* synthetic */ boolean m7543B(Object obj, long j) {
        return ((byte) ((f6494e.m7640k(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: E */
    private static int m7540E(Class<?> cls) {
        if (f6496g) {
            return f6494e.m7642i(cls);
        }
        return -1;
    }

    /* renamed from: a */
    private static int m7539a(Class<?> cls) {
        if (f6496g) {
            return f6494e.m7641j(cls);
        }
        return -1;
    }

    /* renamed from: b */
    private static Field m7538b() {
        int i = fb2.f6484a;
        Field c = m7537c(Buffer.class, "effectiveDirectAddress");
        Field field = c;
        if (c == null) {
            Field c2 = m7537c(Buffer.class, "address");
            if (c2 != null && c2.getType() == Long.TYPE) {
                return c2;
            }
            field = null;
        }
        return field;
    }

    /* renamed from: c */
    private static Field m7537c(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m7536d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        ef2 ef2Var = f6494e;
        int k = ef2Var.m7640k(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        ef2Var.m7639l(obj, j2, ((255 & b) << i) | (k & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m7535e(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        ef2 ef2Var = f6494e;
        int k = ef2Var.m7640k(obj, j2);
        int i = (((int) j) & 3) << 3;
        ef2Var.m7639l(obj, j2, ((255 & b) << i) | (k & ((255 << i) ^ (-1))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static boolean m7534f() {
        return f6496g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static boolean m7533g() {
        return f6495f;
    }

    /* renamed from: h */
    static <T> T m7532h(Class<T> cls) {
        try {
            return (T) f6490a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: i */
    static int m7531i(Object obj, long j) {
        return f6494e.m7640k(obj, j);
    }

    /* renamed from: j */
    static void m7530j(Object obj, long j, int i) {
        f6494e.m7639l(obj, j, i);
    }

    /* renamed from: k */
    static long m7529k(Object obj, long j) {
        return f6494e.m7638m(obj, j);
    }

    /* renamed from: l */
    static void m7528l(Object obj, long j, long j2) {
        f6494e.m7637n(obj, j, j2);
    }

    /* renamed from: m */
    static boolean m7527m(Object obj, long j) {
        return f6494e.m7649b(obj, j);
    }

    /* renamed from: n */
    static void m7526n(Object obj, long j, boolean z) {
        f6494e.m7648c(obj, j, z);
    }

    /* renamed from: o */
    static float m7525o(Object obj, long j) {
        return f6494e.m7647d(obj, j);
    }

    /* renamed from: p */
    static void m7524p(Object obj, long j, float f) {
        f6494e.m7646e(obj, j, f);
    }

    /* renamed from: q */
    static double m7523q(Object obj, long j) {
        return f6494e.m7645f(obj, j);
    }

    /* renamed from: r */
    static void m7522r(Object obj, long j, double d) {
        f6494e.m7644g(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static Object m7521s(Object obj, long j) {
        return f6494e.m7636o(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static void m7520t(Object obj, long j, Object obj2) {
        f6494e.m7635p(obj, j, obj2);
    }

    /* renamed from: u */
    static void m7519u(byte[] bArr, long j, byte b) {
        f6494e.m7650a(bArr, f6497h + j, b);
    }

    /* renamed from: v */
    static Unsafe m7518v() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new af2());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: w */
    static boolean m7517w(Class<?> cls) {
        int i = fb2.f6484a;
        try {
            Class<?> cls2 = f6491b;
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

    /* renamed from: x */
    static /* synthetic */ void m7516x(Throwable th) {
        Logger logger = Logger.getLogger(ff2.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }
}
