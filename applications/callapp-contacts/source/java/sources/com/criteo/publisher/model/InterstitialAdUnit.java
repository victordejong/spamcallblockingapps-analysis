package com.criteo.publisher.model;

import com.criteo.publisher.p256m0.EnumC8423a;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004R\u001c\u0010\u0005\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m4298d2 = {"Lcom/criteo/publisher/model/InterstitialAdUnit;", "Lcom/criteo/publisher/model/AdUnit;", "", "component1", "()Ljava/lang/String;", "adUnitId", "copy", "(Ljava/lang/String;)Lcom/criteo/publisher/model/InterstitialAdUnit;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Ljava/lang/String;", "getAdUnitId", "Lcom/criteo/publisher/util/AdUnitType;", "getAdUnitType", "()Lcom/criteo/publisher/util/AdUnitType;", "adUnitType", "<init>", "(Ljava/lang/String;)V", "publisher-sdk_release"}, m4297k = 1, m4296mv = {1, 1, 15}, m4295pn = "", m4294xi = 0, m4293xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/InterstitialAdUnit.class */
public final class InterstitialAdUnit implements AdUnit {
    private final String adUnitId;

    public InterstitialAdUnit(String adUnitId) {
        C18524p.m3841c(adUnitId, "adUnitId");
        this.adUnitId = adUnitId;
    }

    public static /* synthetic */ InterstitialAdUnit copy$default(InterstitialAdUnit interstitialAdUnit, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = interstitialAdUnit.getAdUnitId();
        }
        return interstitialAdUnit.copy(str);
    }

    public final String component1() {
        return getAdUnitId();
    }

    public final InterstitialAdUnit copy(String adUnitId) {
        C18524p.m3841c(adUnitId, "adUnitId");
        return new InterstitialAdUnit(adUnitId);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof InterstitialAdUnit) && C18524p.m3850a((Object) getAdUnitId(), (Object) ((InterstitialAdUnit) obj).getAdUnitId());
        }
        return true;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public final String getAdUnitId() {
        return this.adUnitId;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public final EnumC8423a getAdUnitType() {
        return EnumC8423a.CRITEO_INTERSTITIAL;
    }

    public final int hashCode() {
        String adUnitId = getAdUnitId();
        if (adUnitId != null) {
            return adUnitId.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "InterstitialAdUnit(adUnitId=" + getAdUnitId() + ")";
    }
}
