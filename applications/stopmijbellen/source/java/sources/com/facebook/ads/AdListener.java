package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.internal.bench.Benchmark;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    @Benchmark
    void onAdClicked(AbstractC1609Ad abstractC1609Ad);

    @Benchmark
    void onAdLoaded(AbstractC1609Ad abstractC1609Ad);

    @Benchmark
    void onError(AbstractC1609Ad abstractC1609Ad, AdError adError);

    @Benchmark
    void onLoggingImpression(AbstractC1609Ad abstractC1609Ad);
}
