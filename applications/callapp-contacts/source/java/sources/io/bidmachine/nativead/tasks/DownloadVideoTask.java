package io.bidmachine.nativead.tasks;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import io.bidmachine.core.Utils;
import java.io.File;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadVideoTask.class */
public class DownloadVideoTask implements Runnable {
    private static final String DIR_NAME = "native_video";
    private static final int RESULT_FAIL = 0;
    private static final int RESULT_SUCCESS = 1;
    private static final int SERVER_TIME_OUT = 20000;
    private File cacheDir;
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: io.bidmachine.nativead.tasks.DownloadVideoTask.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (DownloadVideoTask.this.listener != null) {
                int i = message.what;
                if (i == 0) {
                    DownloadVideoTask.this.listener.onVideoLoadingError(DownloadVideoTask.this);
                } else if (i != 1) {
                } else {
                    DownloadVideoTask.this.listener.onVideoLoaded(DownloadVideoTask.this, (Uri) message.obj);
                }
            }
        }
    };
    private boolean initialized;
    private OnLoadedListener listener;
    private String videoUrl;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener.class */
    public interface OnLoadedListener {
        void onVideoLoaded(DownloadVideoTask downloadVideoTask, Uri uri);

        void onVideoLoadingError(DownloadVideoTask downloadVideoTask);
    }

    public DownloadVideoTask(Context context, OnLoadedListener onLoadedListener, String str) {
        if (context == null || str == null || !Utils.canUseExternalFilesDir(context)) {
            onLoadedListener.onVideoLoadingError(this);
            return;
        }
        this.listener = onLoadedListener;
        this.videoUrl = str;
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

    private void sendSuccess(File file) {
        Handler handler = this.handler;
        if (handler != null) {
            this.handler.sendMessage(handler.obtainMessage(1, Uri.fromFile(file)));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.initialized) {
            sendFail();
            return;
        }
        File cacheVideoFile = C17898a.cacheVideoFile(this.videoUrl, this.cacheDir, SERVER_TIME_OUT);
        if (cacheVideoFile != null) {
            sendSuccess(cacheVideoFile);
        } else {
            sendFail();
        }
    }
}
