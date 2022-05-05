package com.asus.updatesdk.cache;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileDescriptor;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageResize.class */
public class ImageResize extends ImageWorker {

    /* renamed from: a  reason: collision with root package name */
    protected int f3166a;

    /* renamed from: b  reason: collision with root package name */
    protected int f3167b;

    public ImageResize(Context context, int i) {
        super(context);
        a(i, i);
    }

    public ImageResize(Context context, int i, int i2) {
        super(context);
        a(i, i2);
    }

    private static int a(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        int i6 = 1;
        if (i3 > i2 || i4 > i) {
            int i7 = i3 / 2;
            int i8 = i4 / 2;
            while (i7 / i6 > i2 && i8 / i6 > i) {
                i6 *= 2;
            }
            long j = (i3 * i4) / i6;
            while (true) {
                i5 = i6;
                if (j <= i * i2 * 2) {
                    break;
                }
                i6 *= 2;
                j /= 2;
            }
        }
        return i5;
    }

    private void a(int i, int i2) {
        this.f3166a = i;
        this.f3167b = i2;
    }

    @TargetApi(11)
    private static void a(BitmapFactory.Options options, ImageCache imageCache) {
        Bitmap a2;
        options.inMutable = true;
        if (imageCache != null && (a2 = imageCache.a(options)) != null) {
            options.inBitmap = a2;
        }
    }

    public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor fileDescriptor, int i, int i2, ImageCache imageCache) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inSampleSize = a(options, i, i2);
        options.inJustDecodeBounds = false;
        if (CacheUtils.hasHoneycomb()) {
            a(options, imageCache);
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    public static Bitmap decodeSampledBitmapFromFile(String str, int i, int i2, ImageCache imageCache) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = a(options, i, i2);
        if (CacheUtils.hasHoneycomb()) {
            a(options, imageCache);
        }
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    @Override // com.asus.updatesdk.cache.ImageWorker
    protected Bitmap a(Object obj, Object obj2) {
        return a(Integer.valueOf(Integer.parseInt(String.valueOf(obj))), Integer.valueOf(Integer.parseInt(String.valueOf(obj2))));
    }
}
