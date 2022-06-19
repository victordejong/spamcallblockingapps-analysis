package com.facebook.appevents.p009ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
/* renamed from: com.facebook.appevents.ml.Operator */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/ml/Operator.class */
final class Operator {
    Operator() {
    }

    public static void addmv(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            for (int i = 0; i < shape; i++) {
                for (int i2 = 0; i2 < shape2; i2++) {
                    for (int i3 = 0; i3 < shape3; i3++) {
                        int i4 = (i * shape2 * shape3) + (i2 * shape3) + i3;
                        data[i4] = data[i4] + data2[i3];
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static MTensor concatenate(MTensor[] mTensorArr) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensorArr[0].getShape(0);
            int i = 0;
            for (MTensor mTensor : mTensorArr) {
                i += mTensor.getShape(1);
            }
            MTensor mTensor2 = new MTensor(new int[]{shape, i});
            float[] data = mTensor2.getData();
            for (int i2 = 0; i2 < shape; i2++) {
                int i3 = i2 * i;
                for (int i4 = 0; i4 < mTensorArr.length; i4++) {
                    float[] data2 = mTensorArr[i4].getData();
                    int shape2 = mTensorArr[i4].getShape(1);
                    System.arraycopy(data2, i2 * shape2, data, i3, shape2);
                    i3 += shape2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static MTensor conv1D(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int shape4 = mTensor2.getShape(0);
            int i = (shape2 - shape4) + 1;
            int shape5 = mTensor2.getShape(2);
            MTensor mTensor3 = new MTensor(new int[]{shape, i, shape5});
            float[] data = mTensor.getData();
            float[] data2 = mTensor3.getData();
            float[] data3 = mTensor2.getData();
            for (int i2 = 0; i2 < shape; i2++) {
                for (int i3 = 0; i3 < shape5; i3++) {
                    int i4 = 0;
                    while (true) {
                        if (i4 < i) {
                            float f = 0.0f;
                            for (int i5 = 0; i5 < shape4; i5++) {
                                for (int i6 = 0; i6 < shape3; i6++) {
                                    f += data[(shape2 * shape3 * i2) + ((i5 + i4) * shape3) + i6] * data3[(((i5 * shape3) + i6) * shape5) + i3];
                                }
                            }
                            data2[(i * shape5 * i2) + (i4 * shape5) + i3] = f;
                            i4++;
                        }
                    }
                }
            }
            return mTensor3;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static MTensor dense(MTensor mTensor, MTensor mTensor2, MTensor mTensor3) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor3.getShape(0);
            MTensor mul = mul(mTensor, mTensor2);
            float[] data = mTensor3.getData();
            float[] data2 = mul.getData();
            for (int i = 0; i < shape; i++) {
                for (int i2 = 0; i2 < shape2; i2++) {
                    int i3 = (i * shape2) + i2;
                    data2[i3] = data2[i3] + data[i2];
                }
            }
            return mul;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static MTensor embedding(String[] strArr, int i, MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int length = strArr.length;
            int shape = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{length, i, shape});
            float[] data = mTensor2.getData();
            float[] data2 = mTensor.getData();
            for (int i2 = 0; i2 < length; i2++) {
                int[] vectorize = Utils.vectorize(strArr[i2], i);
                for (int i3 = 0; i3 < i; i3++) {
                    System.arraycopy(data2, vectorize[i3] * shape, data, (shape * i * i2) + (shape * i3), shape);
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static void flatten(MTensor mTensor, int i) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            if (i >= mTensor.getShapeSize()) {
                return;
            }
            int i2 = 1;
            for (int i3 = i; i3 < mTensor.getShapeSize(); i3++) {
                i2 *= mTensor.getShape(i3);
            }
            int[] iArr = new int[i + 1];
            for (int i4 = 0; i4 < i; i4++) {
                iArr[i4] = mTensor.getShape(i4);
            }
            iArr[i] = i2;
            mTensor.reshape(iArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static MTensor maxPool1D(MTensor mTensor, int i) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int i2 = (shape2 - i) + 1;
            MTensor mTensor2 = new MTensor(new int[]{shape, i2, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            for (int i3 = 0; i3 < shape; i3++) {
                for (int i4 = 0; i4 < shape3; i4++) {
                    for (int i5 = 0; i5 < i2; i5++) {
                        int i6 = i5 * shape3;
                        int i7 = (i3 * i2 * shape3) + i6 + i4;
                        data2[i7] = Float.MIN_VALUE;
                        for (int i8 = 0; i8 < i; i8++) {
                            data2[i7] = Math.max(data2[i7], data[(i3 * shape2 * shape3) + i6 + i4 + (i8 * shape3)]);
                        }
                    }
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    static MTensor mul(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor2.getShape(0);
            int shape3 = mTensor2.getShape(1);
            MTensor mTensor3 = new MTensor(new int[]{shape, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            float[] data3 = mTensor3.getData();
            for (int i = 0; i < shape; i++) {
                for (int i2 = 0; i2 < shape3; i2++) {
                    int i3 = (i * shape3) + i2;
                    data3[i3] = 0.0f;
                    for (int i4 = 0; i4 < shape2; i4++) {
                        data3[i3] = data3[i3] + (data[(i * shape2) + i4] * data2[(i4 * shape3) + i2]);
                    }
                }
            }
            return mTensor3;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static void relu(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            float[] data = mTensor.getData();
            for (int i = 0; i < data.length; i++) {
                if (data[i] < 0.0f) {
                    data[i] = 0.0f;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static void softmax(MTensor mTensor) {
        int i;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            for (int i2 = 0; i2 < shape; i2++) {
                int i3 = i2 * shape2;
                int i4 = i3 + shape2;
                float f = Float.MIN_VALUE;
                int i5 = i3;
                while (i5 < i4) {
                    float f2 = f;
                    if (data[i5] > f) {
                        f2 = data[i5];
                    }
                    i5++;
                    f = f2;
                }
                for (int i6 = i3; i6 < i4; i6++) {
                    data[i6] = (float) Math.exp(data[i6] - f);
                }
                int i7 = i3;
                float f3 = 0.0f;
                while (true) {
                    if (i7 < i4) {
                        f3 += data[i7];
                        i7++;
                    }
                }
                for (i = i3; i < i4; i++) {
                    data[i] = data[i] / f3;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static MTensor transpose2D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            for (int i = 0; i < shape; i++) {
                for (int i2 = 0; i2 < shape2; i2++) {
                    data2[(i2 * shape) + i] = data[(i * shape2) + i2];
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static MTensor transpose3D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            MTensor mTensor2 = new MTensor(new int[]{shape3, shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            for (int i = 0; i < shape; i++) {
                for (int i2 = 0; i2 < shape2; i2++) {
                    for (int i3 = 0; i3 < shape3; i3++) {
                        data2[(i3 * shape * shape2) + (i2 * shape) + i] = data[(i * shape2 * shape3) + (i2 * shape3) + i3];
                    }
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }
}
