package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoBlurLastVideoFrameTask.class */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a */
    private final MediaMetadataRetriever f59512a;

    /* renamed from: b */
    private final ImageView f59513b;

    /* renamed from: c */
    private int f59514c;

    /* renamed from: d */
    private Bitmap f59515d;

    /* renamed from: e */
    private Bitmap f59516e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f59512a = mediaMetadataRetriever;
        this.f59513b = imageView;
        this.f59514c = i;
    }

    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return Boolean.FALSE;
        }
        try {
            this.f59512a.setDataSource(strArr[0]);
            Bitmap frameAtTime = this.f59512a.getFrameAtTime((this.f59514c * 1000) - 200000, 3);
            this.f59515d = frameAtTime;
            if (frameAtTime == null) {
                return Boolean.FALSE;
            }
            this.f59516e = ImageUtils.applyFastGaussianBlurToBitmap(frameAtTime, 4);
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
        } else if (bool2 == null || !bool2.booleanValue()) {
        } else {
            this.f59513b.setImageBitmap(this.f59516e);
            this.f59513b.setImageAlpha(100);
        }
    }
}
