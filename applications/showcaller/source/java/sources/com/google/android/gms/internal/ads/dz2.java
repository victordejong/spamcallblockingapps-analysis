package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dz2.class */
final class dz2 extends uy2 {

    /* renamed from: a */
    static final Unsafe f21937a;

    /* renamed from: b */
    static final long f21938b;

    /* renamed from: c */
    static final long f21939c;

    /* renamed from: d */
    static final long f21940d;

    /* renamed from: e */
    static final long f21941e;

    /* renamed from: f */
    static final long f21942f;

    /* renamed from: com.google.android.gms.internal.ads.dz2$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dz2$a.class */
    class C6422a implements PrivilegedExceptionAction<Unsafe> {
        C6422a() {
        }

        /* renamed from: a */
        public static final Unsafe m15644a() {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() {
            return m15644a();
        }
    }

    static {
        Unsafe unsafe;
        try {
            unsafe = Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                unsafe = (Unsafe) AccessController.doPrivileged(new C6422a());
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
        try {
            f21939c = unsafe.objectFieldOffset(fz2.class.getDeclaredField("j"));
            f21938b = unsafe.objectFieldOffset(fz2.class.getDeclaredField("i"));
            f21940d = unsafe.objectFieldOffset(fz2.class.getDeclaredField("h"));
            f21941e = unsafe.objectFieldOffset(ez2.class.getDeclaredField("b"));
            f21942f = unsafe.objectFieldOffset(ez2.class.getDeclaredField("c"));
            f21937a = unsafe;
        } catch (Exception e3) {
            kv2.m13778a(e3);
            throw new RuntimeException(e3);
        }
    }

    public /* synthetic */ dz2(xy2 xy2Var) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: a */
    public final void mo8654a(ez2 ez2Var, Thread thread) {
        f21937a.putObject(ez2Var, f21941e, thread);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: b */
    public final void mo8653b(ez2 ez2Var, ez2 ez2Var2) {
        f21937a.putObject(ez2Var, f21942f, ez2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: c */
    public final boolean mo8652c(fz2<?> fz2Var, ez2 ez2Var, ez2 ez2Var2) {
        return f21937a.compareAndSwapObject(fz2Var, f21939c, ez2Var, ez2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: d */
    public final boolean mo8651d(fz2<?> fz2Var, wy2 wy2Var, wy2 wy2Var2) {
        return f21937a.compareAndSwapObject(fz2Var, f21938b, wy2Var, wy2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: e */
    public final boolean mo8650e(fz2<?> fz2Var, Object obj, Object obj2) {
        return f21937a.compareAndSwapObject(fz2Var, f21940d, obj, obj2);
    }
}
