package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.util.C5508e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException.class */
public final class AdsMediaSource$AdLoadException extends IOException {
    public final int type;

    private AdsMediaSource$AdLoadException(int i, Exception exc) {
        super(exc);
        this.type = i;
    }

    public static AdsMediaSource$AdLoadException createForAd(Exception exc) {
        return new AdsMediaSource$AdLoadException(0, exc);
    }

    public static AdsMediaSource$AdLoadException createForAdGroup(Exception exc, int i) {
        return new AdsMediaSource$AdLoadException(1, new IOException("Failed to load ad group " + i, exc));
    }

    public static AdsMediaSource$AdLoadException createForAllAds(Exception exc) {
        return new AdsMediaSource$AdLoadException(2, exc);
    }

    public static AdsMediaSource$AdLoadException createForUnexpected(RuntimeException runtimeException) {
        return new AdsMediaSource$AdLoadException(3, runtimeException);
    }

    public RuntimeException getRuntimeExceptionForUnexpected() {
        C5508e.m18910f(this.type == 3);
        return (RuntimeException) C5508e.m18911e(getCause());
    }
}
