package androidx.constraintlayout.solver;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools.class */
final class Pools {
    private static final boolean DEBUG = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools$Pool.class */
    interface Pool<T> {
        T acquire();

        boolean release(T t);

        void releaseAll(T[] tArr, int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Pools$SimplePool.class */
    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i) {
            if (i > 0) {
                this.mPool = new Object[i];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean isInPool(T t) {
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public T acquire() {
            int i = this.mPoolSize;
            if (i > 0) {
                int i2 = i - 1;
                Object[] objArr = this.mPool;
                T t = (T) objArr[i2];
                objArr[i2] = null;
                this.mPoolSize = i - 1;
                return t;
            }
            return null;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public boolean release(T t) {
            int i = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i < objArr.length) {
                objArr[i] = t;
                this.mPoolSize = i + 1;
                return true;
            }
            return false;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public void releaseAll(T[] tArr, int i) {
            int i2 = i;
            if (i > tArr.length) {
                i2 = tArr.length;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                T t = tArr[i3];
                int i4 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i4 < objArr.length) {
                    objArr[i4] = t;
                    this.mPoolSize = i4 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
