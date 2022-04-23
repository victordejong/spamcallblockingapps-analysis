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
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x.class */
public final class C0824x {

    /* renamed from: a */
    private static final Paint f3766a = new Paint(6);

    /* renamed from: b */
    private static final Paint f3767b = new Paint(7);

    /* renamed from: c */
    private static final Paint f3768c;

    /* renamed from: d */
    private static final Set<String> f3769d;

    /* renamed from: e */
    private static final Lock f3770e;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.x$a  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/x$a.class */
    private static final class locksLockC0825a implements Lock {
        locksLockC0825a() {
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
        f3769d = hashSet;
        f3770e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new locksLockC0825a();
        Paint paint = new Paint(7);
        f3768c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    private static void m10866a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f3770e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f3766a);
            m10862e(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f3770e.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static Bitmap m10865b(AbstractC0770e eVar, Bitmap bitmap, int i, int i2) {
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
        Bitmap c = eVar.m11064c(i, i2, m10856k(bitmap));
        m10852o(bitmap, c);
        m10866a(bitmap, c, matrix);
        return c;
    }

    /* renamed from: c */
    public static Bitmap m10864c(AbstractC0770e eVar, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return m10861f(eVar, bitmap, i, i2);
        }
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    /* renamed from: d */
    public static Bitmap m10863d(AbstractC0770e eVar, Bitmap bitmap, int i, int i2) {
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
        Bitmap g = m10860g(eVar, bitmap);
        Bitmap c = eVar.m11064c(min, min, m10859h(bitmap));
        c.setHasAlpha(true);
        Lock lock = f3770e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(c);
            canvas.drawCircle(f2, f2, f2, f3767b);
            canvas.drawBitmap(g, (Rect) null, rectF, f3768c);
            m10862e(canvas);
            lock.unlock();
            if (!g.equals(bitmap)) {
                eVar.m11063d(g);
            }
            return c;
        } catch (Throwable th) {
            f3770e.unlock();
            throw th;
        }
    }

    /* renamed from: e */
    private static void m10862e(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: f */
    public static Bitmap m10861f(AbstractC0770e eVar, Bitmap bitmap, int i, int i2) {
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
        Bitmap c = eVar.m11064c((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m10856k(bitmap));
        m10852o(bitmap, c);
        if (Log.isLoggable("TransformationUtils", 2)) {
            Log.v("TransformationUtils", "request: " + i + "x" + i2);
            Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v("TransformationUtils", "toReuse: " + c.getWidth() + "x" + c.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(min);
            Log.v("TransformationUtils", sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m10866a(bitmap, c, matrix);
        return c;
    }

    /* renamed from: g */
    private static Bitmap m10860g(AbstractC0770e eVar, Bitmap bitmap) {
        Bitmap.Config h = m10859h(bitmap);
        if (h.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap c = eVar.m11064c(bitmap.getWidth(), bitmap.getHeight(), h);
        new Canvas(c).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return c;
    }

    /* renamed from: h */
    private static Bitmap.Config m10859h(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: i */
    public static Lock m10858i() {
        return f3770e;
    }

    /* renamed from: j */
    public static int m10857j(int i) {
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
    private static Bitmap.Config m10856k(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: l */
    static void m10855l(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
        matrix.postScale(-1.0f, 1.0f);
    }

    /* renamed from: m */
    public static boolean m10854m(int i) {
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
    public static Bitmap m10853n(AbstractC0770e eVar, Bitmap bitmap, int i) {
        if (!m10854m(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        m10855l(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap c = eVar.m11064c(Math.round(rectF.width()), Math.round(rectF.height()), m10856k(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        c.setHasAlpha(bitmap.hasAlpha());
        m10866a(bitmap, c, matrix);
        return c;
    }

    /* renamed from: o */
    public static void m10852o(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
