package com.bumptech.glide.load.resource.bitmap;

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
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x.class */
public final class C4322x {

    /* renamed from: a */
    private static final Paint f13300a = new Paint(6);

    /* renamed from: b */
    private static final Paint f13301b = new Paint(7);

    /* renamed from: c */
    private static final Paint f13302c;

    /* renamed from: d */
    private static final Set<String> f13303d;

    /* renamed from: e */
    private static final Lock f13304e;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x$a.class */
    private static final class locksLockC4323a implements Lock {
        locksLockC4323a() {
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
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f13303d = hashSet;
        f13304e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new locksLockC4323a();
        Paint paint = new Paint(7);
        f13302c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    private static void m22877a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f13304e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f13300a);
            m22873e(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f13304e.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static Bitmap m22876b(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        float f;
        float f2;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f3 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            f2 = i2 / bitmap.getHeight();
            f3 = (i - (bitmap.getWidth() * f2)) * 0.5f;
            f = 0.0f;
        } else {
            f2 = i / bitmap.getWidth();
            f = (i2 - (bitmap.getHeight() * f2)) * 0.5f;
        }
        matrix.setScale(f2, f2);
        matrix.postTranslate((int) (f3 + 0.5f), (int) (f + 0.5f));
        Bitmap mo23258d = abstractC4096e.mo23258d(i, i2, m22867k(bitmap));
        m22863o(bitmap, mo23258d);
        m22877a(bitmap, mo23258d, matrix);
        return mo23258d;
    }

    /* renamed from: c */
    public static Bitmap m22875c(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return m22872f(abstractC4096e, bitmap, i, i2);
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    /* renamed from: d */
    public static Bitmap m22874d(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        int min = Math.min(i, i2);
        float f = min;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float f3 = f / width;
        float height = bitmap.getHeight();
        float max = Math.max(f3, f / height);
        float f4 = width * max;
        float f5 = max * height;
        float f6 = (f - f4) / 2.0f;
        float f7 = (f - f5) / 2.0f;
        RectF rectF = new RectF(f6, f7, f4 + f6, f5 + f7);
        Bitmap m22871g = m22871g(abstractC4096e, bitmap);
        Bitmap mo23258d = abstractC4096e.mo23258d(min, min, m22870h(bitmap));
        mo23258d.setHasAlpha(true);
        Lock lock = f13304e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(mo23258d);
            canvas.drawCircle(f2, f2, f2, f13301b);
            canvas.drawBitmap(m22871g, (Rect) null, rectF, f13302c);
            m22873e(canvas);
            lock.unlock();
            if (!m22871g.equals(bitmap)) {
                abstractC4096e.mo22911c(m22871g);
            }
            return mo23258d;
        } catch (Throwable th) {
            f13304e.unlock();
            throw th;
        }
    }

    /* renamed from: e */
    private static void m22873e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: f */
    public static Bitmap m22872f(AbstractC4096e abstractC4096e, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap mo23258d = abstractC4096e.mo23258d((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m22867k(bitmap));
        m22863o(bitmap, mo23258d);
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "request: " + i + "x" + i2);
            Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v("TransformationUtils", "toReuse: " + mo23258d.getWidth() + "x" + mo23258d.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(min);
            Log.v("TransformationUtils", sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m22877a(bitmap, mo23258d, matrix);
        return mo23258d;
    }

    /* renamed from: g */
    private static Bitmap m22871g(AbstractC4096e abstractC4096e, Bitmap bitmap) {
        Bitmap.Config m22870h = m22870h(bitmap);
        if (m22870h.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap mo23258d = abstractC4096e.mo23258d(bitmap.getWidth(), bitmap.getHeight(), m22870h);
        new Canvas(mo23258d).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return mo23258d;
    }

    /* renamed from: h */
    private static Bitmap.Config m22870h(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: i */
    public static Lock m22869i() {
        return f13304e;
    }

    /* renamed from: j */
    public static int m22868j(int i) {
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

    /* renamed from: k */
    private static Bitmap.Config m22867k(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: l */
    static void m22866l(int i, Matrix matrix) {
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

    /* renamed from: m */
    public static boolean m22865m(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: n */
    public static Bitmap m22864n(AbstractC4096e abstractC4096e, Bitmap bitmap, int i) {
        if (!m22865m(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        m22866l(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap mo23258d = abstractC4096e.mo23258d(Math.round(rectF.width()), Math.round(rectF.height()), m22867k(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        mo23258d.setHasAlpha(bitmap.hasAlpha());
        m22877a(bitmap, mo23258d, matrix);
        return mo23258d;
    }

    /* renamed from: o */
    public static void m22863o(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
