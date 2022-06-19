package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bh3.class */
public final class bh3 {

    /* renamed from: a */
    private static final Unsafe f20454a;

    /* renamed from: b */
    private static final Class<?> f20455b = vc3.m10043a();

    /* renamed from: c */
    private static final boolean f20456c;

    /* renamed from: d */
    private static final boolean f20457d;

    /* renamed from: e */
    private static final ah3 f20458e;

    /* renamed from: f */
    private static final boolean f20459f;

    /* renamed from: g */
    private static final boolean f20460g;

    /* renamed from: h */
    static final long f20461h;

    /* renamed from: i */
    private static final long f20462i;

    /* renamed from: j */
    static final boolean f20463j;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0244  */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    static {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bh3.m36973clinit():void");
    }

    private bh3() {
    }

    /* renamed from: A */
    public static long m16370A(ByteBuffer byteBuffer) {
        return f20458e.m16600o(byteBuffer, f20462i);
    }

    /* renamed from: B */
    public static Unsafe m16369B() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new xg3());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: C */
    static boolean m16368C(Class<?> cls) {
        int i = vc3.f31136a;
        try {
            Class<?> cls2 = f20455b;
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

    /* renamed from: F */
    public static /* synthetic */ boolean m16365F(Object obj, long j) {
        return ((byte) ((f20458e.m16602m(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: G */
    public static /* synthetic */ boolean m16364G(Object obj, long j) {
        return ((byte) ((f20458e.m16602m(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: b */
    static /* synthetic */ void m16361b(Throwable th) {
        Logger.getLogger(bh3.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    /* renamed from: c */
    private static int m16360c(Class<?> cls) {
        if (f20460g) {
            return f20458e.m16604k(cls);
        }
        return -1;
    }

    /* renamed from: d */
    private static int m16359d(Class<?> cls) {
        if (f20460g) {
            return f20458e.m16603l(cls);
        }
        return -1;
    }

    /* renamed from: e */
    private static Field m16358e() {
        int i = vc3.f31136a;
        Field m16357f = m16357f(Buffer.class, "effectiveDirectAddress");
        Field field = m16357f;
        if (m16357f == null) {
            Field m16357f2 = m16357f(Buffer.class, "address");
            if (m16357f2 != null && m16357f2.getType() == Long.TYPE) {
                return m16357f2;
            }
            field = null;
        }
        return field;
    }

    /* renamed from: f */
    private static Field m16357f(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: g */
    public static void m16356g(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        ah3 ah3Var = f20458e;
        int m16602m = ah3Var.m16602m(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        ah3Var.m16601n(obj, j2, ((255 & b) << i) | (m16602m & ((255 << i) ^ (-1))));
    }

    /* renamed from: h */
    public static void m16355h(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        ah3 ah3Var = f20458e;
        int m16602m = ah3Var.m16602m(obj, j2);
        int i = (((int) j) & 3) << 3;
        ah3Var.m16601n(obj, j2, ((255 & b) << i) | (m16602m & ((255 << i) ^ (-1))));
    }

    /* renamed from: i */
    public static boolean m16354i() {
        return f20460g;
    }

    /* renamed from: j */
    public static boolean m16353j() {
        return f20459f;
    }

    /* renamed from: k */
    public static <T> T m16352k(Class<T> cls) {
        try {
            return (T) f20454a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: l */
    public static int m16351l(Object obj, long j) {
        return f20458e.m16602m(obj, j);
    }

    /* renamed from: m */
    public static void m16350m(Object obj, long j, int i) {
        f20458e.m16601n(obj, j, i);
    }

    /* renamed from: n */
    public static long m16349n(Object obj, long j) {
        return f20458e.m16600o(obj, j);
    }

    /* renamed from: o */
    public static void m16348o(Object obj, long j, long j2) {
        f20458e.m16599p(obj, j, j2);
    }

    /* renamed from: p */
    public static boolean m16347p(Object obj, long j) {
        return f20458e.mo8397b(obj, j);
    }

    /* renamed from: q */
    public static void m16346q(Object obj, long j, boolean z) {
        f20458e.mo8396c(obj, j, z);
    }

    /* renamed from: r */
    public static float m16345r(Object obj, long j) {
        return f20458e.mo8395d(obj, j);
    }

    /* renamed from: s */
    public static void m16344s(Object obj, long j, float f) {
        f20458e.mo8394e(obj, j, f);
    }

    /* renamed from: t */
    public static double m16343t(Object obj, long j) {
        return f20458e.mo8393f(obj, j);
    }

    /* renamed from: u */
    public static void m16342u(Object obj, long j, double d) {
        f20458e.mo8392g(obj, j, d);
    }

    /* renamed from: v */
    public static Object m16341v(Object obj, long j) {
        return f20458e.m16598q(obj, j);
    }

    /* renamed from: w */
    public static void m16340w(Object obj, long j, Object obj2) {
        f20458e.m16597r(obj, j, obj2);
    }

    /* renamed from: x */
    public static void m16339x(byte[] bArr, long j, byte b) {
        f20458e.mo8398a(bArr, f20461h + j, b);
    }

    /* renamed from: y */
    public static void m16338y(long j, byte[] bArr, long j2, long j3) {
        f20458e.mo8390i(j, bArr, j2, j3);
    }

    /* renamed from: z */
    public static byte m16337z(long j) {
        return f20458e.mo8391h(j);
    }
}
