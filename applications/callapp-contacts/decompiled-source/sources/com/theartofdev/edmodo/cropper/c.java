package com.theartofdev.edmodo.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Rect f35051a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    static final RectF f35052b = new RectF();

    /* renamed from: c  reason: collision with root package name */
    static final RectF f35053c = new RectF();

    /* renamed from: d  reason: collision with root package name */
    static final float[] f35054d = new float[6];
    static final float[] e = new float[6];
    static Pair<String, WeakReference<Bitmap>> f;
    private static int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f35055a;

        /* renamed from: b  reason: collision with root package name */
        final int f35056b;

        a(Bitmap bitmap, int i) {
            this.f35055a = bitmap;
            this.f35056b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f35057a;

        /* renamed from: b  reason: collision with root package name */
        final int f35058b;

        b(Bitmap bitmap, int i) {
            this.f35057a = bitmap;
            this.f35058b = i;
        }
    }

    c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float a(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    private static int a() {
        int i = 2048;
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            egl10.eglInitialize(eglGetDisplay, new int[2]);
            int[] iArr = new int[1];
            egl10.eglGetConfigs(eglGetDisplay, null, 0, iArr);
            EGLConfig[] eGLConfigArr = new EGLConfig[iArr[0]];
            egl10.eglGetConfigs(eglGetDisplay, eGLConfigArr, iArr[0], iArr);
            int[] iArr2 = new int[1];
            int i2 = 0;
            for (int i3 = 0; i3 < iArr[0]; i3++) {
                egl10.eglGetConfigAttrib(eglGetDisplay, eGLConfigArr[i3], 12332, iArr2);
                i2 = i2;
                if (i2 < iArr2[0]) {
                    i2 = iArr2[0];
                }
            }
            egl10.eglTerminate(eglGetDisplay);
            i = Math.max(i2, 2048);
        } catch (Exception e2) {
        }
        return i;
    }

    private static int a(int i, int i2) {
        if (g == 0) {
            g = a();
        }
        int i3 = 1;
        int i4 = 1;
        if (g > 0) {
            while (true) {
                int i5 = i2 / i4;
                int i6 = g;
                if (i5 <= i6) {
                    i3 = i4;
                    if (i / i4 <= i6) {
                        break;
                    }
                }
                i4 *= 2;
            }
        }
        return i3;
    }

    private static int a(int i, int i2, int i3, int i4) {
        int i5 = 1;
        int i6 = 1;
        if (i2 <= i4) {
            if (i > i3) {
                i6 = 1;
            }
            return i5;
        }
        while (true) {
            i5 = i6;
            if ((i2 / 2) / i6 <= i4) {
                break;
            }
            i5 = i6;
            if ((i / 2) / i6 <= i3) {
                break;
            }
            i6 *= 2;
        }
        return i5;
    }

    /* JADX WARN: Finally extract failed */
    private static Bitmap a(ContentResolver contentResolver, Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        do {
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                try {
                    InputStream openInputStream = contentResolver.openInputStream(uri);
                    inputStream2 = openInputStream;
                    inputStream = openInputStream;
                    Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, f35051a, options);
                    a(openInputStream);
                    return decodeStream;
                } catch (OutOfMemoryError e2) {
                    options.inSampleSize *= 2;
                    a(inputStream);
                    if (options.inSampleSize > 512) {
                        throw new RuntimeException("Failed to decode image: ".concat(String.valueOf(uri)));
                    }
                }
            } catch (Throwable th) {
                a(inputStream2);
                throw th;
            }
        } while (options.inSampleSize > 512);
        throw new RuntimeException("Failed to decode image: ".concat(String.valueOf(uri)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bitmap a(Bitmap bitmap, int i, int i2, CropImageView.i iVar) {
        if (i > 0 && i2 > 0) {
            try {
                if (iVar == CropImageView.i.RESIZE_FIT || iVar == CropImageView.i.RESIZE_INSIDE || iVar == CropImageView.i.RESIZE_EXACT) {
                    Bitmap bitmap2 = null;
                    if (iVar == CropImageView.i.RESIZE_EXACT) {
                        bitmap2 = Bitmap.createScaledBitmap(bitmap, i, i2, false);
                    } else {
                        float width = bitmap.getWidth();
                        float f2 = width / i;
                        float height = bitmap.getHeight();
                        float max = Math.max(f2, height / i2);
                        if (max > 1.0f || iVar == CropImageView.i.RESIZE_FIT) {
                            bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) (width / max), (int) (height / max), false);
                        }
                    }
                    if (bitmap2 != null) {
                        if (bitmap2 != bitmap) {
                            bitmap.recycle();
                        }
                        return bitmap2;
                    }
                }
            } catch (Exception e2) {
                Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", e2);
            }
        }
        return bitmap;
    }

    private static Bitmap a(Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, float f2, boolean z2, boolean z3) {
        Rect a2 = a(fArr, bitmap.getWidth(), bitmap.getHeight(), z, i2, i3);
        Matrix matrix = new Matrix();
        matrix.setRotate(i, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        float f3 = z2 ? -f2 : f2;
        float f4 = f2;
        if (z3) {
            f4 = -f2;
        }
        matrix.postScale(f3, f4);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, a2.left, a2.top, a2.width(), a2.height(), matrix, true);
        Bitmap bitmap2 = createBitmap;
        if (createBitmap == bitmap) {
            bitmap2 = bitmap.copy(bitmap.getConfig(), false);
        }
        Bitmap bitmap3 = bitmap2;
        if (i % 90 != 0) {
            bitmap3 = a(bitmap2, fArr, a2, i, z, i2, i3);
        }
        return bitmap3;
    }

    private static Bitmap a(Bitmap bitmap, float[] fArr, Rect rect, int i, boolean z, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        Bitmap bitmap2 = bitmap;
        if (i % 90 != 0) {
            double radians = Math.toRadians(i);
            int i7 = (i < 90 || (i > 180 && i < 270)) ? rect.left : rect.right;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (i9 < fArr.length) {
                    if (fArr[i9] >= i7 - 1 && fArr[i9] <= i7 + 1) {
                        int i10 = i9 + 1;
                        i8 = (int) Math.abs(Math.sin(radians) * (rect.bottom - fArr[i10]));
                        i5 = (int) Math.abs(Math.cos(radians) * (fArr[i10] - rect.top));
                        i6 = (int) Math.abs((fArr[i10] - rect.top) / Math.sin(radians));
                        i4 = (int) Math.abs((rect.bottom - fArr[i10]) / Math.cos(radians));
                        break;
                    }
                    i9 += 2;
                } else {
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    break;
                }
            }
            rect.set(i8, i5, i6 + i8, i4 + i5);
            if (z) {
                a(rect, i2, i3);
            }
            bitmap2 = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
            if (bitmap != bitmap2) {
                bitmap.recycle();
            }
        }
        return bitmap2;
    }

    private static BitmapFactory.Options a(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = contentResolver.openInputStream(uri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStream, f35051a, options);
                options.inJustDecodeBounds = false;
                a(inputStream);
                return options;
            } catch (Throwable th2) {
                th = th2;
                a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Rect a(float[] fArr, int i, int i2, boolean z, int i3, int i4) {
        Rect rect = new Rect(Math.round(Math.max((float) BitmapDescriptorFactory.HUE_RED, a(fArr))), Math.round(Math.max((float) BitmapDescriptorFactory.HUE_RED, b(fArr))), Math.round(Math.min(i, c(fArr))), Math.round(Math.min(i2, d(fArr))));
        if (z) {
            a(rect, i3, i4);
        }
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(Context context, Bitmap bitmap, Uri uri) {
        Uri uri2;
        boolean z = true;
        try {
            if (uri == null) {
                uri2 = Uri.fromFile(File.createTempFile("aic_state_store_temp", ".jpg", context.getCacheDir()));
            } else {
                uri2 = uri;
                if (new File(uri.getPath()).exists()) {
                    z = false;
                    uri2 = uri;
                }
            }
            if (z) {
                a(context, bitmap, uri2, Bitmap.CompressFormat.JPEG, 95);
            }
            return uri2;
        } catch (Exception e2) {
            Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, Uri uri, int i, int i2) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            BitmapFactory.Options a2 = a(contentResolver, uri);
            if (a2.outWidth == -1 && a2.outHeight == -1) {
                throw new RuntimeException("File is not a picture");
            }
            a2.inSampleSize = Math.max(a(a2.outWidth, a2.outHeight, i, i2), a(a2.outWidth, a2.outHeight));
            return new a(a(contentResolver, uri, a2), a2.inSampleSize);
        } catch (Exception e2) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e2.getMessage(), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.theartofdev.edmodo.cropper.c.a a(android.content.Context r7, android.net.Uri r8, android.graphics.Rect r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.c.a(android.content.Context, android.net.Uri, android.graphics.Rect, int, int, int):com.theartofdev.edmodo.cropper.c$a");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, Uri uri, float[] fArr, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, boolean z2, boolean z3) {
        int i8 = 1;
        do {
            try {
                return a(context, uri, fArr, i, i2, i3, z, i4, i5, i6, i7, z2, z3, i8);
            } catch (OutOfMemoryError e2) {
                i8 *= 2;
                if (i8 > 16) {
                    throw new RuntimeException("Failed to handle OOM by sampling (" + i8 + "): " + uri + "\r\n" + e2.getMessage(), e2);
                }
            }
        } while (i8 > 16);
        throw new RuntimeException("Failed to handle OOM by sampling (" + i8 + "): " + uri + "\r\n" + e2.getMessage(), e2);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.theartofdev.edmodo.cropper.c.a a(android.content.Context r14, android.net.Uri r15, float[] r16, int r17, int r18, int r19, boolean r20, int r21, int r22, int r23, int r24, boolean r25, boolean r26, int r27) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.c.a(android.content.Context, android.net.Uri, float[], int, int, int, boolean, int, int, int, int, boolean, boolean, int):com.theartofdev.edmodo.cropper.c$a");
    }

    private static a a(Context context, Uri uri, float[] fArr, int i, boolean z, int i2, int i3, int i4, Rect rect, int i5, int i6, boolean z2, boolean z3) {
        Bitmap bitmap = null;
        Bitmap bitmap2 = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int a2 = a(rect.width(), rect.height(), i5, i6) * i4;
            options.inSampleSize = a2;
            Bitmap a3 = a(context.getContentResolver(), uri, options);
            if (a3 != null) {
                try {
                    int length = fArr.length;
                    float[] fArr2 = new float[length];
                    System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                    for (int i7 = 0; i7 < length; i7++) {
                        fArr2[i7] = fArr2[i7] / options.inSampleSize;
                    }
                    Bitmap a4 = a(a3, fArr2, i, z, i2, i3, 1.0f, z2, z3);
                    bitmap2 = a4;
                    if (a4 != a3) {
                        a3.recycle();
                        bitmap2 = a4;
                    }
                } catch (Throwable th) {
                    if (a3 != null) {
                        a3.recycle();
                    }
                    throw th;
                }
            }
            return new a(bitmap2, a2);
        } catch (Exception e2) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e2.getMessage(), e2);
        } catch (OutOfMemoryError e3) {
            if (0 != 0) {
                bitmap.recycle();
            }
            throw e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, boolean z2, boolean z3) {
        int i4 = 1;
        do {
            try {
                return new a(a(bitmap, fArr, i, z, i2, i3, 1.0f / i4, z2, z3), i4);
            } catch (OutOfMemoryError e2) {
                i4 *= 2;
                if (i4 > 8) {
                    throw e2;
                }
            }
        } while (i4 > 8);
        throw e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(Bitmap bitmap, Context context, Uri uri) {
        androidx.f.a.a aVar;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            aVar = null;
            if (openInputStream != null) {
                aVar = new androidx.f.a.a(openInputStream);
                try {
                    openInputStream.close();
                } catch (Exception e2) {
                }
            }
        } catch (Exception e3) {
            aVar = null;
        }
        return aVar != null ? a(bitmap, aVar) : new b(bitmap, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(Bitmap bitmap, androidx.f.a.a aVar) {
        int a2 = aVar.a("Orientation");
        return new b(bitmap, a2 != 3 ? a2 != 6 ? a2 != 8 ? 0 : 270 : 90 : 180);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, Bitmap bitmap, Uri uri, Bitmap.CompressFormat compressFormat, int i) throws FileNotFoundException {
        OutputStream outputStream = null;
        try {
            outputStream = context.getContentResolver().openOutputStream(uri);
            outputStream = outputStream;
            bitmap.compress(compressFormat, i, outputStream);
        } finally {
            a(outputStream);
        }
    }

    private static void a(Rect rect, int i, int i2) {
        if (i == i2 && rect.width() != rect.height()) {
            if (rect.height() > rect.width()) {
                rect.bottom -= rect.height() - rect.width();
            } else {
                rect.right -= rect.width() - rect.height();
            }
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float b(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float c(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float e(float[] fArr) {
        return c(fArr) - a(fArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float f(float[] fArr) {
        return d(fArr) - b(fArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(float[] fArr) {
        return (c(fArr) + a(fArr)) / 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float h(float[] fArr) {
        return (d(fArr) + b(fArr)) / 2.0f;
    }
}
