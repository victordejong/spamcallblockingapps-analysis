package com.mopub.mobileads;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubView$MoPubAdSize.class */
public enum MoPubView$MoPubAdSize {
    MATCH_VIEW(-1),
    HEIGHT_50(50),
    HEIGHT_90(90),
    HEIGHT_250(250),
    HEIGHT_280(280);
    

    /* renamed from: a */
    public final int f8816a;

    MoPubView$MoPubAdSize(int i) {
        this.f8816a = i;
    }

    public static MoPubView$MoPubAdSize valueOf(int i) {
        return i != 50 ? i != 90 ? i != 250 ? i != 280 ? MATCH_VIEW : HEIGHT_280 : HEIGHT_250 : HEIGHT_90 : HEIGHT_50;
    }

    public int toInt() {
        return this.f8816a;
    }
}
