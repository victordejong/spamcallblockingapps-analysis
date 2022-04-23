package net.pubnative.lite.sdk.vpaid.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/utils/ImageUtils.class */
public class ImageUtils {
    private static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        int i6 = 1;
        if (i3 > i2 || i4 > i) {
            int i7 = i3 / 2;
            int i8 = i4 / 2;
            while (true) {
                i5 = i6;
                if (i7 / i6 <= i2) {
                    break;
                }
                i5 = i6;
                if (i8 / i6 <= i) {
                    break;
                }
                i6 *= 2;
            }
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decodeSampledBitmap(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static void setScaledImage(final ImageView imageView, final String str) {
        imageView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: net.pubnative.lite.sdk.vpaid.utils.ImageUtils.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                imageView.getViewTreeObserver().removeOnPreDrawListener(this);
                int measuredHeight = imageView.getMeasuredHeight();
                imageView.setImageBitmap(ImageUtils.decodeSampledBitmap(str, imageView.getMeasuredWidth(), measuredHeight));
                return true;
            }
        });
    }
}
