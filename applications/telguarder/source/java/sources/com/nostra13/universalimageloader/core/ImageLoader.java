package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.nostra13.universalimageloader.cache.disc.DiskCache;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.NonViewAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.C1836L;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/ImageLoader.class */
public class ImageLoader {
    private static final String ERROR_INIT_CONFIG_WITH_NULL = "ImageLoader configuration can not be initialized with null";
    private static final String ERROR_NOT_INIT = "ImageLoader must be init with configuration before using";
    private static final String ERROR_WRONG_ARGUMENTS = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)";
    static final String LOG_DESTROY = "Destroy ImageLoader";
    static final String LOG_INIT_CONFIG = "Initialize ImageLoader with configuration";
    static final String LOG_LOAD_IMAGE_FROM_MEMORY_CACHE = "Load image from memory cache [%s]";
    public static final String TAG = "ImageLoader";
    private static final String WARNING_RE_INIT_CONFIG = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.";
    private static volatile ImageLoader instance;
    private ImageLoaderConfiguration configuration;
    private ImageLoadingListener defaultListener = new SimpleImageLoadingListener();
    private ImageLoaderEngine engine;

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener.class */
    public static class SyncImageLoadingListener extends SimpleImageLoadingListener {
        private Bitmap loadedImage;

        private SyncImageLoadingListener() {
        }

        public Bitmap getLoadedBitmap() {
            return this.loadedImage;
        }

        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
            this.loadedImage = bitmap;
        }
    }

    protected ImageLoader() {
    }

    private void checkConfiguration() {
        if (this.configuration != null) {
            return;
        }
        throw new IllegalStateException(ERROR_NOT_INIT);
    }

    private static Handler defineHandler(DisplayImageOptions displayImageOptions) {
        Handler handler;
        Handler handler2 = displayImageOptions.getHandler();
        if (displayImageOptions.isSyncLoading()) {
            handler = null;
        } else {
            handler = handler2;
            if (handler2 == null) {
                handler = handler2;
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    handler = new Handler();
                }
            }
        }
        return handler;
    }

    public static ImageLoader getInstance() {
        if (instance == null) {
            synchronized (ImageLoader.class) {
                try {
                    if (instance == null) {
                        instance = new ImageLoader();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void cancelDisplayTask(ImageView imageView) {
        this.engine.cancelDisplayTaskFor(new ImageViewAware(imageView));
    }

    public void cancelDisplayTask(ImageAware imageAware) {
        this.engine.cancelDisplayTaskFor(imageAware);
    }

    @Deprecated
    public void clearDiscCache() {
        clearDiskCache();
    }

    public void clearDiskCache() {
        checkConfiguration();
        this.configuration.diskCache.clear();
    }

    public void clearMemoryCache() {
        checkConfiguration();
        this.configuration.memoryCache.clear();
    }

    public void denyNetworkDownloads(boolean z) {
        this.engine.denyNetworkDownloads(z);
    }

    public void destroy() {
        if (this.configuration != null) {
            C1836L.m1114d(LOG_DESTROY, new Object[0]);
        }
        stop();
        this.configuration.diskCache.close();
        this.engine = null;
        this.configuration = null;
    }

    public void displayImage(String str, ImageView imageView) {
        displayImage(str, new ImageViewAware(imageView), (DisplayImageOptions) null, (ImageLoadingListener) null, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageView imageView, DisplayImageOptions displayImageOptions) {
        displayImage(str, new ImageViewAware(imageView), displayImageOptions, (ImageLoadingListener) null, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageView imageView, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener) {
        displayImage(str, imageView, displayImageOptions, imageLoadingListener, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageView imageView, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener, ImageLoadingProgressListener imageLoadingProgressListener) {
        displayImage(str, new ImageViewAware(imageView), displayImageOptions, imageLoadingListener, imageLoadingProgressListener);
    }

    public void displayImage(String str, ImageView imageView, ImageSize imageSize) {
        displayImage(str, new ImageViewAware(imageView), null, imageSize, null, null);
    }

    public void displayImage(String str, ImageView imageView, ImageLoadingListener imageLoadingListener) {
        displayImage(str, new ImageViewAware(imageView), (DisplayImageOptions) null, imageLoadingListener, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageAware imageAware) {
        displayImage(str, imageAware, (DisplayImageOptions) null, (ImageLoadingListener) null, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageAware imageAware, DisplayImageOptions displayImageOptions) {
        displayImage(str, imageAware, displayImageOptions, (ImageLoadingListener) null, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageAware imageAware, DisplayImageOptions displayImageOptions, ImageSize imageSize, ImageLoadingListener imageLoadingListener, ImageLoadingProgressListener imageLoadingProgressListener) {
        checkConfiguration();
        if (imageAware != null) {
            ImageLoadingListener imageLoadingListener2 = imageLoadingListener;
            if (imageLoadingListener == null) {
                imageLoadingListener2 = this.defaultListener;
            }
            DisplayImageOptions displayImageOptions2 = displayImageOptions;
            if (displayImageOptions == null) {
                displayImageOptions2 = this.configuration.defaultDisplayImageOptions;
            }
            if (TextUtils.isEmpty(str)) {
                this.engine.cancelDisplayTaskFor(imageAware);
                imageLoadingListener2.onLoadingStarted(str, imageAware.getWrappedView());
                if (displayImageOptions2.shouldShowImageForEmptyUri()) {
                    imageAware.setImageDrawable(displayImageOptions2.getImageForEmptyUri(this.configuration.resources));
                } else {
                    imageAware.setImageDrawable(null);
                }
                imageLoadingListener2.onLoadingComplete(str, imageAware.getWrappedView(), null);
                return;
            }
            ImageSize imageSize2 = imageSize;
            if (imageSize == null) {
                imageSize2 = ImageSizeUtils.defineTargetSizeForView(imageAware, this.configuration.getMaxImageSize());
            }
            String generateKey = MemoryCacheUtils.generateKey(str, imageSize2);
            this.engine.prepareDisplayTaskFor(imageAware, generateKey);
            imageLoadingListener2.onLoadingStarted(str, imageAware.getWrappedView());
            Bitmap bitmap = this.configuration.memoryCache.get(generateKey);
            if (bitmap == null || bitmap.isRecycled()) {
                if (displayImageOptions2.shouldShowImageOnLoading()) {
                    imageAware.setImageDrawable(displayImageOptions2.getImageOnLoading(this.configuration.resources));
                } else if (displayImageOptions2.isResetViewBeforeLoading()) {
                    imageAware.setImageDrawable(null);
                }
                LoadAndDisplayImageTask loadAndDisplayImageTask = new LoadAndDisplayImageTask(this.engine, new ImageLoadingInfo(str, imageAware, imageSize2, generateKey, displayImageOptions2, imageLoadingListener2, imageLoadingProgressListener, this.engine.getLockForUri(str)), defineHandler(displayImageOptions2));
                if (displayImageOptions2.isSyncLoading()) {
                    loadAndDisplayImageTask.run();
                    return;
                } else {
                    this.engine.submit(loadAndDisplayImageTask);
                    return;
                }
            }
            C1836L.m1114d(LOG_LOAD_IMAGE_FROM_MEMORY_CACHE, generateKey);
            if (!displayImageOptions2.shouldPostProcess()) {
                displayImageOptions2.getDisplayer().display(bitmap, imageAware, LoadedFrom.MEMORY_CACHE);
                imageLoadingListener2.onLoadingComplete(str, imageAware.getWrappedView(), bitmap);
                return;
            }
            ProcessAndDisplayImageTask processAndDisplayImageTask = new ProcessAndDisplayImageTask(this.engine, bitmap, new ImageLoadingInfo(str, imageAware, imageSize2, generateKey, displayImageOptions2, imageLoadingListener2, imageLoadingProgressListener, this.engine.getLockForUri(str)), defineHandler(displayImageOptions2));
            if (displayImageOptions2.isSyncLoading()) {
                processAndDisplayImageTask.run();
                return;
            } else {
                this.engine.submit(processAndDisplayImageTask);
                return;
            }
        }
        throw new IllegalArgumentException(ERROR_WRONG_ARGUMENTS);
    }

    public void displayImage(String str, ImageAware imageAware, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener) {
        displayImage(str, imageAware, displayImageOptions, imageLoadingListener, (ImageLoadingProgressListener) null);
    }

    public void displayImage(String str, ImageAware imageAware, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener, ImageLoadingProgressListener imageLoadingProgressListener) {
        displayImage(str, imageAware, displayImageOptions, null, imageLoadingListener, imageLoadingProgressListener);
    }

    public void displayImage(String str, ImageAware imageAware, ImageLoadingListener imageLoadingListener) {
        displayImage(str, imageAware, (DisplayImageOptions) null, imageLoadingListener, (ImageLoadingProgressListener) null);
    }

    @Deprecated
    public DiskCache getDiscCache() {
        return getDiskCache();
    }

    public DiskCache getDiskCache() {
        checkConfiguration();
        return this.configuration.diskCache;
    }

    public String getLoadingUriForView(ImageView imageView) {
        return this.engine.getLoadingUriForView(new ImageViewAware(imageView));
    }

    public String getLoadingUriForView(ImageAware imageAware) {
        return this.engine.getLoadingUriForView(imageAware);
    }

    public MemoryCache getMemoryCache() {
        checkConfiguration();
        return this.configuration.memoryCache;
    }

    public void handleSlowNetwork(boolean z) {
        this.engine.handleSlowNetwork(z);
    }

    public void init(ImageLoaderConfiguration imageLoaderConfiguration) {
        synchronized (this) {
            if (imageLoaderConfiguration == null) {
                throw new IllegalArgumentException(ERROR_INIT_CONFIG_WITH_NULL);
            }
            if (this.configuration == null) {
                C1836L.m1114d(LOG_INIT_CONFIG, new Object[0]);
                this.engine = new ImageLoaderEngine(imageLoaderConfiguration);
                this.configuration = imageLoaderConfiguration;
            } else {
                C1836L.m1109w(WARNING_RE_INIT_CONFIG, new Object[0]);
            }
        }
    }

    public boolean isInited() {
        return this.configuration != null;
    }

    public void loadImage(String str, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener) {
        loadImage(str, null, displayImageOptions, imageLoadingListener, null);
    }

    public void loadImage(String str, ImageSize imageSize, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener) {
        loadImage(str, imageSize, displayImageOptions, imageLoadingListener, null);
    }

    public void loadImage(String str, ImageSize imageSize, DisplayImageOptions displayImageOptions, ImageLoadingListener imageLoadingListener, ImageLoadingProgressListener imageLoadingProgressListener) {
        checkConfiguration();
        ImageSize imageSize2 = imageSize;
        if (imageSize == null) {
            imageSize2 = this.configuration.getMaxImageSize();
        }
        DisplayImageOptions displayImageOptions2 = displayImageOptions;
        if (displayImageOptions == null) {
            displayImageOptions2 = this.configuration.defaultDisplayImageOptions;
        }
        displayImage(str, new NonViewAware(str, imageSize2, ViewScaleType.CROP), displayImageOptions2, imageLoadingListener, imageLoadingProgressListener);
    }

    public void loadImage(String str, ImageSize imageSize, ImageLoadingListener imageLoadingListener) {
        loadImage(str, imageSize, null, imageLoadingListener, null);
    }

    public void loadImage(String str, ImageLoadingListener imageLoadingListener) {
        loadImage(str, null, null, imageLoadingListener, null);
    }

    public Bitmap loadImageSync(String str) {
        return loadImageSync(str, null, null);
    }

    public Bitmap loadImageSync(String str, DisplayImageOptions displayImageOptions) {
        return loadImageSync(str, null, displayImageOptions);
    }

    public Bitmap loadImageSync(String str, ImageSize imageSize) {
        return loadImageSync(str, imageSize, null);
    }

    public Bitmap loadImageSync(String str, ImageSize imageSize, DisplayImageOptions displayImageOptions) {
        DisplayImageOptions displayImageOptions2 = displayImageOptions;
        if (displayImageOptions == null) {
            displayImageOptions2 = this.configuration.defaultDisplayImageOptions;
        }
        DisplayImageOptions build = new DisplayImageOptions.Builder().cloneFrom(displayImageOptions2).syncLoading(true).build();
        SyncImageLoadingListener syncImageLoadingListener = new SyncImageLoadingListener();
        loadImage(str, imageSize, build, syncImageLoadingListener);
        return syncImageLoadingListener.getLoadedBitmap();
    }

    public void pause() {
        this.engine.pause();
    }

    public void resume() {
        this.engine.resume();
    }

    public void setDefaultLoadingListener(ImageLoadingListener imageLoadingListener) {
        SimpleImageLoadingListener simpleImageLoadingListener = imageLoadingListener;
        if (imageLoadingListener == null) {
            simpleImageLoadingListener = new SimpleImageLoadingListener();
        }
        this.defaultListener = simpleImageLoadingListener;
    }

    public void stop() {
        this.engine.stop();
    }
}
