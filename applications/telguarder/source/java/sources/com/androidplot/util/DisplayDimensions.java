package com.androidplot.util;

import android.graphics.RectF;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/DisplayDimensions.class */
public class DisplayDimensions {
    private static final int ONE = 1;
    private static final RectF initRect = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
    public final RectF canvasRect;
    public final RectF marginatedRect;
    public final RectF paddedRect;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DisplayDimensions() {
        /*
            r5 = this;
            android.graphics.RectF r0 = com.androidplot.util.DisplayDimensions.initRect
            r6 = r0
            r0 = r5
            r1 = r6
            r2 = r6
            r3 = r6
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidplot.util.DisplayDimensions.<init>():void");
    }

    public DisplayDimensions(RectF rectF, RectF rectF2, RectF rectF3) {
        this.canvasRect = rectF;
        this.marginatedRect = rectF2;
        this.paddedRect = rectF3;
    }
}
