package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.ix */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ix.class */
final class C13592ix {

    /* renamed from: a */
    static final long f50862a;

    /* renamed from: b */
    static final boolean f50863b;

    /* renamed from: c */
    private static final Unsafe f50864c;

    /* renamed from: d */
    private static final Class<?> f50865d = Memory.class;

    /* renamed from: e */
    private static final boolean f50866e;

    /* renamed from: f */
    private static final boolean f50867f;

    /* renamed from: g */
    private static final AbstractC13591iw f50868g;

    /* renamed from: h */
    private static final boolean f50869h;

    /* renamed from: i */
    private static final boolean f50870i;

    /* JADX WARN: Removed duplicated region for block: B:31:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0217  */
    static {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C13592ix.m51597clinit():void");
    }

    private C13592ix() {
    }

    /* renamed from: a */
    public static int m12537a(Object obj, long j) {
        return f50868g.m12542d(obj, j);
    }

    /* renamed from: a */
    public static <T> T m12539a(Class<T> cls) {
        try {
            return (T) f50864c.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m12538a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m12535a(Object obj, long j, double d) {
        f50868g.mo12549a(obj, j, d);
    }

    /* renamed from: a */
    public static void m12534a(Object obj, long j, float f) {
        f50868g.mo12548a(obj, j, f);
    }

    /* renamed from: a */
    public static void m12533a(Object obj, long j, int i) {
        f50868g.m12547a(obj, j, i);
    }

    /* renamed from: a */
    public static void m12532a(Object obj, long j, long j2) {
        f50868g.m12546a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m12531a(Object obj, long j, Object obj2) {
        f50868g.f50861a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m12530a(Object obj, long j, boolean z) {
        f50868g.mo12545a(obj, j, z);
    }

    /* renamed from: a */
    private static /* synthetic */ void m12529a(Throwable th) {
        Logger logger = Logger.getLogger(C13592ix.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    /* renamed from: a */
    public static void m12528a(byte[] bArr, long j, byte b) {
        f50868g.mo12550a((Object) bArr, f50862a + j, b);
    }

    /* renamed from: a */
    public static boolean m12540a() {
        return f50870i;
    }

    /* renamed from: b */
    private static int m12526b(Class<?> cls) {
        if (f50870i) {
            return f50868g.f50861a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m12525b(Object obj, long j) {
        return f50868g.m12541e(obj, j);
    }

    /* renamed from: b */
    public static boolean m12527b() {
        return f50869h;
    }

    /* renamed from: c */
    private static int m12521c(Class<?> cls) {
        if (f50870i) {
            return f50868g.f50861a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Unsafe m12522c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C13588it());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m12519c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC13591iw abstractC13591iw = f50868g;
        int m12542d = abstractC13591iw.m12542d(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        abstractC13591iw.m12547a(obj, j2, ((255 & b) << i) | (m12542d & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    public static boolean m12520c(Object obj, long j) {
        return f50868g.mo12551a(obj, j);
    }

    /* renamed from: d */
    public static float m12515d(Object obj, long j) {
        return f50868g.mo12544b(obj, j);
    }

    /* renamed from: d */
    private static Field m12517d() {
        Field m12538a = m12538a(Buffer.class, "effectiveDirectAddress");
        Field field = m12538a;
        if (m12538a == null) {
            Field m12538a2 = m12538a(Buffer.class, "address");
            if (m12538a2 != null && m12538a2.getType() == Long.TYPE) {
                return m12538a2;
            }
            field = null;
        }
        return field;
    }

    /* renamed from: d */
    public static void m12514d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC13591iw abstractC13591iw = f50868g;
        int m12542d = abstractC13591iw.m12542d(obj, j2);
        int i = (((int) j) & 3) << 3;
        abstractC13591iw.m12547a(obj, j2, ((255 & b) << i) | (m12542d & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    private static boolean m12516d(Class<?> cls) {
        try {
            Class<?> cls2 = f50865d;
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

    /* renamed from: e */
    public static double m12513e(Object obj, long j) {
        return f50868g.mo12543c(obj, j);
    }

    /* renamed from: f */
    public static Object m12512f(Object obj, long j) {
        return f50868g.f50861a.getObject(obj, j);
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m12511g(Object obj, long j) {
        return ((byte) ((f50868g.m12542d(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m12510h(Object obj, long j) {
        return ((byte) ((f50868g.m12542d(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }
}
