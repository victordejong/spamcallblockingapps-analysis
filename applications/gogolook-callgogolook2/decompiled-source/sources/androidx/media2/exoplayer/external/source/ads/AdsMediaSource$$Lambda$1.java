package androidx.media2.exoplayer.external.source.ads;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$$Lambda$1.class */
public final /* synthetic */ class AdsMediaSource$$Lambda$1 implements Runnable {
    public final AdsLoader arg$1;

    public AdsMediaSource$$Lambda$1(AdsLoader adsLoader) {
        this.arg$1 = adsLoader;
    }

    public static Runnable get$Lambda(AdsLoader adsLoader) {
        return new AdsMediaSource$$Lambda$1(adsLoader);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.arg$1.stop();
    }
}
