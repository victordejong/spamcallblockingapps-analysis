package com.asus.laterhandle;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/a.class */
public final class a {
    public static Bitmap a(Context context, Bitmap bitmap) {
        int round;
        int i;
        context.getResources();
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        int max = Math.max(height, width);
        Bitmap bitmap2 = bitmap;
        if (max > 300) {
            if (max == height) {
                i = Math.round(width / (height / 300.0f));
                round = 300;
            } else {
                round = Math.round(height / (width / 300.0f));
                i = 300;
            }
            Log.i("AsusTask_DoItLater_BitmapUtil", "Bitmap will resizeToHeight: " + round + ", resizeToWidth: " + i);
            bitmap2 = Bitmap.createScaledBitmap(bitmap, i, round, true);
        }
        return bitmap2;
    }
}
