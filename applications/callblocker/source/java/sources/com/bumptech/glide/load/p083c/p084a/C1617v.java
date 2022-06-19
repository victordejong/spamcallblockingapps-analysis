package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.c.a.v */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/v.class */
public final class C1617v {

    /* renamed from: c */
    private static final Paint f5016c;

    /* renamed from: e */
    private static final Lock f5018e;

    /* renamed from: a */
    private static final Paint f5014a = new Paint(6);

    /* renamed from: b */
    private static final Paint f5015b = new Paint(7);

    /* renamed from: d */
    private static final Set<String> f5017d = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));

    /* renamed from: com.bumptech.glide.load.c.a.v$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/v$a.class */
    private static final class locksLockC1618a implements Lock {
        locksLockC1618a() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
        }

        @Override // java.util.concurrent.locks.Lock
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        f5018e = f5017d.contains(Build.MODEL) ? new ReentrantLock() : new locksLockC1618a();
        f5016c = new Paint(7);
        f5016c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public static int m16727a(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* renamed from: a */
    private static Bitmap.Config m16725a(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: a */
    private static Bitmap m16721a(AbstractC1678e abstractC1678e, Bitmap bitmap) {
        Bitmap.Config m16725a = m16725a(bitmap);
        if (!m16725a.equals(bitmap.getConfig())) {
            Bitmap mo16543a = abstractC1678e.mo16543a(bitmap.getWidth(), bitmap.getHeight(), m16725a);
            new Canvas(mo16543a).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            bitmap = mo16543a;
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m16720a(AbstractC1678e abstractC1678e, Bitmap bitmap, int i) {
        if (m16718b(i)) {
            Matrix matrix = new Matrix();
            m16726a(i, matrix);
            RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            matrix.mapRect(rectF);
            Bitmap mo16543a = abstractC1678e.mo16543a(Math.round(rectF.width()), Math.round(rectF.height()), m16717b(bitmap));
            matrix.postTranslate(-rectF.left, -rectF.top);
            m16723a(bitmap, mo16543a, matrix);
            bitmap = mo16543a;
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m16719a(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        float f;
        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            Matrix matrix = new Matrix();
            if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
                width = i2 / bitmap.getHeight();
                f = (i - (bitmap.getWidth() * width)) * 0.5f;
                height = 0.0f;
            } else {
                width = i / bitmap.getWidth();
                height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
                f = 0.0f;
            }
            matrix.setScale(width, width);
            matrix.postTranslate((int) (f + 0.5f), (int) (height + 0.5f));
            Bitmap mo16543a = abstractC1678e.mo16543a(i, i2, m16717b(bitmap));
            m16724a(bitmap, mo16543a);
            m16723a(bitmap, mo16543a, matrix);
            bitmap = mo16543a;
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Lock m16728a() {
        return f5018e;
    }

    /* renamed from: a */
    static void m16726a(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public static void m16724a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    /* renamed from: a */
    private static void m16723a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        f5018e.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f5014a);
            m16722a(canvas);
            f5018e.unlock();
        } catch (Throwable th) {
            f5018e.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    private static void m16722a(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: b */
    private static Bitmap.Config m16717b(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: b */
    public static Bitmap m16716b(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2) {
        Bitmap mo16543a;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            mo16543a = bitmap;
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
                mo16543a = bitmap;
            }
        } else {
            float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
            int round = Math.round(bitmap.getWidth() * min);
            int round2 = Math.round(bitmap.getHeight() * min);
            if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
                mo16543a = bitmap;
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "adjusted target size matches input, returning input");
                    mo16543a = bitmap;
                }
            } else {
                mo16543a = abstractC1678e.mo16543a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m16717b(bitmap));
                m16724a(bitmap, mo16543a);
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "request: " + i + "x" + i2);
                    Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
                    Log.v("TransformationUtils", "toReuse: " + mo16543a.getWidth() + "x" + mo16543a.getHeight());
                    Log.v("TransformationUtils", "minPct:   " + min);
                }
                Matrix matrix = new Matrix();
                matrix.setScale(min, min);
                m16723a(bitmap, mo16543a, matrix);
            }
        }
        return mo16543a;
    }

    /* renamed from: b */
    public static boolean m16718b(int i) {
        boolean z;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    /* renamed from: c */
    public static Bitmap m16715c(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2) {
        Bitmap m16716b;
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            m16716b = m16716b(abstractC1678e, bitmap, i, i2);
        } else {
            m16716b = bitmap;
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
                m16716b = bitmap;
            }
        }
        return m16716b;
    }

    /* renamed from: d */
    public static Bitmap m16714d(AbstractC1678e abstractC1678e, Bitmap bitmap, int i, int i2) {
        int min = Math.min(i, i2);
        float f = min / 2.0f;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float max = Math.max(min / width, min / height);
        float f2 = width * max;
        float f3 = height * max;
        float f4 = (min - f2) / 2.0f;
        float f5 = (min - f3) / 2.0f;
        RectF rectF = new RectF(f4, f5, f2 + f4, f3 + f5);
        Bitmap m16721a = m16721a(abstractC1678e, bitmap);
        Bitmap mo16543a = abstractC1678e.mo16543a(min, min, m16725a(bitmap));
        mo16543a.setHasAlpha(true);
        f5018e.lock();
        try {
            Canvas canvas = new Canvas(mo16543a);
            canvas.drawCircle(f, f, f, f5015b);
            canvas.drawBitmap(m16721a, (Rect) null, rectF, f5016c);
            m16722a(canvas);
            f5018e.unlock();
            if (!m16721a.equals(bitmap)) {
                abstractC1678e.mo16540a(m16721a);
            }
            return mo16543a;
        } catch (Throwable th) {
            f5018e.unlock();
            throw th;
        }
    }
}
