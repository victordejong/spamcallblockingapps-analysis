package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.source.ads.AdsMediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$3.class */
public class AdsMediaSource$ComponentListener$3 implements Runnable {
    public final /* synthetic */ AdsMediaSource.ComponentListener this$1;

    public AdsMediaSource$ComponentListener$3(AdsMediaSource.ComponentListener componentListener) {
        this.this$1 = componentListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!AdsMediaSource.ComponentListener.access$200(this.this$1)) {
            AdsMediaSource.access$500(this.this$1.this$0).onAdTapped();
        }
    }
}
