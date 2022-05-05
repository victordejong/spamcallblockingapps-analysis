package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoBlurLastVideoFrameTask.class */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {
    @NonNull

    /* renamed from: a */
    public final MediaMetadataRetriever f8608a;
    @NonNull

    /* renamed from: b */
    public final ImageView f8609b;

    /* renamed from: c */
    public int f8610c;
    @Nullable

    /* renamed from: d */
    public Bitmap f8611d;
    @Nullable

    /* renamed from: e */
    public Bitmap f8612e;

    public VastVideoBlurLastVideoFrameTask(@NonNull MediaMetadataRetriever mediaMetadataRetriever, @NonNull ImageView imageView, int i) {
        this.f8608a = mediaMetadataRetriever;
        this.f8609b = imageView;
        this.f8610c = i;
    }

    /* renamed from: a */
    public Boolean doInBackground(String... strArr) {
        if (!(strArr == null || strArr.length == 0 || strArr[0] == null)) {
            try {
                this.f8608a.setDataSource(strArr[0]);
                this.f8611d = this.f8608a.getFrameAtTime((this.f8610c * 1000) - 200000, 3);
                if (this.f8611d == null) {
                    return false;
                }
                this.f8612e = ImageUtils.applyFastGaussianBlurToBitmap(this.f8611d, 4);
                return true;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to blur last video frame", e);
            }
        }
        return false;
    }

    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (isCancelled()) {
            onCancelled();
        } else if (bool != null && bool.booleanValue()) {
            this.f8609b.setImageBitmap(this.f8612e);
            this.f8609b.setImageAlpha(100);
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "VastVideoBlurLastVideoFrameTask was cancelled.");
    }
}
