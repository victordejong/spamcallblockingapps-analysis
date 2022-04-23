package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.utils.ObjectPool;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/MPPointD.class */
public class MPPointD extends ObjectPool.Poolable {
    private static ObjectPool<MPPointD> pool = ObjectPool.create(64, new MPPointD(0.0d, 0.0d));

    /* renamed from: x */
    public double f158x;

    /* renamed from: y */
    public double f159y;

    static {
        pool.setReplenishPercentage(0.5f);
    }

    private MPPointD(double d, double d2) {
        this.f158x = d;
        this.f159y = d2;
    }

    public static MPPointD getInstance(double d, double d2) {
        MPPointD mPPointD = pool.get();
        mPPointD.f158x = d;
        mPPointD.f159y = d2;
        return mPPointD;
    }

    public static void recycleInstance(MPPointD mPPointD) {
        pool.recycle((ObjectPool<MPPointD>) mPPointD);
    }

    public static void recycleInstances(List<MPPointD> list) {
        pool.recycle(list);
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    protected ObjectPool.Poolable instantiate() {
        return new MPPointD(0.0d, 0.0d);
    }

    public String toString() {
        return "MPPointD, x: " + this.f158x + ", y: " + this.f159y;
    }
}
