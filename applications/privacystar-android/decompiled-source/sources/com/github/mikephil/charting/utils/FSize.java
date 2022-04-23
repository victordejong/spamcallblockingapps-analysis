package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/FSize.class */
public final class FSize extends ObjectPool.Poolable {
    private static ObjectPool<FSize> pool = ObjectPool.create(256, new FSize(0.0f, 0.0f));
    public float height;
    public float width;

    static {
        pool.setReplenishPercentage(0.5f);
    }

    public FSize() {
    }

    public FSize(float f, float f2) {
        this.width = f;
        this.height = f2;
    }

    public static FSize getInstance(float f, float f2) {
        FSize fSize = pool.get();
        fSize.width = f;
        fSize.height = f2;
        return fSize;
    }

    public static void recycleInstance(FSize fSize) {
        pool.recycle((ObjectPool<FSize>) fSize);
    }

    public static void recycleInstances(List<FSize> list) {
        pool.recycle(list);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FSize)) {
            return false;
        }
        FSize fSize = (FSize) obj;
        boolean z = false;
        if (this.width == fSize.width) {
            z = false;
            if (this.height == fSize.height) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.width) ^ Float.floatToIntBits(this.height);
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    protected ObjectPool.Poolable instantiate() {
        return new FSize(0.0f, 0.0f);
    }

    public String toString() {
        return this.width + "x" + this.height;
    }
}
