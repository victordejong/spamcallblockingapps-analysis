package com.google.common.cache;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/Striped64.class */
public abstract class Striped64 extends Number {
    public static final Unsafe UNSAFE;
    public static final long baseOffset;
    public static final long busyOffset;
    public volatile transient long base;
    public volatile transient int busy;
    public volatile transient C7392b[] cells;
    public static final ThreadLocal<int[]> threadHashCode = new ThreadLocal<>();
    public static final Random rng = new Random();
    public static final int NCPU = Runtime.getRuntime().availableProcessors();

    /* renamed from: com.google.common.cache.Striped64$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/Striped64$a.class */
    public static final class C7391a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public Unsafe run() throws Exception {
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
    }

    /* renamed from: com.google.common.cache.Striped64$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/Striped64$b.class */
    public static final class C7392b {

        /* renamed from: b */
        public static final Unsafe f30405b;

        /* renamed from: c */
        public static final long f30406c;

        /* renamed from: a */
        public volatile long f30407a;

        static {
            try {
                Unsafe unsafe = Striped64.getUnsafe();
                f30405b = unsafe;
                f30406c = unsafe.objectFieldOffset(C7392b.class.getDeclaredField("a"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public C7392b(long j) {
            this.f30407a = j;
        }

        /* renamed from: a */
        public final boolean m8455a(long j, long j2) {
            return f30405b.compareAndSwapLong(this, f30406c, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafe = getUnsafe();
            UNSAFE = unsafe;
            baseOffset = unsafe.objectFieldOffset(Striped64.class.getDeclaredField("base"));
            busyOffset = UNSAFE.objectFieldOffset(Striped64.class.getDeclaredField("busy"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public static Unsafe getUnsafe() {
        try {
            return Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                return (Unsafe) AccessController.doPrivileged(new C7391a());
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
    }

    public final boolean casBase(long j, long j2) {
        return UNSAFE.compareAndSwapLong(this, baseOffset, j, j2);
    }

    public final boolean casBusy() {
        return UNSAFE.compareAndSwapInt(this, busyOffset, 0, 1);
    }

    /* renamed from: fn */
    public abstract long mo8456fn(long j, long j2);

    public final void internalReset(long j) {
        C7392b[] bVarArr = this.cells;
        this.base = j;
        if (bVarArr != null) {
            for (C7392b bVar : bVarArr) {
                if (bVar != null) {
                    bVar.f30407a = j;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x003f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x022a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void retryUpdate(long r10, int[] r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.Striped64.retryUpdate(long, int[], boolean):void");
    }
}
