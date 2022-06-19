package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener$1.class */
public class AdsMediaSource$AdPrepareErrorListener$1 implements Runnable {
    public final /* synthetic */ AdsMediaSource.AdPrepareErrorListener this$1;
    public final /* synthetic */ IOException val$exception;

    public AdsMediaSource$AdPrepareErrorListener$1(AdsMediaSource.AdPrepareErrorListener adPrepareErrorListener, IOException iOException) {
        this.this$1 = adPrepareErrorListener;
        this.val$exception = iOException;
    }

    @Override // java.lang.Runnable
    public void run() {
        AdsMediaSource.access$100(this.this$1.this$0).handlePrepareError(AdsMediaSource.AdPrepareErrorListener.access$800(this.this$1), AdsMediaSource.AdPrepareErrorListener.access$900(this.this$1), this.val$exception);
    }
}
