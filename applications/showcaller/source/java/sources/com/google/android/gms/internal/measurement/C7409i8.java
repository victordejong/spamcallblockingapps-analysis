package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.i8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i8.class */
final class C7409i8 {

    /* renamed from: a */
    private static final Unsafe f34529a;

    /* renamed from: b */
    private static final Class<?> f34530b = C7517q4.m7001a();

    /* renamed from: c */
    private static final boolean f34531c;

    /* renamed from: d */
    private static final boolean f34532d;

    /* renamed from: e */
    private static final AbstractC7395h8 f34533e;

    /* renamed from: f */
    private static final boolean f34534f;

    /* renamed from: g */
    private static final boolean f34535g;

    /* renamed from: h */
    static final long f34536h;

    /* renamed from: i */
    static final boolean f34537i;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0230  */
    static {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C7409i8.m37813clinit():void");
    }

    private C7409i8() {
    }

    /* renamed from: A */
    public static /* synthetic */ boolean m7328A(Object obj, long j) {
        return ((byte) ((f34533e.m7356k(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: B */
    public static /* synthetic */ boolean m7327B(Object obj, long j) {
        return ((byte) ((f34533e.m7356k(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: E */
    private static int m7324E(Class<?> cls) {
        if (f34535g) {
            return f34533e.m7358i(cls);
        }
        return -1;
    }

    /* renamed from: a */
    private static int m7323a(Class<?> cls) {
        if (f34535g) {
            return f34533e.m7357j(cls);
        }
        return -1;
    }

    /* renamed from: b */
    private static Field m7322b() {
        int i = C7517q4.f34639a;
        Field m7321c = m7321c(Buffer.class, "effectiveDirectAddress");
        Field field = m7321c;
        if (m7321c == null) {
            Field m7321c2 = m7321c(Buffer.class, "address");
            if (m7321c2 != null && m7321c2.getType() == Long.TYPE) {
                return m7321c2;
            }
            field = null;
        }
        return field;
    }

    /* renamed from: c */
    private static Field m7321c(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: d */
    public static void m7320d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC7395h8 abstractC7395h8 = f34533e;
        int m7356k = abstractC7395h8.m7356k(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        abstractC7395h8.m7355l(obj, j2, ((255 & b) << i) | (m7356k & ((255 << i) ^ (-1))));
    }

    /* renamed from: e */
    public static void m7319e(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC7395h8 abstractC7395h8 = f34533e;
        int m7356k = abstractC7395h8.m7356k(obj, j2);
        int i = (((int) j) & 3) << 3;
        abstractC7395h8.m7355l(obj, j2, ((255 & b) << i) | (m7356k & ((255 << i) ^ (-1))));
    }

    /* renamed from: f */
    public static boolean m7318f() {
        return f34535g;
    }

    /* renamed from: g */
    public static boolean m7317g() {
        return f34534f;
    }

    /* renamed from: h */
    public static <T> T m7316h(Class<T> cls) {
        try {
            return (T) f34529a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: i */
    public static int m7315i(Object obj, long j) {
        return f34533e.m7356k(obj, j);
    }

    /* renamed from: j */
    public static void m7314j(Object obj, long j, int i) {
        f34533e.m7355l(obj, j, i);
    }

    /* renamed from: k */
    public static long m7313k(Object obj, long j) {
        return f34533e.m7354m(obj, j);
    }

    /* renamed from: l */
    public static void m7312l(Object obj, long j, long j2) {
        f34533e.m7353n(obj, j, j2);
    }

    /* renamed from: m */
    public static boolean m7311m(Object obj, long j) {
        return f34533e.mo7365b(obj, j);
    }

    /* renamed from: n */
    public static void m7310n(Object obj, long j, boolean z) {
        f34533e.mo7364c(obj, j, z);
    }

    /* renamed from: o */
    public static float m7309o(Object obj, long j) {
        return f34533e.mo7363d(obj, j);
    }

    /* renamed from: p */
    public static void m7308p(Object obj, long j, float f) {
        f34533e.mo7362e(obj, j, f);
    }

    /* renamed from: q */
    public static double m7307q(Object obj, long j) {
        return f34533e.mo7361f(obj, j);
    }

    /* renamed from: r */
    public static void m7306r(Object obj, long j, double d) {
        f34533e.mo7360g(obj, j, d);
    }

    /* renamed from: s */
    public static Object m7305s(Object obj, long j) {
        return f34533e.m7352o(obj, j);
    }

    /* renamed from: t */
    public static void m7304t(Object obj, long j, Object obj2) {
        f34533e.m7351p(obj, j, obj2);
    }

    /* renamed from: u */
    public static void m7303u(byte[] bArr, long j, byte b) {
        f34533e.mo7366a(bArr, f34536h + j, b);
    }

    /* renamed from: v */
    public static Unsafe m7302v() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C7353e8());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: w */
    static boolean m7301w(Class<?> cls) {
        int i = C7517q4.f34639a;
        try {
            Class<?> cls2 = f34530b;
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
    static /* synthetic */ void m7300x(Throwable th) {
        Logger logger = Logger.getLogger(C7409i8.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(valueOf.length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }
}
