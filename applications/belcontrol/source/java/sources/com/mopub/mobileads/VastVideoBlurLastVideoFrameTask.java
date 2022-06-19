package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoBlurLastVideoFrameTask.class */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a */
    public final MediaMetadataRetriever f4858a;

    /* renamed from: b */
    public final ImageView f4859b;

    /* renamed from: c */
    public int f4860c;

    /* renamed from: d */
    public Bitmap f4861d;

    /* renamed from: e */
    public Bitmap f4862e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f4858a = mediaMetadataRetriever;
        this.f4859b = imageView;
        this.f4860c = i;
    }

    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return Boolean.FALSE;
        }
        try {
            this.f4858a.setDataSource(strArr[0]);
            Bitmap frameAtTime = this.f4858a.getFrameAtTime((this.f4860c * 1000) - 200000, 3);
            this.f4861d = frameAtTime;
            if (frameAtTime == null) {
                return Boolean.FALSE;
            }
            this.f4862e = ImageUtils.applyFastGaussianBlurToBitmap(frameAtTime, 4);
            return Boolean.TRUE;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            return Boolean.FALSE;
        }
    }

    /* renamed from: b */
    public void onPostExecute(Boolean bool) {
        if (isCancelled()) {
            onCancelled();
        } else if (bool == null || !bool.booleanValue()) {
        } else {
            this.f4859b.setImageBitmap(this.f4862e);
            this.f4859b.setImageAlpha(100);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VastVideoBlurLastVideoFrameTask was cancelled.");
    }
}
