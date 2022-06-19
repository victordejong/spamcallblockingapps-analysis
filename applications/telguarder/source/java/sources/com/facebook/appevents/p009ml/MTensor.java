package com.facebook.appevents.p009ml;
/* renamed from: com.facebook.appevents.ml.MTensor */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/MTensor.class */
public class MTensor {
    private int capacity;
    private float[] data;
    private int[] shape;

    public MTensor(int[] iArr) {
        this.shape = iArr;
        int capacity = getCapacity(iArr);
        this.capacity = capacity;
        this.data = new float[capacity];
    }

    private static int getCapacity(int[] iArr) {
        int i = 1;
        for (int i2 : iArr) {
            i *= i2;
        }
        return i;
    }

    public float[] getData() {
        return this.data;
    }

    public int getShape(int i) {
        return this.shape[i];
    }

    public int getShapeSize() {
        return this.shape.length;
    }

    public void reshape(int[] iArr) {
        this.shape = iArr;
        int capacity = getCapacity(iArr);
        float[] fArr = new float[capacity];
        System.arraycopy(this.data, 0, fArr, 0, Math.min(this.capacity, capacity));
        this.data = fArr;
        this.capacity = capacity;
    }
}
