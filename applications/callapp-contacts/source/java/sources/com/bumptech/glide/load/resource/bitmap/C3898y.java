package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bumptech.glide.load.resource.bitmap.y */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y.class */
public final class C3898y {

    /* renamed from: a */
    private static final Paint f14290a = new Paint(6);

    /* renamed from: b */
    private static final Paint f14291b = new Paint(7);

    /* renamed from: c */
    private static final Paint f14292c;

    /* renamed from: d */
    private static final Set<String> f14293d;

    /* renamed from: e */
    private static final Lock f14294e;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.y$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y$a.class */
    static final class locksLockC3899a implements Lock {
        locksLockC3899a() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        public final Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public final void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f14293d = hashSet;
        f14294e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new locksLockC3899a();
        Paint paint = new Paint(7);
        f14292c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private C3898y() {
    }

    /* renamed from: a */
    public static int m37244a(int i) {
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
    private static Bitmap.Config m37243a(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: a */
    public static Bitmap m37240a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i) {
        if (!m37238b(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap mo37460a = abstractC3712e.mo37460a(Math.round(rectF.width()), Math.round(rectF.height()), m37243a(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        mo37460a.setHasAlpha(bitmap.hasAlpha());
        m37241a(bitmap, mo37460a, matrix);
        return mo37460a;
    }

    /* renamed from: a */
    public static Bitmap m37239a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
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
        Bitmap mo37460a = abstractC3712e.mo37460a(i, i2, m37243a(bitmap));
        m37242a(bitmap, mo37460a);
        m37241a(bitmap, mo37460a, matrix);
        return mo37460a;
    }

    /* renamed from: a */
    public static Lock m37245a() {
        return f14294e;
    }

    /* renamed from: a */
    private static void m37242a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    /* renamed from: a */
    private static void m37241a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f14294e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f14290a);
            canvas.setBitmap(null);
            lock.unlock();
        } catch (Throwable th) {
            f14294e.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static Bitmap m37237b(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            Log.isLoggable("TransformationUtils", 2);
            return bitmap;
        }
        Bitmap mo37460a = abstractC3712e.mo37460a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m37243a(bitmap));
        m37242a(bitmap, mo37460a);
        if (Log.isLoggable("TransformationUtils", 2)) {
            StringBuilder sb = new StringBuilder("request: ");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            StringBuilder sb2 = new StringBuilder("toFit:   ");
            sb2.append(bitmap.getWidth());
            sb2.append("x");
            sb2.append(bitmap.getHeight());
            StringBuilder sb3 = new StringBuilder("toReuse: ");
            sb3.append(mo37460a.getWidth());
            sb3.append("x");
            sb3.append(mo37460a.getHeight());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m37241a(bitmap, mo37460a, matrix);
        return mo37460a;
    }

    /* renamed from: b */
    public static boolean m37238b(int i) {
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

    /* renamed from: c */
    public static Bitmap m37236c(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            Log.isLoggable("TransformationUtils", 2);
            return m37237b(abstractC3712e, bitmap, i, i2);
        }
        Log.isLoggable("TransformationUtils", 2);
        return bitmap;
    }
}
