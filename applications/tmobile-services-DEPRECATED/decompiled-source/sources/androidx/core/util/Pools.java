package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/util/Pools.class */
public final class Pools {

    /* loaded from: classes-dex2jar.jar:androidx/core/util/Pools$Pool.class */
    public interface Pool<T> {
        /* renamed from: a */
        boolean mo19342a(@NonNull T t);

        @Nullable
        /* renamed from: b */
        T mo19341b();
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/util/Pools$SimplePool.class */
    public static class SimplePool<T> implements Pool<T> {

        /* renamed from: a */
        private final Object[] f3214a;

        /* renamed from: b */
        private int f3215b;

        public SimplePool(int i) {
            if (i > 0) {
                this.f3214a = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        /* renamed from: c */
        private boolean m19343c(@NonNull T t) {
            for (int i = 0; i < this.f3215b; i++) {
                if (this.f3214a[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        /* renamed from: a */
        public boolean mo19342a(@NonNull T t) {
            if (!m19343c(t)) {
                int i = this.f3215b;
                Object[] objArr = this.f3214a;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f3215b = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }

        @Override // androidx.core.util.Pools.Pool
        /* renamed from: b */
        public T mo19341b() {
            int i = this.f3215b;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            Object[] objArr = this.f3214a;
            T t = (T) objArr[i2];
            objArr[i2] = null;
            this.f3215b = i - 1;
            return t;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/util/Pools$SynchronizedPool.class */
    public static class SynchronizedPool<T> extends SimplePool<T> {

        /* renamed from: c */
        private final Object f3216c = new Object();

        public SynchronizedPool(int i) {
            super(i);
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        /* renamed from: a */
        public boolean mo19342a(@NonNull T t) {
            boolean a;
            synchronized (this.f3216c) {
                a = super.mo19342a(t);
            }
            return a;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        /* renamed from: b */
        public T mo19341b() {
            T t;
            synchronized (this.f3216c) {
                t = (T) super.mo19341b();
            }
            return t;
        }
    }

    private Pools() {
    }
}
