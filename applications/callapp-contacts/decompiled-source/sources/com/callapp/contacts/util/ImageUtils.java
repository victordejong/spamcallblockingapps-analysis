package com.callapp.contacts.util;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.widget.ImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.wearable.WearableClientHandler;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ImageUtils.class */
public class ImageUtils {

    /* renamed from: a  reason: collision with root package name */
    private static TypedArray f15888a;

    private static int a(BitmapFactory.Options options, int i, int i2) {
        int i3;
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        if (i4 > i2 || i5 > i) {
            int i6 = 2;
            int i7 = i4 / 2;
            int i8 = i5 / 2;
            while (i7 / i6 >= i2 && i8 / i6 >= i) {
                i6 *= 2;
            }
            i3 = i6;
        } else {
            i3 = 1;
        }
        return i3;
    }

    public static Bitmap a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, 400, 400, false);
    }

    public static Bitmap a(Bitmap bitmap, String str) {
        float f = CallAppApplication.get().getResources().getDisplayMetrics().density;
        Bitmap.Config config = bitmap.getConfig();
        Bitmap.Config config2 = config;
        if (config == null) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        Bitmap copy = bitmap.copy(config2, true);
        Canvas canvas = new Canvas(copy);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setTextSize((int) (f * 14.0f));
        paint.setShadowLayer(1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -1);
        Rect rect = new Rect();
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, (copy.getWidth() - rect.width()) / 3, (copy.getHeight() + rect.height()) / 3, paint);
        return copy;
    }

    private static Bitmap a(File file, float f, float f2) throws IOException {
        Bitmap bitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int i = options.outHeight;
        int i2 = options.outWidth;
        float f3 = i2;
        float f4 = i;
        float f5 = f3 / f4;
        if (f4 > 10240.0f || f3 > 1024.0f) {
            if (f5 < 0.1f) {
                i2 = (int) ((10240.0f / f4) * f3);
                i = 10240;
            } else {
                i = f5 > 0.1f ? (int) ((1024.0f / f3) * f4) : 10240;
                i2 = 1024;
            }
        }
        options.inSampleSize = a(options, i2, i);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inTempStorage = new byte[16384];
        try {
            decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        try {
            bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap = null;
        }
        float f6 = i2;
        float f7 = f6 / options.outWidth;
        float f8 = i;
        float f9 = f8 / options.outHeight;
        float f10 = f6 / 2.0f;
        float f11 = f8 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f7, f9, f10, f11);
        Bitmap bitmap2 = bitmap;
        if (bitmap != null) {
            bitmap2 = bitmap;
            if (decodeFile != null) {
                Canvas canvas = new Canvas(bitmap);
                canvas.setMatrix(matrix);
                canvas.drawBitmap(decodeFile, f10 - (decodeFile.getWidth() / 2), f11 - (decodeFile.getHeight() / 2), new Paint(2));
                decodeFile.recycle();
                try {
                    int attributeInt = new ExifInterface(file.getAbsolutePath()).getAttributeInt("Orientation", 0);
                    Matrix matrix2 = new Matrix();
                    if (attributeInt == 6) {
                        matrix2.postRotate(90.0f);
                    } else if (attributeInt == 3) {
                        matrix2.postRotate(180.0f);
                    } else if (attributeInt == 8) {
                        matrix2.postRotate(270.0f);
                    }
                    bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
                } catch (IOException e3) {
                    CLog.a(ImageUtils.class, e3);
                    bitmap2 = bitmap;
                }
            }
        }
        return bitmap2;
    }

    public static Bitmap a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inMutable = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap a(String str) {
        CLog.a(ImageUtils.class, String.format("FILEOP decoding image with path %s", str));
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inMutable = true;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        return BitmapFactory.decodeFile(str, options);
    }

    public static File a(Bitmap bitmap, String str, String str2) {
        File file;
        IOException e;
        if (bitmap == null) {
            return null;
        }
        String str3 = str2;
        try {
            if (StringUtils.a((CharSequence) str2)) {
                str3 = StringUtils.a(10, true).toLowerCase() + ".jpg";
            }
            if (StringUtils.b((CharSequence) str)) {
                file = IoUtils.a(str + "/" + str3);
            } else {
                file = IoUtils.a(str3);
            }
            if (file == null) {
                return null;
            }
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                bitmap.compress(Bitmap.CompressFormat.PNG, 80, bufferedOutputStream);
                bufferedOutputStream.close();
                return file;
            } catch (IOException e2) {
                e = e2;
                CLog.a(ImageUtils.class, e);
                if (file == null) {
                    return null;
                }
                file.delete();
                return null;
            }
        } catch (IOException e3) {
            e = e3;
            file = null;
        }
    }

    public static File a(File file, Bitmap.CompressFormat compressFormat, String str) throws IOException {
        Throwable th;
        File parentFile = new File(str).getParentFile();
        if (parentFile != null) {
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    a(file, 1024.0f, 10240.0f).compress(compressFormat, 100, fileOutputStream2);
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return new File(str);
    }

    public static void a(ImageView imageView) {
        if (imageView != null) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(BitmapDescriptorFactory.HUE_RED);
            imageView.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            imageView.setAlpha(0.5f);
        }
    }

    public static void a(ImageView imageView, int i) {
        b(imageView, i, null);
    }

    public static void a(ImageView imageView, int i, ColorFilter colorFilter) {
        b(imageView, i, colorFilter);
    }

    public static void a(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
    }

    public static Bitmap b(String str) {
        return a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131232124), str);
    }

    private static void b(ImageView imageView, int i, ColorFilter colorFilter) {
        if (colorFilter != null) {
            imageView.setColorFilter(colorFilter);
        } else {
            imageView.clearColorFilter();
        }
        imageView.setImageResource(i);
    }

    public static byte[] b(Bitmap bitmap) {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 20, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e) {
                CLog.a(WearableClientHandler.class, "ByteArrayOutputStream was not closed");
            }
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    CLog.a(WearableClientHandler.class, "ByteArrayOutputStream was not closed");
                }
            }
            throw th;
        }
    }

    public static TypedArray getInitialsColors() {
        TypedArray typedArray;
        synchronized (ImageUtils.class) {
            try {
                if (f15888a == null) {
                    f15888a = CallAppApplication.get().getResources().obtainTypedArray(2130903052);
                }
                typedArray = f15888a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return typedArray;
    }

    public static String getResourceUri(int i) {
        return "android.resource://" + CallAppApplication.get().getPackageName() + "/" + i;
    }

    public static Uri getUriToDrawable(int i) {
        return Uri.parse("android.resource://" + CallAppApplication.get().getResources().getResourcePackageName(i) + '/' + CallAppApplication.get().getResources().getResourceTypeName(i) + '/' + CallAppApplication.get().getResources().getResourceEntryName(i));
    }
}
