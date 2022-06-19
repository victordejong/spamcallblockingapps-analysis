package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
/* renamed from: e.f.a.n.q.d.c0 */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/c0.class */
public final class C22485c0 {

    /* renamed from: a */
    public static final Paint f62352a = new Paint(6);

    /* renamed from: b */
    public static final Paint f62353b = new Paint(7);

    /* renamed from: c */
    public static final Paint f62354c;

    /* renamed from: d */
    public static final Set<String> f62355d;

    /* renamed from: e */
    public static final Lock f62356e;

    /* renamed from: e.f.a.n.q.d.c0$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/c0$a.class */
    public interface AbstractC22486a {
        /* renamed from: a */
        void mo8204a(Canvas canvas, Paint paint, RectF rectF);
    }

    /* renamed from: e.f.a.n.q.d.c0$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/c0$b.class */
    public static final class locksLockC22487b implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
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
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f62355d = hashSet;
        f62356e = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new locksLockC22487b();
        Paint paint = new Paint(7);
        f62354c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public static void m8210a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = f62356e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f62352a);
            canvas.setBitmap(null);
            lock.unlock();
        } catch (Throwable th) {
            f62356e.unlock();
            throw th;
        }
    }

    /* renamed from: b */
    public static Bitmap m8209b(AbstractC22303d abstractC22303d, Bitmap bitmap, int i, int i2) {
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
        Bitmap mo8325e = abstractC22303d.mo8325e((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), m8206e(bitmap));
        mo8325e.setHasAlpha(bitmap.hasAlpha());
        if (Log.isLoggable("TransformationUtils", 2)) {
            bitmap.getWidth();
            bitmap.getHeight();
            mo8325e.getWidth();
            mo8325e.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        m8210a(bitmap, mo8325e, matrix);
        return mo8325e;
    }

    /* renamed from: c */
    public static Bitmap m8208c(AbstractC22303d abstractC22303d, Bitmap bitmap) {
        Bitmap.Config m8207d = m8207d(bitmap);
        if (m8207d.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap mo8325e = abstractC22303d.mo8325e(bitmap.getWidth(), bitmap.getHeight(), m8207d);
        new Canvas(mo8325e).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return mo8325e;
    }

    /* renamed from: d */
    public static Bitmap.Config m8207d(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: e */
    public static Bitmap.Config m8206e(Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    /* renamed from: f */
    public static Bitmap m8205f(AbstractC22303d abstractC22303d, Bitmap bitmap, AbstractC22486a abstractC22486a) {
        Bitmap.Config m8207d = m8207d(bitmap);
        Bitmap m8208c = m8208c(abstractC22303d, bitmap);
        Bitmap mo8325e = abstractC22303d.mo8325e(m8208c.getWidth(), m8208c.getHeight(), m8207d);
        mo8325e.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(m8208c, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, mo8325e.getWidth(), mo8325e.getHeight());
        Lock lock = f62356e;
        lock.lock();
        try {
            Canvas canvas = new Canvas(mo8325e);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            abstractC22486a.mo8204a(canvas, paint, rectF);
            canvas.setBitmap(null);
            lock.unlock();
            if (!m8208c.equals(bitmap)) {
                abstractC22303d.mo8327c(m8208c);
            }
            return mo8325e;
        } catch (Throwable th) {
            f62356e.unlock();
            throw th;
        }
    }
}
