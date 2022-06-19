package com.google.android.exoplayer2.source.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$2.class */
public class AdsMediaSource$2 implements Runnable {
    public final /* synthetic */ AdsMediaSource this$0;

    public AdsMediaSource$2(AdsMediaSource adsMediaSource) {
        this.this$0 = adsMediaSource;
    }

    @Override // java.lang.Runnable
    public void run() {
        AdsMediaSource.access$100(this.this$0).detachPlayer();
    }
}
