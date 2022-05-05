package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.internal.bench.Benchmark;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    @Benchmark
    void onAdClicked(AbstractC2237Ad ad);

    @Benchmark
    void onAdLoaded(AbstractC2237Ad ad);

    @Benchmark
    void onError(AbstractC2237Ad ad, AdError adError);

    @Benchmark
    void onLoggingImpression(AbstractC2237Ad ad);
}
