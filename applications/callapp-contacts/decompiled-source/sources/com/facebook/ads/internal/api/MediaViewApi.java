package com.facebook.ads.internal.api;

import android.view.View;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/internal/api/MediaViewApi.class */
public interface MediaViewApi extends AdComponentViewApiProvider {
    void destroy();

    View getAdContentsView();

    int getMediaHeight();

    int getMediaWidth();

    void initialize(AdViewConstructorParams adViewConstructorParams, MediaView mediaView);

    void setListener(MediaViewListener mediaViewListener);

    void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer);
}
