package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoBlurLastVideoFrameTask.class */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final MediaMetadataRetriever f34290a;

    /* renamed from: b  reason: collision with root package name */
    private final ImageView f34291b;

    /* renamed from: c  reason: collision with root package name */
    private int f34292c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f34293d;
    private Bitmap e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f34290a = mediaMetadataRetriever;
        this.f34291b = imageView;
        this.f34292c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return Boolean.FALSE;
        }
        try {
            this.f34290a.setDataSource(strArr[0]);
            Bitmap frameAtTime = this.f34290a.getFrameAtTime((this.f34292c * 1000) - 200000, 3);
            this.f34293d = frameAtTime;
            if (frameAtTime == null) {
                return Boolean.FALSE;
            }
            this.e = ImageUtils.applyFastGaussianBlurToBitmap(frameAtTime, 4);
            return Boolean.TRUE;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            return Boolean.FALSE;
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VastVideoBlurLastVideoFrameTask was cancelled.");
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        if (isCancelled()) {
            onCancelled();
        } else if (bool2 != null && bool2.booleanValue()) {
            this.f34291b.setImageBitmap(this.e);
            this.f34291b.setImageAlpha(100);
        }
    }
}
