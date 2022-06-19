package org.xutils.image;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.io.File;
import org.xutils.C9682x;
import org.xutils.ImageManager;
import org.xutils.common.Callback;
/* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageManagerImpl.class */
public final class ImageManagerImpl implements ImageManager {

    /* renamed from: a */
    private static final Object f40810a = new Object();

    /* renamed from: b */
    private static volatile ImageManagerImpl f40811b;

    /* renamed from: org.xutils.image.ImageManagerImpl$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageManagerImpl$a.class */
    class RunnableC9668a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ImageView f40812d;

        /* renamed from: e */
        final /* synthetic */ String f40813e;

        RunnableC9668a(ImageView imageView, String str) {
            ImageManagerImpl.this = r4;
            this.f40812d = imageView;
            this.f40813e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9672a.m142i(this.f40812d, this.f40813e, null, 0, null);
        }
    }

    /* renamed from: org.xutils.image.ImageManagerImpl$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageManagerImpl$b.class */
    class RunnableC9669b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ImageView f40815d;

        /* renamed from: e */
        final /* synthetic */ String f40816e;

        /* renamed from: f */
        final /* synthetic */ ImageOptions f40817f;

        RunnableC9669b(ImageView imageView, String str, ImageOptions imageOptions) {
            ImageManagerImpl.this = r4;
            this.f40815d = imageView;
            this.f40816e = str;
            this.f40817f = imageOptions;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9672a.m142i(this.f40815d, this.f40816e, this.f40817f, 0, null);
        }
    }

    /* renamed from: org.xutils.image.ImageManagerImpl$c */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageManagerImpl$c.class */
    class RunnableC9670c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ImageView f40819d;

        /* renamed from: e */
        final /* synthetic */ String f40820e;

        /* renamed from: f */
        final /* synthetic */ Callback.CommonCallback f40821f;

        RunnableC9670c(ImageView imageView, String str, Callback.CommonCallback commonCallback) {
            ImageManagerImpl.this = r4;
            this.f40819d = imageView;
            this.f40820e = str;
            this.f40821f = commonCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9672a.m142i(this.f40819d, this.f40820e, null, 0, this.f40821f);
        }
    }

    /* renamed from: org.xutils.image.ImageManagerImpl$d */
    /* loaded from: classes2-dex2jar.jar:org/xutils/image/ImageManagerImpl$d.class */
    class RunnableC9671d implements Runnable {

        /* renamed from: d */
        final /* synthetic */ ImageView f40823d;

        /* renamed from: e */
        final /* synthetic */ String f40824e;

        /* renamed from: f */
        final /* synthetic */ ImageOptions f40825f;

        /* renamed from: g */
        final /* synthetic */ Callback.CommonCallback f40826g;

        RunnableC9671d(ImageView imageView, String str, ImageOptions imageOptions, Callback.CommonCallback commonCallback) {
            ImageManagerImpl.this = r4;
            this.f40823d = imageView;
            this.f40824e = str;
            this.f40825f = imageOptions;
            this.f40826g = commonCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9672a.m142i(this.f40823d, this.f40824e, this.f40825f, 0, this.f40826g);
        }
    }

    private ImageManagerImpl() {
    }

    public static void registerInstance() {
        if (f40811b == null) {
            synchronized (f40810a) {
                if (f40811b == null) {
                    f40811b = new ImageManagerImpl();
                }
            }
        }
        C9682x.Ext.setImageManager(f40811b);
    }

    @Override // org.xutils.ImageManager
    public void bind(ImageView imageView, String str) {
        C9682x.task().autoPost(new RunnableC9668a(imageView, str));
    }

    @Override // org.xutils.ImageManager
    public void bind(ImageView imageView, String str, Callback.CommonCallback<Drawable> commonCallback) {
        C9682x.task().autoPost(new RunnableC9670c(imageView, str, commonCallback));
    }

    @Override // org.xutils.ImageManager
    public void bind(ImageView imageView, String str, ImageOptions imageOptions) {
        C9682x.task().autoPost(new RunnableC9669b(imageView, str, imageOptions));
    }

    @Override // org.xutils.ImageManager
    public void bind(ImageView imageView, String str, ImageOptions imageOptions, Callback.CommonCallback<Drawable> commonCallback) {
        C9682x.task().autoPost(new RunnableC9671d(imageView, str, imageOptions, commonCallback));
    }

    @Override // org.xutils.ImageManager
    public void clearCacheFiles() {
        C9672a.m145f();
        ImageDecoder.m175b();
    }

    @Override // org.xutils.ImageManager
    public void clearMemCache() {
        C9672a.m144g();
    }

    @Override // org.xutils.ImageManager
    public Callback.Cancelable loadDrawable(String str, ImageOptions imageOptions, Callback.CommonCallback<Drawable> commonCallback) {
        return C9672a.m141j(str, imageOptions, commonCallback);
    }

    @Override // org.xutils.ImageManager
    public Callback.Cancelable loadFile(String str, ImageOptions imageOptions, Callback.CacheCallback<File> cacheCallback) {
        return C9672a.m140k(str, imageOptions, cacheCallback);
    }
}
