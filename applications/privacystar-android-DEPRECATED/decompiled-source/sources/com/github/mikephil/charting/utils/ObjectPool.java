package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool.Poolable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/ObjectPool.class */
public class ObjectPool<T extends Poolable> {
    private static int ids;
    private int desiredCapacity;
    private T modelObject;
    private Object[] objects;
    private int objectsPointer;
    private int poolId;
    private float replenishPercentage;

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/ObjectPool$Poolable.class */
    public static abstract class Poolable {
        public static int NO_OWNER = -1;
        int currentOwnerId = NO_OWNER;

        protected abstract Poolable instantiate();
    }

    private ObjectPool(int i, T t) {
        if (i <= 0) {
            throw new IllegalArgumentException("Object Pool must be instantiated with a capacity greater than 0!");
        }
        this.desiredCapacity = i;
        this.objects = new Object[this.desiredCapacity];
        this.objectsPointer = 0;
        this.modelObject = t;
        this.replenishPercentage = 1.0f;
        refillPool();
    }

    public static ObjectPool create(int i, Poolable poolable) {
        ObjectPool objectPool;
        synchronized (ObjectPool.class) {
            try {
                objectPool = new ObjectPool(i, poolable);
                objectPool.poolId = ids;
                ids++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return objectPool;
    }

    private void refillPool() {
        refillPool(this.replenishPercentage);
    }

    private void refillPool(float f) {
        int i;
        int i2 = (int) (this.desiredCapacity * f);
        if (i2 < 1) {
            i = 1;
        } else {
            i = i2;
            if (i2 > this.desiredCapacity) {
                i = this.desiredCapacity;
            }
        }
        for (int i3 = 0; i3 < i; i3++) {
            this.objects[i3] = this.modelObject.instantiate();
        }
        this.objectsPointer = i - 1;
    }

    private void resizePool() {
        int i = this.desiredCapacity;
        this.desiredCapacity *= 2;
        Object[] objArr = new Object[this.desiredCapacity];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = this.objects[i2];
        }
        this.objects = objArr;
    }

    public T get() {
        T t;
        synchronized (this) {
            if (this.objectsPointer == -1 && this.replenishPercentage > 0.0f) {
                refillPool();
            }
            t = (T) ((Poolable) this.objects[this.objectsPointer]);
            t.currentOwnerId = Poolable.NO_OWNER;
            this.objectsPointer--;
        }
        return t;
    }

    public int getPoolCapacity() {
        return this.objects.length;
    }

    public int getPoolCount() {
        return this.objectsPointer + 1;
    }

    public int getPoolId() {
        return this.poolId;
    }

    public float getReplenishPercentage() {
        return this.replenishPercentage;
    }

    public void recycle(T t) {
        synchronized (this) {
            if (t.currentOwnerId == Poolable.NO_OWNER) {
                this.objectsPointer++;
                if (this.objectsPointer >= this.objects.length) {
                    resizePool();
                }
                t.currentOwnerId = this.poolId;
                this.objects[this.objectsPointer] = t;
            } else if (t.currentOwnerId == this.poolId) {
                throw new IllegalArgumentException("The object passed is already stored in this pool!");
            } else {
                throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t.currentOwnerId + ".  Object cannot belong to two different pool instances simultaneously!");
            }
        }
    }

    public void recycle(List<T> list) {
        synchronized (this) {
            while (list.size() + this.objectsPointer + 1 > this.desiredCapacity) {
                resizePool();
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                T t = list.get(i);
                if (t.currentOwnerId == Poolable.NO_OWNER) {
                    t.currentOwnerId = this.poolId;
                    this.objects[this.objectsPointer + 1 + i] = t;
                } else if (t.currentOwnerId == this.poolId) {
                    throw new IllegalArgumentException("The object passed is already stored in this pool!");
                } else {
                    throw new IllegalArgumentException("The object to recycle already belongs to poolId " + t.currentOwnerId + ".  Object cannot belong to two different pool instances simultaneously!");
                }
            }
            this.objectsPointer += size;
        }
    }

    public void setReplenishPercentage(float f) {
        float f2;
        if (f > 1.0f) {
            f2 = 1.0f;
        } else {
            f2 = f;
            if (f < 0.0f) {
                f2 = 0.0f;
            }
        }
        this.replenishPercentage = f2;
    }
}
