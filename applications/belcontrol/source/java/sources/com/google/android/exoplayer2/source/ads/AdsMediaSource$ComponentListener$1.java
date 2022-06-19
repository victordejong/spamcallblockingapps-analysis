package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.source.ads.AdsMediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener$1.class */
public class AdsMediaSource$ComponentListener$1 implements Runnable {
    public final /* synthetic */ AdsMediaSource.ComponentListener this$1;
    public final /* synthetic */ AdPlaybackState val$adPlaybackState;

    public AdsMediaSource$ComponentListener$1(AdsMediaSource.ComponentListener componentListener, AdPlaybackState adPlaybackState) {
        this.this$1 = componentListener;
        this.val$adPlaybackState = adPlaybackState;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (AdsMediaSource.ComponentListener.access$200(this.this$1)) {
            return;
        }
        AdsMediaSource.access$300(this.this$1.this$0, this.val$adPlaybackState);
    }
}
