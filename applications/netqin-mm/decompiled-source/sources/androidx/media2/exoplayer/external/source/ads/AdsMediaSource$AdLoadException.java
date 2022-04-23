package androidx.media2.exoplayer.external.source.ads;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException.class */
public final class AdsMediaSource$AdLoadException extends IOException {
    public static final int TYPE_AD = 0;
    public static final int TYPE_AD_GROUP = 1;
    public static final int TYPE_ALL_ADS = 2;
    public static final int TYPE_UNEXPECTED = 3;
    public final int type;

    public AdsMediaSource$AdLoadException(int i, Exception exc) {
        super(exc);
        this.type = i;
    }

    public static AdsMediaSource$AdLoadException createForAd(Exception exc) {
        return new AdsMediaSource$AdLoadException(0, exc);
    }

    public static AdsMediaSource$AdLoadException createForAdGroup(Exception exc, int i) {
        StringBuilder sb = new StringBuilder(35);
        sb.append("Failed to load ad group ");
        sb.append(i);
        return new AdsMediaSource$AdLoadException(1, new IOException(sb.toString(), exc));
    }

    public static AdsMediaSource$AdLoadException createForAllAds(Exception exc) {
        return new AdsMediaSource$AdLoadException(2, exc);
    }

    public static AdsMediaSource$AdLoadException createForUnexpected(RuntimeException runtimeException) {
        return new AdsMediaSource$AdLoadException(3, runtimeException);
    }

    public RuntimeException getRuntimeExceptionForUnexpected() {
        C1160a.m34518b(this.type == 3);
        Throwable cause = getCause();
        C1160a.m34522a(cause);
        return (RuntimeException) cause;
    }
}
