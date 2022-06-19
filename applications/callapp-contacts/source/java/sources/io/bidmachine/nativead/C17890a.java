package io.bidmachine.nativead;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastRequest;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.MediaAssetType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.nativead.tasks.DownloadImageTask;
import io.bidmachine.nativead.tasks.DownloadVastVideoTask;
import io.bidmachine.nativead.tasks.DownloadVideoTask;
import io.bidmachine.nativead.utils.NativeNetworkExecutor;
import io.bidmachine.utils.BMError;
import java.io.File;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.bidmachine.nativead.a */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/a.class */
public final class C17890a {
    private static final String DIR_NAME = "native_cache_image";
    private NativeRequest adRequest;
    private AdProcessCallback callback;
    private NativeData nativeData;
    private NativeMediaPrivateData nativeMediaData;
    private final List<Runnable> pendingTasks = new CopyOnWriteArrayList();

    public C17890a(NativeRequest nativeRequest, AdProcessCallback adProcessCallback, NativeData nativeData, NativeMediaPrivateData nativeMediaPrivateData) {
        this.adRequest = nativeRequest;
        this.callback = adProcessCallback;
        this.nativeData = nativeData;
        this.nativeMediaData = nativeMediaPrivateData;
    }

    private void checkTasksCount() {
        if (this.pendingTasks.isEmpty()) {
            notifyNativeCallback();
        }
    }

    private void createIconTask(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.pendingTasks.add(DownloadImageTask.newBuilder(context, str).setOnCacheImageListener(new DownloadImageTask.OnCacheImageListener() { // from class: io.bidmachine.nativead.a.1
                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onFail(DownloadImageTask downloadImageTask) {
                    C17890a.this.removePendingTask(downloadImageTask);
                }

                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onImageSuccess(DownloadImageTask downloadImageTask, Bitmap bitmap) {
                    C17890a.this.nativeMediaData.setIconBitmap(bitmap);
                    C17890a.this.removePendingTask(downloadImageTask);
                }

                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onPathSuccess(DownloadImageTask downloadImageTask, Uri uri) {
                    C17890a.this.nativeMediaData.setIconUri(uri);
                    C17890a.this.removePendingTask(downloadImageTask);
                }
            }).build());
        }
    }

    private void createImageTask(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.pendingTasks.add(DownloadImageTask.newBuilder(context, str).setCheckAspectRatio(true).setOnCacheImageListener(new DownloadImageTask.OnCacheImageListener() { // from class: io.bidmachine.nativead.a.2
                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onFail(DownloadImageTask downloadImageTask) {
                    C17890a.this.removePendingTask(downloadImageTask);
                }

                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onImageSuccess(DownloadImageTask downloadImageTask, Bitmap bitmap) {
                    C17890a.this.nativeMediaData.setImageBitmap(bitmap);
                    C17890a.this.removePendingTask(downloadImageTask);
                }

                @Override // io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener
                public final void onPathSuccess(DownloadImageTask downloadImageTask, Uri uri) {
                    C17890a.this.nativeMediaData.setImageUri(uri);
                    C17890a.this.removePendingTask(downloadImageTask);
                }
            }).build());
        }
    }

    private void createVastVideoTask(final Context context, String str) {
        this.pendingTasks.add(new DownloadVastVideoTask(context, new DownloadVastVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.a.4
            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
            public final void onVideoLoaded(DownloadVastVideoTask downloadVastVideoTask, Uri uri, VastRequest vastRequest) {
                C17890a.this.nativeMediaData.setVideoUri(uri);
                C17890a.this.nativeMediaData.setVastRequest(vastRequest);
                if (TextUtils.isEmpty(C17890a.this.nativeData.getImageUrl()) && uri != null && uri.getPath() != null && new File(uri.getPath()).exists()) {
                    C17890a.this.nativeMediaData.setImageUri(Uri.parse(Utils.retrieveAndSaveFrame(context, uri, C17890a.DIR_NAME)));
                }
                C17890a.this.removePendingTask(downloadVastVideoTask);
            }

            @Override // io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener
            public final void onVideoLoadingError(DownloadVastVideoTask downloadVastVideoTask) {
                C17890a.this.removePendingTask(downloadVastVideoTask);
            }
        }, str));
    }

    private void createVideoTask(final Context context, String str) {
        this.pendingTasks.add(new DownloadVideoTask(context, new DownloadVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.a.3
            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
            public final void onVideoLoaded(DownloadVideoTask downloadVideoTask, Uri uri) {
                C17890a.this.nativeMediaData.setVideoUri(uri);
                if (TextUtils.isEmpty(C17890a.this.nativeData.getImageUrl()) && uri != null && uri.getPath() != null && new File(uri.getPath()).exists()) {
                    C17890a.this.nativeMediaData.setImageUri(Uri.parse(Utils.retrieveAndSaveFrame(context, uri, C17890a.DIR_NAME)));
                }
                C17890a.this.removePendingTask(downloadVideoTask);
            }

            @Override // io.bidmachine.nativead.tasks.DownloadVideoTask.OnLoadedListener
            public final void onVideoLoadingError(DownloadVideoTask downloadVideoTask) {
                C17890a.this.removePendingTask(downloadVideoTask);
            }
        }, str));
    }

    private boolean isAssetsValid() {
        boolean z = false;
        try {
            if (isIconValid()) {
                z = false;
                if (isImageValid()) {
                    z = false;
                    if (isVideoValid()) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            Logger.log(e);
            return false;
        }
    }

    private boolean isIconValid() {
        return (this.adRequest.containsAssetType(MediaAssetType.Icon) && this.nativeMediaData.getIconUri() == null && this.nativeMediaData.getIconBitmap() == null) ? false : true;
    }

    private boolean isImageValid() {
        return (this.adRequest.containsAssetType(MediaAssetType.Image) && this.nativeMediaData.getImageUri() == null && this.nativeMediaData.getImageBitmap() == null) ? false : true;
    }

    private boolean isVideoValid() {
        if (this.adRequest.containsAssetType(MediaAssetType.Video)) {
            return this.nativeData.hasVideo();
        }
        return true;
    }

    private void notifyNativeCallback() {
        synchronized (this) {
            if (isAssetsValid()) {
                this.callback.processLoadSuccess();
                return;
            }
            this.callback.processLoadFail(BMError.IncorrectAdUnit);
            this.callback.processDestroy();
        }
    }

    public void removePendingTask(Runnable runnable) {
        this.pendingTasks.remove(runnable);
        checkTasksCount();
    }

    private void startDownloadTask(Context context) {
        String iconUrl = this.nativeData.getIconUrl();
        String imageUrl = this.nativeData.getImageUrl();
        String videoUrl = this.nativeData.getVideoUrl();
        String videoAdm = this.nativeData.getVideoAdm();
        if (this.adRequest.containsAssetType(MediaAssetType.Icon)) {
            createIconTask(context, iconUrl);
        }
        if (this.adRequest.containsAssetType(MediaAssetType.Image)) {
            createImageTask(context, imageUrl);
        }
        if (this.adRequest.containsAssetType(MediaAssetType.Video)) {
            if (!TextUtils.isEmpty(videoUrl)) {
                createVideoTask(context, videoUrl);
            } else if (!TextUtils.isEmpty(videoAdm)) {
                createVastVideoTask(context, videoAdm);
            }
        }
        if (this.pendingTasks.isEmpty()) {
            checkTasksCount();
            return;
        }
        for (Runnable runnable : this.pendingTasks) {
            NativeNetworkExecutor.getInstance().execute(runnable);
        }
    }

    public final void downloadNativeAdsImages(Context context) {
        startDownloadTask(context);
        checkTasksCount();
    }
}
