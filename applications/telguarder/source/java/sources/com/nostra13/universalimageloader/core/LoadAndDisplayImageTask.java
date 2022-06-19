package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.decode.ImageDecoder;
import com.nostra13.universalimageloader.core.decode.ImageDecodingInfo;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.nostra13.universalimageloader.core.listener.ImageLoadingProgressListener;
import com.nostra13.universalimageloader.utils.C1836L;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/LoadAndDisplayImageTask.class */
public final class LoadAndDisplayImageTask implements Runnable, IoUtils.CopyListener {
    private static final String ERROR_NO_IMAGE_STREAM = "No stream for image [%s]";
    private static final String ERROR_POST_PROCESSOR_NULL = "Post-processor returned null [%s]";
    private static final String ERROR_PRE_PROCESSOR_NULL = "Pre-processor returned null [%s]";
    private static final String ERROR_PROCESSOR_FOR_DISK_CACHE_NULL = "Bitmap processor for disk cache returned null [%s]";
    private static final String LOG_CACHE_IMAGE_IN_MEMORY = "Cache image in memory [%s]";
    private static final String LOG_CACHE_IMAGE_ON_DISK = "Cache image on disk [%s]";
    private static final String LOG_DELAY_BEFORE_LOADING = "Delay %d ms before loading...  [%s]";
    private static final String LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING = "...Get cached bitmap from memory after waiting. [%s]";
    private static final String LOG_LOAD_IMAGE_FROM_DISK_CACHE = "Load image from disk cache [%s]";
    private static final String LOG_LOAD_IMAGE_FROM_NETWORK = "Load image from network [%s]";
    private static final String LOG_POSTPROCESS_IMAGE = "PostProcess image before displaying [%s]";
    private static final String LOG_PREPROCESS_IMAGE = "PreProcess image before caching in memory [%s]";
    private static final String LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK = "Process image before cache on disk [%s]";
    private static final String LOG_RESIZE_CACHED_IMAGE_FILE = "Resize image in disk cache [%s]";
    private static final String LOG_RESUME_AFTER_PAUSE = ".. Resume loading [%s]";
    private static final String LOG_START_DISPLAY_IMAGE_TASK = "Start display image task [%s]";
    private static final String LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED = "ImageAware was collected by GC. Task is cancelled. [%s]";
    private static final String LOG_TASK_CANCELLED_IMAGEAWARE_REUSED = "ImageAware is reused for another image. Task is cancelled. [%s]";
    private static final String LOG_TASK_INTERRUPTED = "Task was interrupted [%s]";
    private static final String LOG_WAITING_FOR_IMAGE_LOADED = "Image already is loading. Waiting... [%s]";
    private static final String LOG_WAITING_FOR_RESUME = "ImageLoader is paused. Waiting...  [%s]";
    private final ImageLoaderConfiguration configuration;
    private final ImageDecoder decoder;
    private final ImageDownloader downloader;
    private final ImageLoaderEngine engine;
    private final Handler handler;
    final ImageAware imageAware;
    private final ImageLoadingInfo imageLoadingInfo;
    final ImageLoadingListener listener;
    private LoadedFrom loadedFrom = LoadedFrom.NETWORK;
    private final String memoryCacheKey;
    private final ImageDownloader networkDeniedDownloader;
    final DisplayImageOptions options;
    final ImageLoadingProgressListener progressListener;
    private final ImageDownloader slowNetworkDownloader;
    private final boolean syncLoading;
    private final ImageSize targetSize;
    final String uri;

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException.class */
    public class TaskCancelledException extends Exception {
        TaskCancelledException() {
            LoadAndDisplayImageTask.this = r4;
        }
    }

    public LoadAndDisplayImageTask(ImageLoaderEngine imageLoaderEngine, ImageLoadingInfo imageLoadingInfo, Handler handler) {
        this.engine = imageLoaderEngine;
        this.imageLoadingInfo = imageLoadingInfo;
        this.handler = handler;
        ImageLoaderConfiguration imageLoaderConfiguration = imageLoaderEngine.configuration;
        this.configuration = imageLoaderConfiguration;
        this.downloader = imageLoaderConfiguration.downloader;
        this.networkDeniedDownloader = imageLoaderConfiguration.networkDeniedDownloader;
        this.slowNetworkDownloader = imageLoaderConfiguration.slowNetworkDownloader;
        this.decoder = imageLoaderConfiguration.decoder;
        this.uri = imageLoadingInfo.uri;
        this.memoryCacheKey = imageLoadingInfo.memoryCacheKey;
        this.imageAware = imageLoadingInfo.imageAware;
        this.targetSize = imageLoadingInfo.targetSize;
        DisplayImageOptions displayImageOptions = imageLoadingInfo.options;
        this.options = displayImageOptions;
        this.listener = imageLoadingInfo.listener;
        this.progressListener = imageLoadingInfo.progressListener;
        this.syncLoading = displayImageOptions.isSyncLoading();
    }

    private void checkTaskInterrupted() throws TaskCancelledException {
        if (!isTaskInterrupted()) {
            return;
        }
        throw new TaskCancelledException();
    }

    private void checkTaskNotActual() throws TaskCancelledException {
        checkViewCollected();
        checkViewReused();
    }

    private void checkViewCollected() throws TaskCancelledException {
        if (!isViewCollected()) {
            return;
        }
        throw new TaskCancelledException();
    }

    private void checkViewReused() throws TaskCancelledException {
        if (!isViewReused()) {
            return;
        }
        throw new TaskCancelledException();
    }

    private Bitmap decodeImage(String str) throws IOException {
        return this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, str, this.uri, this.targetSize, this.imageAware.getScaleType(), getDownloader(), this.options));
    }

    private boolean delayIfNeed() {
        if (this.options.shouldDelayBeforeLoading()) {
            C1836L.m1114d(LOG_DELAY_BEFORE_LOADING, Integer.valueOf(this.options.getDelayBeforeLoading()), this.memoryCacheKey);
            try {
                Thread.sleep(this.options.getDelayBeforeLoading());
                return isTaskNotActual();
            } catch (InterruptedException e) {
                C1836L.m1113e(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
                return true;
            }
        }
        return false;
    }

    private boolean downloadImage() throws IOException {
        InputStream stream = getDownloader().getStream(this.uri, this.options.getExtraForDownloader());
        if (stream == null) {
            C1836L.m1113e(ERROR_NO_IMAGE_STREAM, this.memoryCacheKey);
            return false;
        }
        try {
            return this.configuration.diskCache.save(this.uri, stream, this);
        } finally {
            IoUtils.closeSilently(stream);
        }
    }

    private void fireCancelEvent() {
        if (this.syncLoading || isTaskInterrupted()) {
            return;
        }
        runTask(new Runnable() { // from class: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.3
            @Override // java.lang.Runnable
            public void run() {
                LoadAndDisplayImageTask.this.listener.onLoadingCancelled(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView());
            }
        }, false, this.handler, this.engine);
    }

    private void fireFailEvent(final FailReason.FailType failType, final Throwable th) {
        if (this.syncLoading || isTaskInterrupted() || isTaskNotActual()) {
            return;
        }
        runTask(new Runnable() { // from class: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.2
            @Override // java.lang.Runnable
            public void run() {
                if (LoadAndDisplayImageTask.this.options.shouldShowImageOnFail()) {
                    LoadAndDisplayImageTask.this.imageAware.setImageDrawable(LoadAndDisplayImageTask.this.options.getImageOnFail(LoadAndDisplayImageTask.this.configuration.resources));
                }
                LoadAndDisplayImageTask.this.listener.onLoadingFailed(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), new FailReason(failType, th));
            }
        }, false, this.handler, this.engine);
    }

    private boolean fireProgressEvent(final int i, final int i2) {
        if (isTaskInterrupted() || isTaskNotActual()) {
            return false;
        }
        if (this.progressListener == null) {
            return true;
        }
        runTask(new Runnable() { // from class: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.1
            @Override // java.lang.Runnable
            public void run() {
                LoadAndDisplayImageTask.this.progressListener.onProgressUpdate(LoadAndDisplayImageTask.this.uri, LoadAndDisplayImageTask.this.imageAware.getWrappedView(), i, i2);
            }
        }, false, this.handler, this.engine);
        return true;
    }

    private ImageDownloader getDownloader() {
        return this.engine.isNetworkDenied() ? this.networkDeniedDownloader : this.engine.isSlowNetwork() ? this.slowNetworkDownloader : this.downloader;
    }

    private boolean isTaskInterrupted() {
        if (Thread.interrupted()) {
            C1836L.m1114d(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
            return true;
        }
        return false;
    }

    private boolean isTaskNotActual() {
        return isViewCollected() || isViewReused();
    }

    private boolean isViewCollected() {
        if (this.imageAware.isCollected()) {
            C1836L.m1114d(LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED, this.memoryCacheKey);
            return true;
        }
        return false;
    }

    private boolean isViewReused() {
        if (!this.memoryCacheKey.equals(this.engine.getLoadingUriForView(this.imageAware))) {
            C1836L.m1114d(LOG_TASK_CANCELLED_IMAGEAWARE_REUSED, this.memoryCacheKey);
            return true;
        }
        return false;
    }

    private boolean resizeAndSaveImage(int i, int i2) throws IOException {
        File file = this.configuration.diskCache.get(this.uri);
        boolean z = false;
        if (file != null) {
            z = false;
            if (file.exists()) {
                Bitmap decode = this.decoder.decode(new ImageDecodingInfo(this.memoryCacheKey, ImageDownloader.Scheme.FILE.wrap(file.getAbsolutePath()), this.uri, new ImageSize(i, i2), ViewScaleType.FIT_INSIDE, getDownloader(), new DisplayImageOptions.Builder().cloneFrom(this.options).imageScaleType(ImageScaleType.IN_SAMPLE_INT).build()));
                Bitmap bitmap = decode;
                if (decode != null) {
                    bitmap = decode;
                    if (this.configuration.processorForDiskCache != null) {
                        C1836L.m1114d(LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK, this.memoryCacheKey);
                        Bitmap process = this.configuration.processorForDiskCache.process(decode);
                        bitmap = process;
                        if (process == null) {
                            C1836L.m1113e(ERROR_PROCESSOR_FOR_DISK_CACHE_NULL, this.memoryCacheKey);
                            bitmap = process;
                        }
                    }
                }
                z = false;
                if (bitmap != null) {
                    z = this.configuration.diskCache.save(this.uri, bitmap);
                    bitmap.recycle();
                }
            }
        }
        return z;
    }

    public static void runTask(Runnable runnable, boolean z, Handler handler, ImageLoaderEngine imageLoaderEngine) {
        if (z) {
            runnable.run();
        } else if (handler == null) {
            imageLoaderEngine.fireCallback(runnable);
        } else {
            handler.post(runnable);
        }
    }

    private boolean tryCacheImageOnDisk() throws TaskCancelledException {
        boolean z;
        C1836L.m1114d(LOG_CACHE_IMAGE_ON_DISK, this.memoryCacheKey);
        try {
            z = downloadImage();
            if (z) {
                int i = this.configuration.maxImageWidthForDiskCache;
                int i2 = this.configuration.maxImageHeightForDiskCache;
                if (i > 0 || i2 > 0) {
                    C1836L.m1114d(LOG_RESIZE_CACHED_IMAGE_FILE, this.memoryCacheKey);
                    resizeAndSaveImage(i, i2);
                }
            }
        } catch (IOException e) {
            C1836L.m1112e(e);
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
        if (r9.getHeight() <= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0175, code lost:
        if (r0.getHeight() <= 0) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap tryLoadBitmap() throws com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.TaskCancelledException {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.tryLoadBitmap():android.graphics.Bitmap");
    }

    private boolean waitIfPaused() {
        AtomicBoolean pause = this.engine.getPause();
        if (pause.get()) {
            synchronized (this.engine.getPauseLock()) {
                if (pause.get()) {
                    C1836L.m1114d(LOG_WAITING_FOR_RESUME, this.memoryCacheKey);
                    try {
                        this.engine.getPauseLock().wait();
                        C1836L.m1114d(LOG_RESUME_AFTER_PAUSE, this.memoryCacheKey);
                    } catch (InterruptedException e) {
                        C1836L.m1113e(LOG_TASK_INTERRUPTED, this.memoryCacheKey);
                        return true;
                    }
                }
            }
        }
        return isTaskNotActual();
    }

    public String getLoadingUri() {
        return this.uri;
    }

    @Override // com.nostra13.universalimageloader.utils.IoUtils.CopyListener
    public boolean onBytesCopied(int i, int i2) {
        return this.syncLoading || fireProgressEvent(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0114  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nostra13.universalimageloader.core.LoadAndDisplayImageTask.run():void");
    }
}
