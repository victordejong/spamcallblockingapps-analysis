package com.google.android.gms.ads;

import android.graphics.drawable.Drawable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/MediaContent.class */
public interface MediaContent {
    float getAspectRatio();

    float getCurrentTime();

    float getDuration();

    @RecentlyNullable
    Drawable getMainImage();

    @RecentlyNonNull
    VideoController getVideoController();

    boolean hasVideoContent();

    void setMainImage(Drawable drawable);
}
