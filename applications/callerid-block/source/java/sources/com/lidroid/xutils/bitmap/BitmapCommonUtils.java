package com.lidroid.xutils.bitmap;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/BitmapCommonUtils.class */
public class BitmapCommonUtils {
    private static BitmapSize screenSize;

    private BitmapCommonUtils() {
    }

    private static int getImageViewFieldValue(Object obj, String str) {
        int i = 0;
        if (obj instanceof ImageView) {
            try {
                Field declaredField = ImageView.class.getDeclaredField(str);
                declaredField.setAccessible(true);
                int intValue = ((Integer) declaredField.get(obj)).intValue();
                i = 0;
                if (intValue > 0) {
                    i = 0;
                    if (intValue < Integer.MAX_VALUE) {
                        i = intValue;
                    }
                }
            } catch (Throwable th) {
                i = 0;
            }
        }
        return i;
    }

    public static BitmapSize getScreenSize(Context context) {
        if (screenSize == null) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            screenSize = new BitmapSize(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        return screenSize;
    }

    public static BitmapSize optimizeMaxSizeByView(View view, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i3 = i;
            int i4 = i2;
            if (layoutParams != null) {
                int i5 = layoutParams.width;
                if (i5 > 0) {
                    i = i5;
                } else if (i5 != -2) {
                    i = view.getWidth();
                }
                int i6 = layoutParams.height;
                if (i6 > 0) {
                    i4 = i6;
                    i3 = i;
                } else {
                    i3 = i;
                    i4 = i2;
                    if (i6 != -2) {
                        i4 = view.getHeight();
                        i3 = i;
                    }
                }
            }
            int i7 = i3;
            if (i3 <= 0) {
                i7 = getImageViewFieldValue(view, "mMaxWidth");
            }
            int i8 = i4;
            if (i4 <= 0) {
                i8 = getImageViewFieldValue(view, "mMaxHeight");
            }
            BitmapSize screenSize2 = getScreenSize(view.getContext());
            int i9 = i7;
            if (i7 <= 0) {
                i9 = screenSize2.getWidth();
            }
            int i10 = i8;
            if (i8 <= 0) {
                i10 = screenSize2.getHeight();
            }
            return new BitmapSize(i9, i10);
        }
        return new BitmapSize(i, i2);
    }
}
