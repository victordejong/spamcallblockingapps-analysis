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
    public final MediaMetadataRetriever f8895a;

    /* renamed from: b */
    public final ImageView f8896b;

    /* renamed from: c */
    public int f8897c;

    /* renamed from: d */
    public Bitmap f8898d;

    /* renamed from: e */
    public Bitmap f8899e;

    public VastVideoBlurLastVideoFrameTask(MediaMetadataRetriever mediaMetadataRetriever, ImageView imageView, int i) {
        this.f8895a = mediaMetadataRetriever;
        this.f8896b = imageView;
        this.f8897c = i;
    }

    @Override // android.os.AsyncTask
    public Boolean doInBackground(String[] strArr) {
        String[] strArr2 = strArr;
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = bool;
        if (strArr2 != null) {
            bool2 = bool;
            if (strArr2.length != 0) {
                if (strArr2[0] == null) {
                    bool2 = bool;
                } else {
                    try {
                        this.f8895a.setDataSource(strArr2[0]);
                        Bitmap frameAtTime = this.f8895a.getFrameAtTime((this.f8897c * 1000) - 200000, 3);
                        this.f8898d = frameAtTime;
                        if (frameAtTime == null) {
                            bool2 = bool;
                        } else {
                            this.f8899e = ImageUtils.applyFastGaussianBlurToBitmap(frameAtTime, 4);
                            bool2 = Boolean.TRUE;
                        }
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
                        bool2 = bool;
                    }
                }
            }
        }
        return bool2;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VastVideoBlurLastVideoFrameTask was cancelled.");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        if (isCancelled()) {
            onCancelled();
        } else if (bool2 == null || !bool2.booleanValue()) {
        } else {
            this.f8896b.setImageBitmap(this.f8899e);
            this.f8896b.setImageAlpha(100);
        }
    }
}
