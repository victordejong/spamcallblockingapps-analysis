package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$1.class */
public class AdsMediaSource$1 implements Runnable {
    public final /* synthetic */ AdsMediaSource this$0;
    public final /* synthetic */ AdsMediaSource.ComponentListener val$componentListener;
    public final /* synthetic */ ExoPlayer val$player;

    public AdsMediaSource$1(AdsMediaSource adsMediaSource, ExoPlayer exoPlayer, AdsMediaSource.ComponentListener componentListener) {
        this.this$0 = adsMediaSource;
        this.val$player = exoPlayer;
        this.val$componentListener = componentListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        AdsMediaSource.access$100(this.this$0).attachPlayer(this.val$player, this.val$componentListener, AdsMediaSource.access$000(this.this$0));
    }
}
