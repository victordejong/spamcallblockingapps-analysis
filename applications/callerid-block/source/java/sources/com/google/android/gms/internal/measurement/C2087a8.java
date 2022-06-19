package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.a8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a8.class */
final class C2087a8 {

    /* renamed from: a */
    private static final Unsafe f9725a;

    /* renamed from: b */
    private static final Class<?> f9726b = C2143l4.m4269a();

    /* renamed from: c */
    private static final boolean f9727c;

    /* renamed from: d */
    private static final boolean f9728d;

    /* renamed from: e */
    private static final AbstractC2214z7 f9729e;

    /* renamed from: f */
    private static final boolean f9730f;

    /* renamed from: g */
    private static final boolean f9731g;

    /* renamed from: h */
    static final long f9732h;

    /* renamed from: i */
    static final boolean f9733i;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x022e  */
    static {
        /*
            Method dump skipped, instructions count: 565
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2087a8.m15811clinit():void");
    }

    private C2087a8() {
    }

    /* renamed from: A */
    static /* synthetic */ boolean m4460A(Object obj, long j) {
        return ((byte) ((f9729e.m4063k(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: B */
    static /* synthetic */ boolean m4459B(Object obj, long j) {
        return ((byte) ((f9729e.m4063k(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: E */
    private static int m4456E(Class<?> cls) {
        if (f9731g) {
            return f9729e.m4065i(cls);
        }
        return -1;
    }

    /* renamed from: a */
    private static int m4455a(Class<?> cls) {
        if (f9731g) {
            return f9729e.m4064j(cls);
        }
        return -1;
    }

    /* renamed from: b */
    private static Field m4454b() {
        int i = C2143l4.f9782a;
        Field m4453c = m4453c(Buffer.class, "effectiveDirectAddress");
        Field field = m4453c;
        if (m4453c == null) {
            Field m4453c2 = m4453c(Buffer.class, "address");
            if (m4453c2 != null && m4453c2.getType() == Long.TYPE) {
                return m4453c2;
            }
            field = null;
        }
        return field;
    }

    /* renamed from: c */
    private static Field m4453c(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: d */
    public static void m4452d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC2214z7 abstractC2214z7 = f9729e;
        int m4063k = abstractC2214z7.m4063k(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        abstractC2214z7.m4062l(obj, j2, ((255 & b) << i) | (m4063k & ((255 << i) ^ (-1))));
    }

    /* renamed from: e */
    public static void m4451e(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC2214z7 abstractC2214z7 = f9729e;
        int m4063k = abstractC2214z7.m4063k(obj, j2);
        int i = (((int) j) & 3) << 3;
        abstractC2214z7.m4062l(obj, j2, ((255 & b) << i) | (m4063k & ((255 << i) ^ (-1))));
    }

    /* renamed from: f */
    public static boolean m4450f() {
        return f9731g;
    }

    /* renamed from: g */
    public static boolean m4449g() {
        return f9730f;
    }

    /* renamed from: h */
    static <T> T m4448h(Class<T> cls) {
        try {
            return (T) f9725a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: i */
    static int m4447i(Object obj, long j) {
        return f9729e.m4063k(obj, j);
    }

    /* renamed from: j */
    static void m4446j(Object obj, long j, int i) {
        f9729e.m4062l(obj, j, i);
    }

    /* renamed from: k */
    static long m4445k(Object obj, long j) {
        return f9729e.m4061m(obj, j);
    }

    /* renamed from: l */
    static void m4444l(Object obj, long j, long j2) {
        f9729e.m4060n(obj, j, j2);
    }

    /* renamed from: m */
    static boolean m4443m(Object obj, long j) {
        return f9729e.m4072b(obj, j);
    }

    /* renamed from: n */
    static void m4442n(Object obj, long j, boolean z) {
        f9729e.m4071c(obj, j, z);
    }

    /* renamed from: o */
    static float m4441o(Object obj, long j) {
        return f9729e.m4070d(obj, j);
    }

    /* renamed from: p */
    static void m4440p(Object obj, long j, float f) {
        f9729e.m4069e(obj, j, f);
    }

    /* renamed from: q */
    static double m4439q(Object obj, long j) {
        return f9729e.m4068f(obj, j);
    }

    /* renamed from: r */
    static void m4438r(Object obj, long j, double d) {
        f9729e.m4067g(obj, j, d);
    }

    /* renamed from: s */
    public static Object m4437s(Object obj, long j) {
        return f9729e.m4059o(obj, j);
    }

    /* renamed from: t */
    public static void m4436t(Object obj, long j, Object obj2) {
        f9729e.m4058p(obj, j, obj2);
    }

    /* renamed from: u */
    static void m4435u(byte[] bArr, long j, byte b) {
        f9729e.m4073a(bArr, f9732h + j, b);
    }

    /* renamed from: v */
    static Unsafe m4434v() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C2197w7());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: w */
    static boolean m4433w(Class<?> cls) {
        int i = C2143l4.f9782a;
        try {
            Class<?> cls2 = f9726b;
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
    static /* synthetic */ void m4432x(Throwable th) {
        Logger logger = Logger.getLogger(C2087a8.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }
}
