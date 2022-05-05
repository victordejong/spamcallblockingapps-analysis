package android.support.p001v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* renamed from: android.support.v4.util.Pools */
/* loaded from: classes-dex2jar.jar:android/support/v4/util/Pools.class */
public final class Pools {

    /* renamed from: android.support.v4.util.Pools$Pool */
    /* loaded from: classes-dex2jar.jar:android/support/v4/util/Pools$Pool.class */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t);
    }

    /* renamed from: android.support.v4.util.Pools$SimplePool */
    /* loaded from: classes-dex2jar.jar:android/support/v4/util/Pools$SimplePool.class */
    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i];
        }

        private boolean isInPool(@NonNull T t) {
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.support.p001v4.util.Pools.Pool
        public T acquire() {
            if (this.mPoolSize <= 0) {
                return null;
            }
            int i = this.mPoolSize - 1;
            T t = (T) this.mPool[i];
            this.mPool[i] = null;
            this.mPoolSize--;
            return t;
        }

        @Override // android.support.p001v4.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (isInPool(t)) {
                throw new IllegalStateException("Already in the pool!");
            } else if (this.mPoolSize >= this.mPool.length) {
                return false;
            } else {
                this.mPool[this.mPoolSize] = t;
                this.mPoolSize++;
                return true;
            }
        }
    }

    /* renamed from: android.support.v4.util.Pools$SynchronizedPool */
    /* loaded from: classes-dex2jar.jar:android/support/v4/util/Pools$SynchronizedPool.class */
    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock = new Object();

        public SynchronizedPool(int i) {
            super(i);
        }

        @Override // android.support.p001v4.util.Pools.SimplePool, android.support.p001v4.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.mLock) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // android.support.p001v4.util.Pools.SimplePool, android.support.p001v4.util.Pools.Pool
        public boolean release(@NonNull T t) {
            boolean release;
            synchronized (this.mLock) {
                release = super.release(t);
            }
            return release;
        }
    }

    private Pools() {
    }
}
