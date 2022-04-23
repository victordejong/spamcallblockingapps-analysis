package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import com.bumptech.glide.load.engine.a.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppTransformationUtils.class */
public class CallAppTransformationUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Paint f16186a = new Paint(6);

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f16187b = new Paint(7);

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f16188c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f16189d;
    private static final Lock e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppTransformationUtils$NoLock.class */
    static final class NoLock implements Lock {
        NoLock() {
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
        f16189d = hashSet;
        e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new NoLock();
        Paint paint = new Paint(7);
        f16188c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private static Bitmap.Config a(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    private static Bitmap a(e eVar, Bitmap bitmap) {
        Bitmap.Config a2 = a(bitmap);
        if (a2.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap a3 = eVar.a(bitmap.getWidth(), bitmap.getHeight(), a2);
        new Canvas(a3).drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        return a3;
    }

    public static Bitmap a(e eVar, Bitmap bitmap, int i, int i2, Integer num, ColorFilter colorFilter, int i3, int i4, float f, boolean z) {
        Paint paint;
        Paint paint2;
        int min = Math.min(i, i2);
        float f2 = min;
        float f3 = f2 / 2.0f;
        float width = bitmap.getWidth();
        float f4 = f2 / width;
        float height = bitmap.getHeight();
        float max = Math.max(f4, f2 / height);
        float f5 = width * max;
        float f6 = max * height;
        float f7 = (f2 - f5) / 2.0f;
        float f8 = (f2 - f6) / 2.0f;
        RectF rectF = new RectF(f7 + f, f8 + f, (f7 + f5) - f, (f8 + f6) - f);
        Bitmap a2 = a(eVar, bitmap);
        Bitmap a3 = eVar.a(min, min, a(bitmap));
        a3.setHasAlpha(true);
        Lock lock = e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(a3);
            if (num != null) {
                Paint paint3 = new Paint(7);
                paint3.setColor(num.intValue());
                paint3.setAntiAlias(true);
                paint = paint3;
            } else {
                paint = f16187b;
            }
            canvas.drawCircle(f3, f3, f3, paint);
            if (colorFilter != null) {
                paint2 = new Paint(7);
                paint2.setColorFilter(colorFilter);
            } else if (z) {
                paint2 = f16188c;
            } else {
                paint2 = new Paint(7);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            }
            canvas.drawBitmap(a2, (Rect) null, rectF, paint2);
            if (i3 > 0) {
                RectF rectF2 = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, i, i2);
                float height2 = rectF2.height();
                float f9 = i3;
                float min2 = Math.min((height2 - f9) / 2.0f, (rectF2.width() - f9) / 2.0f);
                Paint paint4 = new Paint();
                paint4.setStyle(Paint.Style.STROKE);
                paint4.setAntiAlias(true);
                paint4.setColor(i4);
                paint4.setStrokeWidth(f9);
                canvas.drawCircle(f3, f3, min2, paint4);
            }
            canvas.setBitmap(null);
            lock.unlock();
            if (!a2.equals(bitmap)) {
                eVar.a(a2);
            }
            return a3;
        } catch (Throwable th) {
            e.unlock();
            throw th;
        }
    }

    public static Bitmap a(e eVar, Bitmap bitmap, int i, int i2, Integer num, ColorFilter colorFilter, boolean z) {
        Paint paint;
        Paint paint2;
        int min = Math.min(i, i2);
        float f = min;
        float width = bitmap.getWidth();
        float f2 = f / width;
        float height = bitmap.getHeight();
        float max = Math.max(f2, f / height);
        float f3 = width * max;
        float f4 = max * height;
        float f5 = f - f3;
        float f6 = f - f4;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap a2 = a(eVar, bitmap);
        Bitmap a3 = eVar.a(min, min, a(bitmap));
        a3.setHasAlpha(true);
        Lock lock = e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(a3);
            if (num != null) {
                Paint paint3 = new Paint(7);
                paint3.setColor(num.intValue());
                paint3.setAntiAlias(true);
                paint = paint3;
            } else {
                paint = f16187b;
            }
            canvas.drawRect(rectF, paint);
            if (colorFilter != null) {
                paint2 = new Paint(7);
                paint2.setColorFilter(colorFilter);
            } else if (z) {
                paint2 = f16188c;
            } else {
                paint2 = new Paint(7);
                paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
            }
            canvas.drawBitmap(a2, (Rect) null, rectF, paint2);
            canvas.setBitmap(null);
            lock.unlock();
            if (!a2.equals(bitmap)) {
                eVar.a(a2);
            }
            return a3;
        } catch (Throwable th) {
            e.unlock();
            throw th;
        }
    }
}
