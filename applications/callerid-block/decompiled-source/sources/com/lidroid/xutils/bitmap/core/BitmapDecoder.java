package com.lidroid.xutils.bitmap.core;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.FileDescriptor;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/bitmap/core/BitmapDecoder.class */
public class BitmapDecoder {
    private static final Object lock = new Object();

    private BitmapDecoder() {
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3;
        float f;
        float f2;
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        if (i5 > i || i4 > i2) {
            if (i5 > i4) {
                f2 = i4;
                f = i2;
            } else {
                f2 = i5;
                f = i;
            }
            i3 = Math.round(f2 / f);
            float f3 = i5 * i4;
            float f4 = i * i2 * 2;
            while (f3 / (i3 * i3) > f4) {
                i3++;
            }
        } else {
            i3 = 1;
        }
        return i3;
    }

    public static Bitmap decodeByteArray(byte[] bArr) {
        Bitmap decodeByteArray;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }
        return decodeByteArray;
    }

    public static Bitmap decodeFile(String str) {
        Bitmap decodeFile;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            decodeFile = BitmapFactory.decodeFile(str, options);
        }
        return decodeFile;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        Bitmap decodeFileDescriptor;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }
        return decodeFileDescriptor;
    }

    public static Bitmap decodeResource(Resources resources, int i) {
        Bitmap decodeResource;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            decodeResource = BitmapFactory.decodeResource(resources, i, options);
        }
        return decodeResource;
    }

    public static Bitmap decodeSampledBitmapFromByteArray(byte[] bArr, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap decodeByteArray;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        }
        return decodeByteArray;
    }

    public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor fileDescriptor, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap decodeFileDescriptor;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }
        return decodeFileDescriptor;
    }

    public static Bitmap decodeSampledBitmapFromFile(String str, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap decodeFile;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            decodeFile = BitmapFactory.decodeFile(str, options);
        }
        return decodeFile;
    }

    public static Bitmap decodeSampledBitmapFromResource(Resources resources, int i, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap decodeResource;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeResource(resources, i, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            decodeResource = BitmapFactory.decodeResource(resources, i, options);
        }
        return decodeResource;
    }
}
