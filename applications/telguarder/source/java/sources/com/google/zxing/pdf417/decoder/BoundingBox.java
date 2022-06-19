package com.google.zxing.pdf417.decoder;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/pdf417/decoder/BoundingBox.class */
final class BoundingBox {
    private final ResultPoint bottomLeft;
    private final ResultPoint bottomRight;
    private final BitMatrix image;
    private final int maxX;
    private final int maxY;
    private final int minX;
    private final int minY;
    private final ResultPoint topLeft;
    private final ResultPoint topRight;

    public BoundingBox(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        boolean z = false;
        boolean z2 = resultPoint == null || resultPoint2 == null;
        z = (resultPoint3 == null || resultPoint4 == null) ? true : z;
        if (!z2 || !z) {
            if (z2) {
                resultPoint6 = new ResultPoint(0.0f, resultPoint3.getY());
                resultPoint5 = new ResultPoint(0.0f, resultPoint4.getY());
            } else {
                resultPoint6 = resultPoint;
                resultPoint5 = resultPoint2;
                if (z) {
                    resultPoint3 = new ResultPoint(bitMatrix.getWidth() - 1, resultPoint.getY());
                    resultPoint4 = new ResultPoint(bitMatrix.getWidth() - 1, resultPoint2.getY());
                    resultPoint5 = resultPoint2;
                    resultPoint6 = resultPoint;
                }
            }
            this.image = bitMatrix;
            this.topLeft = resultPoint6;
            this.bottomLeft = resultPoint5;
            this.topRight = resultPoint3;
            this.bottomRight = resultPoint4;
            this.minX = (int) Math.min(resultPoint6.getX(), resultPoint5.getX());
            this.maxX = (int) Math.max(resultPoint3.getX(), resultPoint4.getX());
            this.minY = (int) Math.min(resultPoint6.getY(), resultPoint3.getY());
            this.maxY = (int) Math.max(resultPoint5.getY(), resultPoint4.getY());
            return;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public BoundingBox(BoundingBox boundingBox) {
        this.image = boundingBox.image;
        this.topLeft = boundingBox.getTopLeft();
        this.bottomLeft = boundingBox.getBottomLeft();
        this.topRight = boundingBox.getTopRight();
        this.bottomRight = boundingBox.getBottomRight();
        this.minX = boundingBox.getMinX();
        this.maxX = boundingBox.getMaxX();
        this.minY = boundingBox.getMinY();
        this.maxY = boundingBox.getMaxY();
    }

    public static BoundingBox merge(BoundingBox boundingBox, BoundingBox boundingBox2) throws NotFoundException {
        return boundingBox == null ? boundingBox2 : boundingBox2 == null ? boundingBox : new BoundingBox(boundingBox.image, boundingBox.topLeft, boundingBox.bottomLeft, boundingBox2.topRight, boundingBox2.bottomRight);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.pdf417.decoder.BoundingBox addMissingRows(int r9, int r10, boolean r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.BoundingBox.addMissingRows(int, int, boolean):com.google.zxing.pdf417.decoder.BoundingBox");
    }

    public ResultPoint getBottomLeft() {
        return this.bottomLeft;
    }

    public ResultPoint getBottomRight() {
        return this.bottomRight;
    }

    public int getMaxX() {
        return this.maxX;
    }

    public int getMaxY() {
        return this.maxY;
    }

    public int getMinX() {
        return this.minX;
    }

    public int getMinY() {
        return this.minY;
    }

    public ResultPoint getTopLeft() {
        return this.topLeft;
    }

    public ResultPoint getTopRight() {
        return this.topRight;
    }
}
