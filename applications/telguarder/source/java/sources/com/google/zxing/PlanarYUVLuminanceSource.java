package com.google.zxing;

import androidx.core.view.ViewCompat;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/PlanarYUVLuminanceSource.class */
public final class PlanarYUVLuminanceSource extends LuminanceSource {
    private static final int THUMBNAIL_SCALE_FACTOR = 2;
    private final int dataHeight;
    private final int dataWidth;
    private final int left;
    private final int top;
    private final byte[] yuvData;

    public PlanarYUVLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.yuvData = bArr;
        this.dataWidth = i;
        this.dataHeight = i2;
        this.left = i3;
        this.top = i4;
        if (!z) {
            return;
        }
        reverseHorizontal(i5, i6);
    }

    private void reverseHorizontal(int i, int i2) {
        byte[] bArr = this.yuvData;
        int i3 = (this.top * this.dataWidth) + this.left;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = i / 2;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5 + i3) {
                byte b = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.dataWidth;
        }
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        return new PlanarYUVLuminanceSource(this.yuvData, this.dataWidth, this.dataHeight, this.left + i, this.top + i2, i3, i4, false);
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        int i = this.dataWidth;
        if (width == i && height == this.dataHeight) {
            return this.yuvData;
        }
        int i2 = width * height;
        byte[] bArr = new byte[i2];
        int i3 = (this.top * i) + this.left;
        int i4 = i3;
        if (width == i) {
            System.arraycopy(this.yuvData, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i5 = 0; i5 < height; i5++) {
            System.arraycopy(this.yuvData, i4, bArr, i5 * width, width);
            i4 += this.dataWidth;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (r8.length < r0) goto L10;
     */
    @Override // com.google.zxing.LuminanceSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] getRow(int r7, byte[] r8) {
        /*
            r6 = this;
            r0 = r7
            if (r0 < 0) goto L4d
            r0 = r7
            r1 = r6
            int r1 = r1.getHeight()
            if (r0 >= r1) goto L4d
            r0 = r6
            int r0 = r0.getWidth()
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L1e
            r0 = r8
            r10 = r0
            r0 = r8
            int r0 = r0.length
            r1 = r9
            if (r0 >= r1) goto L23
        L1e:
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
        L23:
            r0 = r6
            int r0 = r0.top
            r11 = r0
            r0 = r6
            int r0 = r0.dataWidth
            r12 = r0
            r0 = r6
            int r0 = r0.left
            r13 = r0
            r0 = r6
            byte[] r0 = r0.yuvData
            r1 = r7
            r2 = r11
            int r1 = r1 + r2
            r2 = r12
            int r1 = r1 * r2
            r2 = r13
            int r1 = r1 + r2
            r2 = r10
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r10
            return r0
        L4d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Requested row is outside the image: "
            r3 = r7
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.PlanarYUVLuminanceSource.getRow(int, byte[]):byte[]");
    }

    public int getThumbnailHeight() {
        return getHeight() / 2;
    }

    public int getThumbnailWidth() {
        return getWidth() / 2;
    }

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public int[] renderThumbnail() {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int[] iArr = new int[width * height];
        byte[] bArr = this.yuvData;
        int i = (this.top * this.dataWidth) + this.left;
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                iArr[(i2 * width) + i3] = ((bArr[(i3 << 1) + i] & 255) * 65793) | ViewCompat.MEASURED_STATE_MASK;
            }
            i += this.dataWidth << 1;
        }
        return iArr;
    }
}
