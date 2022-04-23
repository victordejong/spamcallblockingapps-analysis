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
import com.bumptech.glide.load.engine.a.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final Paint f7703a = new Paint(6);

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f7704b = new Paint(7);

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f7705c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f7706d;
    private static final Lock e;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/y$a.class */
    static final class a implements Lock {
        a() {
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
        f7706d = hashSet;
        e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new a();
        Paint paint = new Paint(7);
        f7705c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private y() {
    }

    public static int a(int i) {
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

    private static Bitmap.Config a(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    public static Bitmap a(e eVar, Bitmap bitmap, int i) {
        if (!b(i)) {
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
        Bitmap a2 = eVar.a(Math.round(rectF.width()), Math.round(rectF.height()), a(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        a2.setHasAlpha(bitmap.hasAlpha());
        a(bitmap, a2, matrix);
        return a2;
    }

    public static Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        float f;
        float f2;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f3 = BitmapDescriptorFactory.HUE_RED;
        if (width * i2 > height * i) {
            f2 = i2 / bitmap.getHeight();
            f3 = (i - (bitmap.getWidth() * f2)) * 0.5f;
            f = BitmapDescriptorFactory.HUE_RED;
        } else {
            f2 = i / bitmap.getWidth();
            f = (i2 - (bitmap.getHeight() * f2)) * 0.5f;
        }
        matrix.setScale(f2, f2);
        matrix.postTranslate((int) (f3 + 0.5f), (int) (f + 0.5f));
        Bitmap a2 = eVar.a(i, i2, a(bitmap));
        a(bitmap, a2);
        a(bitmap, a2, matrix);
        return a2;
    }

    public static Lock a() {
        return e;
    }

    private static void a(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    private static void a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f7703a);
            canvas.setBitmap(null);
            lock.unlock();
        } catch (Throwable th) {
            e.unlock();
            throw th;
        }
    }

    public static Bitmap b(e eVar, Bitmap bitmap, int i, int i2) {
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
        Bitmap a2 = eVar.a((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), a(bitmap));
        a(bitmap, a2);
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
            sb3.append(a2.getWidth());
            sb3.append("x");
            sb3.append(a2.getHeight());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        a(bitmap, a2, matrix);
        return a2;
    }

    public static boolean b(int i) {
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

    public static Bitmap c(e eVar, Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            Log.isLoggable("TransformationUtils", 2);
            return b(eVar, bitmap, i, i2);
        }
        Log.isLoggable("TransformationUtils", 2);
        return bitmap;
    }
}
