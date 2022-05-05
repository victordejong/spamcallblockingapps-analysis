package androidx.media2.exoplayer.external.source.ads;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.source.ads.AdsMediaSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsLoader.class */
public interface AdsLoader {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsLoader$AdViewProvider.class */
    public interface AdViewProvider {
        View[] getAdOverlayViews();

        ViewGroup getAdViewGroup();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsLoader$EventListener.class */
    public interface EventListener {
        void onAdClicked();

        void onAdLoadError(AdsMediaSource.AdLoadException adLoadException, DataSpec dataSpec);

        void onAdPlaybackState(AdPlaybackState adPlaybackState);

        void onAdTapped();
    }

    void handlePrepareError(int i, int i2, IOException iOException);

    void release();

    void setPlayer(@Nullable Player player);

    void setSupportedContentTypes(int... iArr);

    void start(EventListener eventListener, AdViewProvider adViewProvider);

    void stop();
}
