package com.github.mikephil.charting.utils;

import android.os.Parcel;
import android.os.Parcelable;
import com.github.mikephil.charting.utils.ObjectPool;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/MPPointF.class */
public class MPPointF extends ObjectPool.Poolable {

    /* renamed from: x */
    public float f160x;

    /* renamed from: y */
    public float f161y;
    private static ObjectPool<MPPointF> pool = ObjectPool.create(32, new MPPointF(0.0f, 0.0f));
    public static final Parcelable.Creator<MPPointF> CREATOR = new Parcelable.Creator<MPPointF>() { // from class: com.github.mikephil.charting.utils.MPPointF.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MPPointF createFromParcel(Parcel parcel) {
            MPPointF mPPointF = new MPPointF(0.0f, 0.0f);
            mPPointF.my_readFromParcel(parcel);
            return mPPointF;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MPPointF[] newArray(int i) {
            return new MPPointF[i];
        }
    };

    static {
        pool.setReplenishPercentage(0.5f);
    }

    public MPPointF() {
    }

    public MPPointF(float f, float f2) {
        this.f160x = f;
        this.f161y = f2;
    }

    public static MPPointF getInstance() {
        return pool.get();
    }

    public static MPPointF getInstance(float f, float f2) {
        MPPointF mPPointF = pool.get();
        mPPointF.f160x = f;
        mPPointF.f161y = f2;
        return mPPointF;
    }

    public static MPPointF getInstance(MPPointF mPPointF) {
        MPPointF mPPointF2 = pool.get();
        mPPointF2.f160x = mPPointF.f160x;
        mPPointF2.f161y = mPPointF.f161y;
        return mPPointF2;
    }

    public static void recycleInstance(MPPointF mPPointF) {
        pool.recycle((ObjectPool<MPPointF>) mPPointF);
    }

    public static void recycleInstances(List<MPPointF> list) {
        pool.recycle(list);
    }

    public float getX() {
        return this.f160x;
    }

    public float getY() {
        return this.f161y;
    }

    @Override // com.github.mikephil.charting.utils.ObjectPool.Poolable
    protected ObjectPool.Poolable instantiate() {
        return new MPPointF(0.0f, 0.0f);
    }

    public void my_readFromParcel(Parcel parcel) {
        this.f160x = parcel.readFloat();
        this.f161y = parcel.readFloat();
    }
}
