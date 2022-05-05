package com.asus.updatesdk.cache;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.AsyncTask;
import android.support.v4.app.i;
import android.support.v4.app.m;
import android.widget.ImageView;
import com.asus.updatesdk.cache.ImageCache;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageWorker.class */
public abstract class ImageWorker {

    /* renamed from: a  reason: collision with root package name */
    private ImageCache.ImageCacheParams f3168a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f3169b;
    ImageCache c;
    protected Resources d;
    private boolean e = true;
    private boolean f = false;
    private boolean g = false;
    private final Object h = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageWorker$AsyncDrawable.class */
    public static class AsyncDrawable extends BitmapDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<BitmapWorkerTask> f3170a;

        public AsyncDrawable(Resources resources, Bitmap bitmap, BitmapWorkerTask bitmapWorkerTask) {
            super(resources, bitmap);
            this.f3170a = new WeakReference<>(bitmapWorkerTask);
        }

        public BitmapWorkerTask getBitmapWorkerTask() {
            return this.f3170a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageWorker$BitmapWorkerTask.class */
    public class BitmapWorkerTask extends AsyncTask<Void, Void, BitmapDrawable> {

        /* renamed from: b  reason: collision with root package name */
        private Object f3172b;
        private Object c;
        private final WeakReference<ImageView> d;

        public BitmapWorkerTask(Object obj, Object obj2, ImageView imageView) {
            this.f3172b = obj;
            this.c = obj2;
            this.d = new WeakReference<>(imageView);
        }

        private BitmapDrawable a() {
            BitmapDrawable bitmapDrawable = null;
            String valueOf = String.valueOf(this.f3172b);
            synchronized (ImageWorker.this.h) {
                while (ImageWorker.this.g && !isCancelled()) {
                    try {
                        ImageWorker.this.h.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            Bitmap bitmapFromDiskCache = (ImageWorker.this.c == null || isCancelled() || b() == null || ImageWorker.this.f) ? null : ImageWorker.this.c.getBitmapFromDiskCache(valueOf);
            Bitmap bitmap = bitmapFromDiskCache;
            if (bitmapFromDiskCache == null) {
                bitmap = bitmapFromDiskCache;
                if (!isCancelled()) {
                    bitmap = bitmapFromDiskCache;
                    if (b() != null) {
                        bitmap = bitmapFromDiskCache;
                        if (!ImageWorker.this.f) {
                            bitmap = ImageWorker.this.a(this.f3172b, this.c);
                        }
                    }
                }
            }
            if (bitmap != null) {
                BitmapDrawable bitmapDrawable2 = CacheUtils.hasHoneycomb() ? new BitmapDrawable(ImageWorker.this.d, bitmap) : new RecyclingBitmapDrawable(ImageWorker.this.d, bitmap);
                bitmapDrawable = bitmapDrawable2;
                if (ImageWorker.this.c != null) {
                    ImageWorker.this.c.addBitmapToCache(valueOf, bitmapDrawable2);
                    bitmapDrawable = bitmapDrawable2;
                }
            }
            return bitmapDrawable;
        }

        private ImageView b() {
            ImageView imageView = this.d.get();
            if (this != ImageWorker.b(imageView)) {
                imageView = null;
            }
            return imageView;
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ BitmapDrawable doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onCancelled(BitmapDrawable bitmapDrawable) {
            super.onCancelled(bitmapDrawable);
            synchronized (ImageWorker.this.h) {
                ImageWorker.this.h.notifyAll();
            }
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(BitmapDrawable bitmapDrawable) {
            BitmapDrawable bitmapDrawable2 = bitmapDrawable;
            if (isCancelled() || ImageWorker.this.f) {
                bitmapDrawable2 = null;
            }
            ImageView b2 = b();
            if (bitmapDrawable2 != null && b2 != null) {
                ImageWorker.a(ImageWorker.this, b2, bitmapDrawable2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/ImageWorker$CacheAsyncTask.class */
    public class CacheAsyncTask extends AsyncTask<Object, Void, Void> {
        private CacheAsyncTask() {
        }

        /* synthetic */ CacheAsyncTask(ImageWorker imageWorker, byte b2) {
            this();
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ Void doInBackground(Object[] objArr) {
            switch (((Integer) objArr[0]).intValue()) {
                case 0:
                    ImageWorker.this.b();
                    return null;
                case 1:
                    ImageWorker.this.a();
                    return null;
                case 2:
                    ImageWorker.this.c();
                    return null;
                case 3:
                    ImageWorker.this.d();
                    return null;
                default:
                    return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImageWorker(Context context) {
        this.d = context.getResources();
    }

    static /* synthetic */ void a(ImageWorker imageWorker, ImageView imageView, Drawable drawable) {
        if (imageWorker.e) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(0), drawable});
            imageView.setBackground(new BitmapDrawable(imageWorker.d, imageWorker.f3169b));
            imageView.setImageDrawable(transitionDrawable);
            transitionDrawable.startTransition(200);
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BitmapWorkerTask b(ImageView imageView) {
        BitmapWorkerTask bitmapWorkerTask;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof AsyncDrawable) {
                bitmapWorkerTask = ((AsyncDrawable) drawable).getBitmapWorkerTask();
                return bitmapWorkerTask;
            }
        }
        bitmapWorkerTask = null;
        return bitmapWorkerTask;
    }

    public static void cancelWork(ImageView imageView) {
        BitmapWorkerTask b2 = b(imageView);
        if (b2 != null) {
            b2.cancel(true);
        }
    }

    protected abstract Bitmap a(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        if (this.c != null) {
            this.c.initDiskCache();
        }
    }

    public void addImageCache(i iVar, String str) {
        this.f3168a = new ImageCache.ImageCacheParams(iVar, str);
        this.c = ImageCache.getInstance(iVar.getSupportFragmentManager(), this.f3168a);
        new CacheAsyncTask(this, (byte) 0).execute(1);
    }

    public void addImageCache(m mVar, ImageCache.ImageCacheParams imageCacheParams) {
        this.f3168a = imageCacheParams;
        this.c = ImageCache.getInstance(mVar, this.f3168a);
        new CacheAsyncTask(this, (byte) 0).execute(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        if (this.c != null) {
            this.c.clearCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        if (this.c != null) {
            this.c.flush();
        }
    }

    public void clearCache() {
        new CacheAsyncTask(this, (byte) 0).execute(0);
    }

    public void closeCache() {
        new CacheAsyncTask(this, (byte) 0).execute(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        if (this.c != null) {
            this.c.close();
            this.c = null;
        }
        if (this.f3169b != null) {
            this.f3169b.recycle();
            this.f3169b = null;
        }
    }

    public void flushCache() {
        new CacheAsyncTask(this, (byte) 0).execute(2);
    }

    public void loadImage(Object obj, Object obj2, ImageView imageView) {
        Object obj3 = obj;
        if (obj == null) {
            if (obj2 != null) {
                obj3 = obj2;
            } else {
                return;
            }
        }
        BitmapDrawable bitmapDrawable = null;
        if (this.c != null) {
            bitmapDrawable = this.c.getBitmapFromMemCache(String.valueOf(obj3));
        }
        if (bitmapDrawable != null) {
            imageView.setImageDrawable(bitmapDrawable);
            return;
        }
        BitmapWorkerTask b2 = b(imageView);
        boolean z = true;
        if (b2 != null) {
            Object obj4 = b2.f3172b;
            if (obj4 == null || !obj4.equals(obj3)) {
                b2.cancel(true);
                z = true;
            } else {
                z = false;
            }
        }
        if (z) {
            BitmapWorkerTask bitmapWorkerTask = new BitmapWorkerTask(obj3, obj2, imageView);
            imageView.setImageDrawable(new AsyncDrawable(this.d, this.f3169b, bitmapWorkerTask));
            bitmapWorkerTask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public void setExitTasksEarly(boolean z) {
        this.f = z;
        synchronized (this.h) {
            this.g = false;
            if (!this.g) {
                this.h.notifyAll();
            }
        }
    }

    public void setImageFadeIn(boolean z) {
        this.e = z;
    }

    public void setLoadingImage(int i) {
        this.f3169b = BitmapFactory.decodeResource(this.d, i);
    }

    public void setLoadingImage(Bitmap bitmap) {
        this.f3169b = bitmap;
    }
}
