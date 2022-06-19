package com.mopub.mobileads;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdViewController$b.class */
public class AdViewController$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AdViewController f8774a;

    public AdViewController$b(AdViewController adViewController) {
        this.f8774a = adViewController;
    }

    @Override // java.lang.Runnable
    public void run() {
        MoPubAd moPubAd = this.f8774a.getMoPubAd();
        if (moPubAd != null) {
            this.f8774a.t = moPubAd.resolveAdSize();
        }
        this.f8774a.c();
    }
}
