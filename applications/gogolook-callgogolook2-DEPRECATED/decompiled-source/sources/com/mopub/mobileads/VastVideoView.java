package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoView.class */
public class VastVideoView extends VideoView {
    @Nullable

    /* renamed from: a */
    public VastVideoBlurLastVideoFrameTask f8707a;
    @Nullable

    /* renamed from: b */
    public MediaMetadataRetriever f8708b = new MediaMetadataRetriever();

    public VastVideoView(@NonNull Context context) {
        super(context);
        Preconditions.checkNotNull(context, "context cannot be null");
    }

    public void onDestroy() {
        VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = this.f8707a;
        if (vastVideoBlurLastVideoFrameTask != null && vastVideoBlurLastVideoFrameTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.f8707a.cancel(true);
        }
    }

    public void prepareBlurredLastVideoFrame(@NonNull ImageView imageView, @NonNull String str) {
        MediaMetadataRetriever mediaMetadataRetriever = this.f8708b;
        if (mediaMetadataRetriever != null) {
            this.f8707a = new VastVideoBlurLastVideoFrameTask(mediaMetadataRetriever, imageView, getDuration());
            try {
                AsyncTasks.safeExecuteOnExecutor(this.f8707a, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            }
        }
    }
}
