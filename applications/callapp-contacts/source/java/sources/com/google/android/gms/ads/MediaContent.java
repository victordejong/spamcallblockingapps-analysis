package com.google.android.gms.ads;

import android.graphics.drawable.Drawable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/MediaContent.class */
public interface MediaContent {
    float getAspectRatio();

    float getCurrentTime();

    float getDuration();

    Drawable getMainImage();

    VideoController getVideoController();

    boolean hasVideoContent();

    void setMainImage(Drawable drawable);
}
