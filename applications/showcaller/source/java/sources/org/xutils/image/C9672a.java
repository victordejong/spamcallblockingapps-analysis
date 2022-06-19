package org.xutils.image;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.animation.Animation;
import android.widget.ImageView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.xutils.C9682x;
import org.xutils.cache.LruCache;
import org.xutils.cache.LruDiskCache;
import org.xutils.common.Callback;
import org.xutils.common.task.Priority;
import org.xutils.common.task.PriorityExecutor;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.http.RequestParams;
import org.xutils.image.ImageOptions;
import org.xutils.p344ex.FileLockedException;
/* renamed from: org.xutils.image.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/image/a.class */
public final class C9672a implements Callback.PrepareCallback<File, Drawable>, Callback.CacheCallback<Drawable>, Callback.ProgressCallback<Drawable>, Callback.TypedCallback<Drawable>, Callback.Cancelable {

    /* renamed from: a */
    private static final AtomicLong f40851a = new AtomicLong(0);

    /* renamed from: b */
    private static final Executor f40852b = new PriorityExecutor(10, false);

    /* renamed from: c */
    private static final LruCache<C9677b, Drawable> f40853c;

    /* renamed from: d */
    private static final HashMap<String, C9676d> f40854d;

    /* renamed from: e */
    private static final Type f40855e;

    /* renamed from: f */
    private C9677b f40856f;

    /* renamed from: g */
    private ImageOptions f40857g;

    /* renamed from: h */
    private WeakReference<ImageView> f40858h;

    /* renamed from: o */
    private Callback.Cancelable f40865o;

    /* renamed from: p */
    private Callback.CommonCallback<Drawable> f40866p;

    /* renamed from: q */
    private Callback.PrepareCallback<File, Drawable> f40867q;

    /* renamed from: r */
    private Callback.CacheCallback<Drawable> f40868r;

    /* renamed from: s */
    private Callback.ProgressCallback<Drawable> f40869s;

    /* renamed from: i */
    private int f40859i = 0;

    /* renamed from: j */
    private final long f40860j = f40851a.incrementAndGet();

    /* renamed from: k */
    private volatile boolean f40861k = false;

    /* renamed from: l */
    private volatile boolean f40862l = false;

    /* renamed from: m */
    private volatile boolean f40863m = false;

    /* renamed from: n */
    private volatile boolean f40864n = false;

    /* renamed from: t */
    private boolean f40870t = false;

    /* renamed from: org.xutils.image.a$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/a$a.class */
    static final class C9673a extends LruCache<C9677b, Drawable> {

        /* renamed from: i */
        private boolean f40871i = false;

        C9673a(int i) {
            super(i);
        }

        public void entryRemoved(boolean z, C9677b c9677b, Drawable drawable, Drawable drawable2) {
            super.entryRemoved(z, (boolean) c9677b, drawable, drawable2);
            if (!z || !this.f40871i || !(drawable instanceof AbstractC9679d)) {
                return;
            }
            ((AbstractC9679d) drawable).setMemCacheKey(null);
        }

        public int sizeOf(C9677b c9677b, Drawable drawable) {
            if (!(drawable instanceof BitmapDrawable)) {
                return drawable instanceof GifDrawable ? ((GifDrawable) drawable).getByteCount() : super.sizeOf((C9673a) c9677b, (C9677b) drawable);
            }
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            return bitmap == null ? 0 : bitmap.getByteCount();
        }

        @Override // org.xutils.cache.LruCache
        public void trimToSize(int i) {
            if (i < 0) {
                this.f40871i = true;
            }
            super.trimToSize(i);
            this.f40871i = false;
        }
    }

    /* renamed from: org.xutils.image.a$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/a$b.class */
    class RunnableC9674b implements Runnable {
        RunnableC9674b() {
            C9672a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageView imageView = (ImageView) C9672a.this.f40858h.get();
            if (imageView != null) {
                C9672a.m142i(imageView, C9672a.this.f40856f.f40880a, C9672a.this.f40857g, C9672a.this.f40859i, C9672a.this.f40866p);
            } else {
                C9672a.this.onFinished();
            }
        }
    }

    /* renamed from: org.xutils.image.a$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/a$c.class */
    public static final class RunnableC9675c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Callback.CommonCallback f40873d;

        /* renamed from: e */
        final /* synthetic */ ImageView f40874e;

        /* renamed from: f */
        final /* synthetic */ ImageOptions f40875f;

        /* renamed from: g */
        final /* synthetic */ String f40876g;

        RunnableC9675c(Callback.CommonCallback commonCallback, ImageView imageView, ImageOptions imageOptions, String str) {
            this.f40873d = commonCallback;
            this.f40874e = imageView;
            this.f40875f = imageOptions;
            this.f40876g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageOptions imageOptions;
            try {
                Callback.CommonCallback commonCallback = this.f40873d;
                if (commonCallback instanceof Callback.ProgressCallback) {
                    ((Callback.ProgressCallback) commonCallback).onWaiting();
                }
                ImageView imageView = this.f40874e;
                if (imageView != null && (imageOptions = this.f40875f) != null) {
                    imageView.setScaleType(imageOptions.getPlaceholderScaleType());
                    ImageView imageView2 = this.f40874e;
                    imageView2.setImageDrawable(this.f40875f.getFailureDrawable(imageView2));
                }
                Callback.CommonCallback commonCallback2 = this.f40873d;
                if (commonCallback2 != null) {
                    commonCallback2.onError(new IllegalArgumentException(this.f40876g), false);
                }
                Callback.CommonCallback commonCallback3 = this.f40873d;
                if (commonCallback3 == null) {
                    return;
                }
                commonCallback3.onFinished();
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
            }
        }
    }

    @SuppressLint({"ViewConstructor", "AppCompatCustomView"})
    /* renamed from: org.xutils.image.a$d */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/a$d.class */
    public static final class C9676d extends ImageView {

        /* renamed from: d */
        private static final AtomicInteger f40877d = new AtomicInteger(0);

        /* renamed from: e */
        private final int f40878e = f40877d.incrementAndGet();

        /* renamed from: f */
        private Drawable f40879f;

        public C9676d() {
            super(C9682x.app());
        }

        @Override // android.widget.ImageView
        public Drawable getDrawable() {
            return this.f40879f;
        }

        public int hashCode() {
            return this.f40878e;
        }

        @Override // android.widget.ImageView
        public void setImageDrawable(Drawable drawable) {
            this.f40879f = drawable;
        }

        @Override // android.view.View
        public void setLayerType(int i, Paint paint) {
        }

        @Override // android.widget.ImageView
        public void setScaleType(ImageView.ScaleType scaleType) {
        }

        @Override // android.view.View
        public void startAnimation(Animation animation) {
        }
    }

    static {
        C9673a c9673a = new C9673a(4194304);
        f40853c = c9673a;
        int memoryClass = (((ActivityManager) C9682x.app().getSystemService("activity")).getMemoryClass() * 1048576) / 8;
        if (memoryClass < 4194304) {
            memoryClass = 4194304;
        }
        c9673a.resize(memoryClass);
        f40854d = new HashMap<>();
        f40855e = File.class;
    }

    private C9672a() {
    }

    /* renamed from: f */
    public static void m145f() {
        LruDiskCache.getDiskCache("xUtils_img").clearCacheFiles();
    }

    /* renamed from: g */
    public static void m144g() {
        f40853c.evictAll();
    }

    /* renamed from: h */
    private static RequestParams m143h(Context context, String str, ImageOptions imageOptions) {
        RequestParams requestParams = new RequestParams(str);
        if (context != null) {
            requestParams.setContext(context);
        }
        requestParams.setCacheDirName("xUtils_img");
        requestParams.setConnectTimeout(8000);
        requestParams.setPriority(Priority.BG_LOW);
        requestParams.setExecutor(f40852b);
        requestParams.setCancelFast(true);
        requestParams.setUseCookie(false);
        RequestParams requestParams2 = requestParams;
        if (imageOptions != null) {
            ImageOptions.ParamsBuilder paramsBuilder = imageOptions.getParamsBuilder();
            requestParams2 = requestParams;
            if (paramsBuilder != null) {
                requestParams2 = paramsBuilder.buildParams(requestParams, imageOptions);
            }
        }
        return requestParams2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00db, code lost:
        if (r0.isRecycled() != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x021c  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.xutils.common.Callback.Cancelable m142i(android.widget.ImageView r6, java.lang.String r7, org.xutils.image.ImageOptions r8, int r9, org.xutils.common.Callback.CommonCallback<android.graphics.drawable.Drawable> r10) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.image.C9672a.m142i(android.widget.ImageView, java.lang.String, org.xutils.image.ImageOptions, int, org.xutils.common.Callback$CommonCallback):org.xutils.common.Callback$Cancelable");
    }

    /* renamed from: j */
    public static Callback.Cancelable m141j(String str, ImageOptions imageOptions, Callback.CommonCallback<Drawable> commonCallback) {
        if (TextUtils.isEmpty(str)) {
            m138m(null, imageOptions, "url is null", commonCallback);
            return null;
        }
        return m142i(new C9676d(), str, imageOptions, 0, commonCallback);
    }

    /* renamed from: k */
    public static Callback.Cancelable m140k(String str, ImageOptions imageOptions, Callback.CacheCallback<File> cacheCallback) {
        if (TextUtils.isEmpty(str)) {
            m138m(null, imageOptions, "url is null", cacheCallback);
            return null;
        }
        return C9682x.http().get(m143h(null, str, imageOptions), cacheCallback);
    }

    /* renamed from: l */
    private Callback.Cancelable m139l(ImageView imageView, String str, ImageOptions imageOptions, Callback.CommonCallback<Drawable> commonCallback) {
        this.f40858h = new WeakReference<>(imageView);
        this.f40857g = imageOptions;
        this.f40856f = new C9677b(str, imageOptions);
        this.f40866p = commonCallback;
        if (commonCallback instanceof Callback.ProgressCallback) {
            this.f40869s = (Callback.ProgressCallback) commonCallback;
        }
        if (commonCallback instanceof Callback.PrepareCallback) {
            this.f40867q = (Callback.PrepareCallback) commonCallback;
        }
        if (commonCallback instanceof Callback.CacheCallback) {
            this.f40868r = (Callback.CacheCallback) commonCallback;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable == null || imageOptions.isForceLoadingDrawable()) {
            drawable = imageOptions.getLoadingDrawable(imageView);
            imageView.setScaleType(imageOptions.getPlaceholderScaleType());
        }
        imageView.setImageDrawable(new AsyncDrawable(this, drawable));
        RequestParams m143h = m143h(imageView.getContext(), str, imageOptions);
        if (imageView instanceof C9676d) {
            HashMap<String, C9676d> hashMap = f40854d;
            synchronized (hashMap) {
                hashMap.put(imageView.hashCode() + str, (C9676d) imageView);
            }
        }
        Callback.Cancelable cancelable = C9682x.http().get(m143h, this);
        this.f40865o = cancelable;
        return cancelable;
    }

    /* renamed from: m */
    private static void m138m(ImageView imageView, ImageOptions imageOptions, String str, Callback.CommonCallback<?> commonCallback) {
        C9682x.task().autoPost(new RunnableC9675c(commonCallback, imageView, imageOptions, str));
    }

    /* renamed from: n */
    private void m137n() {
        ImageView imageView = this.f40858h.get();
        if (imageView != null) {
            Drawable failureDrawable = this.f40857g.getFailureDrawable(imageView);
            imageView.setScaleType(this.f40857g.getPlaceholderScaleType());
            imageView.setImageDrawable(failureDrawable);
        }
    }

    /* renamed from: o */
    private void m136o(Drawable drawable) {
        ImageView imageView = this.f40858h.get();
        if (imageView != null) {
            imageView.setScaleType(this.f40857g.getImageScaleType());
            if (drawable instanceof GifDrawable) {
                if (imageView.getScaleType() == ImageView.ScaleType.CENTER) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                }
                imageView.setLayerType(1, null);
            }
            if (this.f40857g.getAnimation() != null) {
                ImageAnimationHelper.animationDisplay(imageView, drawable, this.f40857g.getAnimation());
            } else if (this.f40857g.isFadeIn()) {
                ImageAnimationHelper.fadeInDisplay(imageView, drawable);
            } else {
                imageView.setImageDrawable(drawable);
            }
        }
    }

    /* renamed from: p */
    private boolean m135p(boolean z) {
        ImageView imageView = this.f40858h.get();
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof AsyncDrawable)) {
                if (!z) {
                    return true;
                }
                cancel();
                return false;
            }
            C9672a imageLoader = ((AsyncDrawable) drawable).getImageLoader();
            if (imageLoader == null || imageLoader == this) {
                return true;
            }
            if (this.f40860j > imageLoader.f40860j) {
                imageLoader.cancel();
                return true;
            }
            cancel();
            return false;
        }
        return false;
    }

    @Override // org.xutils.common.Callback.Cancelable
    public void cancel() {
        this.f40861k = true;
        this.f40862l = true;
        Callback.Cancelable cancelable = this.f40865o;
        if (cancelable != null) {
            cancelable.cancel();
        }
    }

    @Override // org.xutils.common.Callback.TypedCallback
    public Type getLoadType() {
        return f40855e;
    }

    @Override // org.xutils.common.Callback.Cancelable
    public boolean isCancelled() {
        boolean z = false;
        if (this.f40862l || !m135p(false)) {
            z = true;
        }
        return z;
    }

    public boolean onCache(Drawable drawable) {
        if (m135p(true) && drawable != null) {
            this.f40870t = true;
            m136o(drawable);
            Callback.CacheCallback<Drawable> cacheCallback = this.f40868r;
            if (cacheCallback != null) {
                return cacheCallback.onCache(drawable);
            }
            Callback.CommonCallback<Drawable> commonCallback = this.f40866p;
            if (commonCallback == null) {
                return true;
            }
            commonCallback.onSuccess(drawable);
            return true;
        }
        return false;
    }

    @Override // org.xutils.common.Callback.CommonCallback
    public void onCancelled(Callback.CancelledException cancelledException) {
        Callback.CommonCallback<Drawable> commonCallback;
        this.f40861k = true;
        if (m135p(false) && (commonCallback = this.f40866p) != null) {
            commonCallback.onCancelled(cancelledException);
        }
    }

    @Override // org.xutils.common.Callback.CommonCallback
    public void onError(Throwable th, boolean z) {
        this.f40861k = true;
        if (!m135p(false)) {
            return;
        }
        int i = this.f40859i + 1;
        this.f40859i = i;
        if (!(th instanceof FileLockedException) || i >= 5) {
            LogUtil.m258e(this.f40856f.f40880a, th);
            m137n();
            Callback.CommonCallback<Drawable> commonCallback = this.f40866p;
            if (commonCallback == null) {
                return;
            }
            commonCallback.onError(th, z);
            return;
        }
        LogUtil.m261d("ImageFileLocked: " + this.f40856f.f40880a);
        C9682x.task().postDelayed(new RunnableC9674b(), (long) (((this.f40859i - 1) * 100) + 10));
        this.f40864n = true;
    }

    @Override // org.xutils.common.Callback.CommonCallback
    public void onFinished() {
        this.f40861k = true;
        if (this.f40864n) {
            return;
        }
        ImageView imageView = this.f40858h.get();
        if (imageView instanceof C9676d) {
            HashMap<String, C9676d> hashMap = f40854d;
            synchronized (hashMap) {
                hashMap.remove(imageView.hashCode() + this.f40856f.f40880a);
            }
        }
        Callback.CommonCallback<Drawable> commonCallback = this.f40866p;
        if (commonCallback == null) {
            return;
        }
        commonCallback.onFinished();
    }

    @Override // org.xutils.common.Callback.ProgressCallback
    public void onLoading(long j, long j2, boolean z) {
        Callback.ProgressCallback<Drawable> progressCallback;
        if (!m135p(true) || (progressCallback = this.f40869s) == null) {
            return;
        }
        progressCallback.onLoading(j, j2, z);
    }

    @Override // org.xutils.common.Callback.ProgressCallback
    public void onStarted() {
        Callback.ProgressCallback<Drawable> progressCallback;
        if (!m135p(true) || (progressCallback = this.f40869s) == null) {
            return;
        }
        progressCallback.onStarted();
    }

    public void onSuccess(Drawable drawable) {
        if (m135p(!this.f40870t) && drawable != null) {
            m136o(drawable);
            Callback.CommonCallback<Drawable> commonCallback = this.f40866p;
            if (commonCallback == null) {
                return;
            }
            commonCallback.onSuccess(drawable);
        }
    }

    @Override // org.xutils.common.Callback.ProgressCallback
    public void onWaiting() {
        Callback.ProgressCallback<Drawable> progressCallback;
        if (this.f40863m || (progressCallback = this.f40869s) == null) {
            return;
        }
        progressCallback.onWaiting();
    }

    public Drawable prepare(File file) {
        Drawable drawable = null;
        if (!m135p(true)) {
            return null;
        }
        if (!file.exists()) {
            throw new FileNotFoundException(file.getAbsolutePath());
        }
        try {
            Callback.PrepareCallback<File, Drawable> prepareCallback = this.f40867q;
            if (prepareCallback != null) {
                drawable = prepareCallback.prepare(file);
            }
            Drawable drawable2 = drawable;
            if (drawable == null) {
                drawable2 = ImageDecoder.m174c(file, this.f40857g, this);
            }
            if (drawable2 != null && (drawable2 instanceof AbstractC9679d)) {
                ((AbstractC9679d) drawable2).setMemCacheKey(this.f40856f);
                f40853c.put(this.f40856f, drawable2);
            }
            return drawable2;
        } catch (IOException e) {
            IOUtil.deleteFileOrDir(file);
            throw e;
        }
    }
}
