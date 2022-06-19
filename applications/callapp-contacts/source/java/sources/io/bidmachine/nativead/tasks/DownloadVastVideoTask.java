package io.bidmachine.nativead.tasks;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.processor.VastAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.io.File;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadVastVideoTask.class */
public class DownloadVastVideoTask implements Runnable {
    private static final String DIR_NAME = "native_video";
    private static final int RESULT_FAIL = 0;
    private static final int RESULT_SUCCESS = 1;
    private static final int SERVER_TIME_OUT = 20000;
    private static final String SUPPORTED_VIDEO_TYPE_REGEX = "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)";
    private File cacheDir;
    private Context context;
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: io.bidmachine.nativead.tasks.DownloadVastVideoTask.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (DownloadVastVideoTask.this.listener != null) {
                int i = message.what;
                if (i == 0) {
                    DownloadVastVideoTask.this.listener.onVideoLoadingError(DownloadVastVideoTask.this);
                } else if (i != 1) {
                } else {
                    Pair pair = (Pair) message.obj;
                    DownloadVastVideoTask.this.listener.onVideoLoaded(DownloadVastVideoTask.this, (Uri) pair.first, (VastRequest) pair.second);
                }
            }
        }
    };
    private boolean initialized;
    private OnLoadedListener listener;
    private String videoTag;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener.class */
    public interface OnLoadedListener {
        void onVideoLoaded(DownloadVastVideoTask downloadVastVideoTask, Uri uri, VastRequest vastRequest);

        void onVideoLoadingError(DownloadVastVideoTask downloadVastVideoTask);
    }

    public DownloadVastVideoTask(Context context, OnLoadedListener onLoadedListener, String str) {
        this.context = context;
        if (context == null || str == null || !Utils.canUseExternalFilesDir(context)) {
            onLoadedListener.onVideoLoadingError(this);
            return;
        }
        this.listener = onLoadedListener;
        this.videoTag = str;
        if (!Utils.canUseExternalFilesDir(context)) {
            onLoadedListener.onVideoLoadingError(this);
            return;
        }
        this.cacheDir = Utils.getCacheDir(context, DIR_NAME);
        this.initialized = true;
    }

    private void sendFail() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.sendEmptyMessage(0);
        }
    }

    private void sendSuccess(File file, VastRequest vastRequest) {
        Handler handler = this.handler;
        if (handler != null) {
            this.handler.sendMessage(handler.obtainMessage(1, new Pair(Uri.fromFile(file), vastRequest)));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        File cacheVideoFile;
        if (!this.initialized) {
            sendFail();
            return;
        }
        try {
            VastRequest build = VastRequest.newBuilder().setPreCache(false).build();
            build.loadVideoWithDataSync(this.context, this.videoTag, null);
            VastAd vastAd = build.getVastAd();
            if (vastAd != null && vastAd.getPickedMediaFileTag().getType().matches(SUPPORTED_VIDEO_TYPE_REGEX) && (cacheVideoFile = C17898a.cacheVideoFile(vastAd.getPickedMediaFileTag().getText(), this.cacheDir, SERVER_TIME_OUT)) != null) {
                sendSuccess(cacheVideoFile, build);
                return;
            }
        } catch (Exception e) {
            Logger.log(e);
        }
        sendFail();
    }
}
