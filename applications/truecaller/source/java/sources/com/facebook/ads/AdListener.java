package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.internal.bench.Benchmark;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/AdListener.class */
public interface AdListener {
    @Benchmark
    void onAdClicked(AbstractC0929Ad abstractC0929Ad);

    @Benchmark
    void onAdLoaded(AbstractC0929Ad abstractC0929Ad);

    @Benchmark
    void onError(AbstractC0929Ad abstractC0929Ad, AdError adError);

    @Benchmark
    void onLoggingImpression(AbstractC0929Ad abstractC0929Ad);
}
