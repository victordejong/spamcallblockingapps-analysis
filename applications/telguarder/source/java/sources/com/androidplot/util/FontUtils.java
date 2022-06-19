package com.androidplot.util;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
/* loaded from: classes-dex2jar.jar:com/androidplot/util/FontUtils.class */
public class FontUtils {
    private static final int ZERO = 0;

    public static void drawTextVerticallyCentered(Canvas canvas, String str, float f, float f2, Paint paint) {
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, f, f2 - rect.exactCenterY(), paint);
    }

    public static float getFontHeight(Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return (-fontMetrics.ascent) + fontMetrics.descent;
    }

    public static Rect getPackedStringDimensions(String str, Paint paint) {
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect;
    }

    public static Rect getStringDimensions(String str, Paint paint) {
        Rect rect = new Rect();
        if (str == null || str.length() == 0) {
            return null;
        }
        paint.getTextBounds(str, 0, str.length(), rect);
        rect.bottom = rect.top + ((int) getFontHeight(paint));
        return rect;
    }
}
