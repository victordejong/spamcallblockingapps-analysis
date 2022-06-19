package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/ResultPoint.class */
public class ResultPoint {

    /* renamed from: x */
    private final float f178x;

    /* renamed from: y */
    private final float f179y;

    public ResultPoint(float f, float f2) {
        this.f178x = f;
        this.f179y = f2;
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f = resultPoint2.f178x;
        float f2 = resultPoint2.f179y;
        return ((resultPoint3.f178x - f) * (resultPoint.f179y - f2)) - ((resultPoint3.f179y - f2) * (resultPoint.f178x - f));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f178x, resultPoint.f179y, resultPoint2.f178x, resultPoint2.f179y);
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint3 = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint = resultPointArr[2];
        } else if (distance3 < distance2 || distance3 < distance) {
            resultPoint3 = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint = resultPointArr[1];
        } else {
            resultPoint3 = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint = resultPointArr[2];
        }
        ResultPoint resultPoint4 = resultPoint2;
        ResultPoint resultPoint5 = resultPoint;
        if (crossProductZ(resultPoint2, resultPoint3, resultPoint) < 0.0f) {
            resultPoint5 = resultPoint2;
            resultPoint4 = resultPoint;
        }
        resultPointArr[0] = resultPoint4;
        resultPointArr[1] = resultPoint3;
        resultPointArr[2] = resultPoint5;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            return this.f178x == resultPoint.f178x && this.f179y == resultPoint.f179y;
        }
        return false;
    }

    public final float getX() {
        return this.f178x;
    }

    public final float getY() {
        return this.f179y;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f178x) * 31) + Float.floatToIntBits(this.f179y);
    }

    public final String toString() {
        return "(" + this.f178x + ',' + this.f179y + ')';
    }
}
