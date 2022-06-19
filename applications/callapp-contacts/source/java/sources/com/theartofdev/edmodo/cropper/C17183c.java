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
import androidx.p044f.p045a.C1022a;
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
/* renamed from: com.theartofdev.edmodo.cropper.c */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c.class */
public final class C17183c {

    /* renamed from: a */
    static final Rect f60854a = new Rect();

    /* renamed from: b */
    static final RectF f60855b = new RectF();

    /* renamed from: c */
    static final RectF f60856c = new RectF();

    /* renamed from: d */
    static final float[] f60857d = new float[6];

    /* renamed from: e */
    static final float[] f60858e = new float[6];

    /* renamed from: f */
    static Pair<String, WeakReference<Bitmap>> f60859f;

    /* renamed from: g */
    private static int f60860g;

    /* renamed from: com.theartofdev.edmodo.cropper.c$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c$a.class */
    public static final class C17184a {

        /* renamed from: a */
        public final Bitmap f60861a;

        /* renamed from: b */
        final int f60862b;

        C17184a(Bitmap bitmap, int i) {
            this.f60861a = bitmap;
            this.f60862b = i;
        }
    }

    /* renamed from: com.theartofdev.edmodo.cropper.c$b */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/c$b.class */
    public static final class C17185b {

        /* renamed from: a */
        public final Bitmap f60863a;

        /* renamed from: b */
        final int f60864b;

        C17185b(Bitmap bitmap, int i) {
            this.f60863a = bitmap;
            this.f60864b = i;
        }
    }

    C17183c() {
    }

    /* renamed from: a */
    public static float m5761a(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    /* renamed from: a */
    private static int m5781a() {
        int i;
        int i2;
        try {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            egl10.eglInitialize(eglGetDisplay, new int[2]);
            int[] iArr = new int[1];
            egl10.eglGetConfigs(eglGetDisplay, null, 0, iArr);
            EGLConfig[] eGLConfigArr = new EGLConfig[iArr[0]];
            egl10.eglGetConfigs(eglGetDisplay, eGLConfigArr, iArr[0], iArr);
            int[] iArr2 = new int[1];
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i2 = i4;
                if (i3 >= iArr[0]) {
                    break;
                }
                egl10.eglGetConfigAttrib(eglGetDisplay, eGLConfigArr[i3], 12332, iArr2);
                int i5 = i2;
                if (i2 < iArr2[0]) {
                    i5 = iArr2[0];
                }
                i3++;
                i4 = i5;
            }
            egl10.eglTerminate(eglGetDisplay);
            i = Math.max(i2, 2048);
        } catch (Exception e) {
            i = 2048;
        }
        return i;
    }

    /* renamed from: a */
    private static int m5780a(int i, int i2) {
        if (f60860g == 0) {
            f60860g = m5781a();
        }
        int i3 = 1;
        int i4 = 1;
        if (f60860g > 0) {
            while (true) {
                int i5 = i2 / i4;
                int i6 = f60860g;
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

    /* renamed from: a */
    private static int m5779a(int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    private static Bitmap m5777a(ContentResolver contentResolver, Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        do {
            InputStream inputStream = null;
            InputStream inputStream2 = null;
            try {
                try {
                    InputStream openInputStream = contentResolver.openInputStream(uri);
                    inputStream2 = openInputStream;
                    inputStream = openInputStream;
                    Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, f60854a, options);
                    m5762a(openInputStream);
                    return decodeStream;
                } catch (OutOfMemoryError e) {
                    options.inSampleSize *= 2;
                    m5762a(inputStream);
                    if (options.inSampleSize > 512) {
                        throw new RuntimeException("Failed to decode image: ".concat(String.valueOf(uri)));
                    }
                }
            } catch (Throwable th) {
                m5762a(inputStream2);
                throw th;
            }
        } while (options.inSampleSize > 512);
        throw new RuntimeException("Failed to decode image: ".concat(String.valueOf(uri)));
    }

    /* renamed from: a */
    public static Bitmap m5769a(Bitmap bitmap, int i, int i2, CropImageView.EnumC17174i enumC17174i) {
        if (i > 0 && i2 > 0) {
            try {
                if (enumC17174i == CropImageView.EnumC17174i.RESIZE_FIT || enumC17174i == CropImageView.EnumC17174i.RESIZE_INSIDE || enumC17174i == CropImageView.EnumC17174i.RESIZE_EXACT) {
                    Bitmap bitmap2 = null;
                    if (enumC17174i == CropImageView.EnumC17174i.RESIZE_EXACT) {
                        bitmap2 = Bitmap.createScaledBitmap(bitmap, i, i2, false);
                    } else {
                        float width = bitmap.getWidth();
                        float f = width / i;
                        float height = bitmap.getHeight();
                        float max = Math.max(f, height / i2);
                        if (max > 1.0f || enumC17174i == CropImageView.EnumC17174i.RESIZE_FIT) {
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
            } catch (Exception e) {
                Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", e);
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    private static Bitmap m5766a(Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, float f, boolean z2, boolean z3) {
        Rect m5760a = m5760a(fArr, bitmap.getWidth(), bitmap.getHeight(), z, i2, i3);
        Matrix matrix = new Matrix();
        matrix.setRotate(i, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        float f2 = z2 ? -f : f;
        float f3 = f;
        if (z3) {
            f3 = -f;
        }
        matrix.postScale(f2, f3);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, m5760a.left, m5760a.top, m5760a.width(), m5760a.height(), matrix, true);
        Bitmap bitmap2 = createBitmap;
        if (createBitmap == bitmap) {
            bitmap2 = bitmap.copy(bitmap.getConfig(), false);
        }
        Bitmap bitmap3 = bitmap2;
        if (i % 90 != 0) {
            bitmap3 = m5764a(bitmap2, fArr, m5760a, i, z, i2, i3);
        }
        return bitmap3;
    }

    /* renamed from: a */
    private static Bitmap m5764a(Bitmap bitmap, float[] fArr, Rect rect, int i, boolean z, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        Bitmap bitmap2 = bitmap;
        if (i % 90 != 0) {
            double radians = Math.toRadians(i);
            int i8 = (i < 90 || (i > 180 && i < 270)) ? rect.left : rect.right;
            int i9 = 0;
            while (true) {
                if (i9 >= fArr.length) {
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                    break;
                } else if (fArr[i9] >= i8 - 1 && fArr[i9] <= i8 + 1) {
                    int i10 = i9 + 1;
                    i7 = (int) Math.abs(Math.sin(radians) * (rect.bottom - fArr[i10]));
                    i5 = (int) Math.abs(Math.cos(radians) * (fArr[i10] - rect.top));
                    i6 = (int) Math.abs((fArr[i10] - rect.top) / Math.sin(radians));
                    i4 = (int) Math.abs((rect.bottom - fArr[i10]) / Math.cos(radians));
                    break;
                } else {
                    i9 += 2;
                }
            }
            rect.set(i7, i5, i6 + i7, i4 + i5);
            if (z) {
                m5763a(rect, i2, i3);
            }
            bitmap2 = Bitmap.createBitmap(bitmap, rect.left, rect.top, rect.width(), rect.height());
            if (bitmap != bitmap2) {
                bitmap.recycle();
            }
        }
        return bitmap2;
    }

    /* renamed from: a */
    private static BitmapFactory.Options m5778a(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = contentResolver.openInputStream(uri);
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeStream(inputStream, f60854a, options);
                options.inJustDecodeBounds = false;
                m5762a(inputStream);
                return options;
            } catch (Throwable th2) {
                th = th2;
                m5762a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: a */
    public static Rect m5760a(float[] fArr, int i, int i2, boolean z, int i3, int i4) {
        Rect rect = new Rect(Math.round(Math.max((float) BitmapDescriptorFactory.HUE_RED, m5761a(fArr))), Math.round(Math.max((float) BitmapDescriptorFactory.HUE_RED, m5759b(fArr))), Math.round(Math.min(i, m5758c(fArr))), Math.round(Math.min(i2, m5757d(fArr))));
        if (z) {
            m5763a(rect, i3, i4);
        }
        return rect;
    }

    /* renamed from: a */
    public static Uri m5776a(Context context, Bitmap bitmap, Uri uri) {
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
                m5775a(context, bitmap, uri2, Bitmap.CompressFormat.JPEG, 95);
            }
            return uri2;
        } catch (Exception e) {
            Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", e);
            return null;
        }
    }

    /* renamed from: a */
    public static C17184a m5774a(Context context, Uri uri, int i, int i2) {
        try {
            ContentResolver contentResolver = context.getContentResolver();
            BitmapFactory.Options m5778a = m5778a(contentResolver, uri);
            if (m5778a.outWidth == -1 && m5778a.outHeight == -1) {
                throw new RuntimeException("File is not a picture");
            }
            m5778a.inSampleSize = Math.max(m5779a(m5778a.outWidth, m5778a.outHeight, i, i2), m5780a(m5778a.outWidth, m5778a.outHeight));
            return new C17184a(m5777a(contentResolver, uri, m5778a), m5778a.inSampleSize);
        } catch (Exception e) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e.getMessage(), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0107  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.theartofdev.edmodo.cropper.C17183c.C17184a m5773a(android.content.Context r7, android.net.Uri r8, android.graphics.Rect r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.C17183c.m5773a(android.content.Context, android.net.Uri, android.graphics.Rect, int, int, int):com.theartofdev.edmodo.cropper.c$a");
    }

    /* renamed from: a */
    public static C17184a m5772a(Context context, Uri uri, float[] fArr, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, boolean z2, boolean z3) {
        int i8 = 1;
        do {
            try {
                return m5771a(context, uri, fArr, i, i2, i3, z, i4, i5, i6, i7, z2, z3, i8);
            } catch (OutOfMemoryError e) {
                i8 *= 2;
                if (i8 > 16) {
                    throw new RuntimeException("Failed to handle OOM by sampling (" + i8 + "): " + uri + "\r\n" + e.getMessage(), e);
                }
            }
        } while (i8 > 16);
        throw new RuntimeException("Failed to handle OOM by sampling (" + i8 + "): " + uri + "\r\n" + e.getMessage(), e);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0117  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.theartofdev.edmodo.cropper.C17183c.C17184a m5771a(android.content.Context r14, android.net.Uri r15, float[] r16, int r17, int r18, int r19, boolean r20, int r21, int r22, int r23, int r24, boolean r25, boolean r26, int r27) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.C17183c.m5771a(android.content.Context, android.net.Uri, float[], int, int, int, boolean, int, int, int, int, boolean, boolean, int):com.theartofdev.edmodo.cropper.c$a");
    }

    /* renamed from: a */
    private static C17184a m5770a(Context context, Uri uri, float[] fArr, int i, boolean z, int i2, int i3, int i4, Rect rect, int i5, int i6, boolean z2, boolean z3) {
        Bitmap bitmap = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int m5779a = m5779a(rect.width(), rect.height(), i5, i6) * i4;
            options.inSampleSize = m5779a;
            Bitmap m5777a = m5777a(context.getContentResolver(), uri, options);
            Bitmap bitmap2 = null;
            if (m5777a != null) {
                try {
                    int length = fArr.length;
                    float[] fArr2 = new float[length];
                    System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                    for (int i7 = 0; i7 < length; i7++) {
                        fArr2[i7] = fArr2[i7] / options.inSampleSize;
                    }
                    Bitmap m5766a = m5766a(m5777a, fArr2, i, z, i2, i3, 1.0f, z2, z3);
                    bitmap2 = m5766a;
                    if (m5766a != m5777a) {
                        m5777a.recycle();
                        bitmap2 = m5766a;
                    }
                } catch (Throwable th) {
                    if (m5777a != null) {
                        m5777a.recycle();
                    }
                    throw th;
                }
            }
            return new C17184a(bitmap2, m5779a);
        } catch (Exception e) {
            throw new RuntimeException("Failed to load sampled bitmap: " + uri + "\r\n" + e.getMessage(), e);
        } catch (OutOfMemoryError e2) {
            if (0 != 0) {
                bitmap.recycle();
            }
            throw e2;
        }
    }

    /* renamed from: a */
    public static C17184a m5765a(Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, boolean z2, boolean z3) {
        int i4 = 1;
        do {
            try {
                return new C17184a(m5766a(bitmap, fArr, i, z, i2, i3, 1.0f / i4, z2, z3), i4);
            } catch (OutOfMemoryError e) {
                i4 *= 2;
                if (i4 > 8) {
                    throw e;
                }
            }
        } while (i4 > 8);
        throw e;
    }

    /* renamed from: a */
    public static C17185b m5768a(Bitmap bitmap, Context context, Uri uri) {
        C1022a c1022a;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            c1022a = null;
            if (openInputStream != null) {
                c1022a = new C1022a(openInputStream);
                try {
                    openInputStream.close();
                } catch (Exception e) {
                }
            }
        } catch (Exception e2) {
            c1022a = null;
        }
        return c1022a != null ? m5767a(bitmap, c1022a) : new C17185b(bitmap, 0);
    }

    /* renamed from: a */
    public static C17185b m5767a(Bitmap bitmap, C1022a c1022a) {
        int m43810a = c1022a.m43810a("Orientation");
        return new C17185b(bitmap, m43810a != 3 ? m43810a != 6 ? m43810a != 8 ? 0 : 270 : 90 : 180);
    }

    /* renamed from: a */
    public static void m5775a(Context context, Bitmap bitmap, Uri uri, Bitmap.CompressFormat compressFormat, int i) throws FileNotFoundException {
        OutputStream outputStream = null;
        try {
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(uri);
            outputStream = openOutputStream;
            bitmap.compress(compressFormat, i, openOutputStream);
            m5762a(openOutputStream);
        } catch (Throwable th) {
            m5762a(outputStream);
            throw th;
        }
    }

    /* renamed from: a */
    private static void m5763a(Rect rect, int i, int i2) {
        if (i != i2 || rect.width() == rect.height()) {
            return;
        }
        if (rect.height() > rect.width()) {
            rect.bottom -= rect.height() - rect.width();
        } else {
            rect.right -= rect.width() - rect.height();
        }
    }

    /* renamed from: a */
    private static void m5762a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: b */
    public static float m5759b(float[] fArr) {
        return Math.min(Math.min(Math.min(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* renamed from: c */
    public static float m5758c(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[0], fArr[2]), fArr[4]), fArr[6]);
    }

    /* renamed from: d */
    public static float m5757d(float[] fArr) {
        return Math.max(Math.max(Math.max(fArr[1], fArr[3]), fArr[5]), fArr[7]);
    }

    /* renamed from: e */
    public static float m5756e(float[] fArr) {
        return m5758c(fArr) - m5761a(fArr);
    }

    /* renamed from: f */
    public static float m5755f(float[] fArr) {
        return m5757d(fArr) - m5759b(fArr);
    }

    /* renamed from: g */
    public static float m5754g(float[] fArr) {
        return (m5758c(fArr) + m5761a(fArr)) / 2.0f;
    }

    /* renamed from: h */
    public static float m5753h(float[] fArr) {
        return (m5757d(fArr) + m5759b(fArr)) / 2.0f;
    }
}
