package com.criteo.publisher.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/criteo/publisher/model/InterstitialAdUnit;", "Lcom/criteo/publisher/model/AdUnit;", "", "component1", "()Ljava/lang/String;", "adUnitId", "copy", "(Ljava/lang/String;)Lcom/criteo/publisher/model/InterstitialAdUnit;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAdUnitId", "Lcom/criteo/publisher/util/AdUnitType;", "getAdUnitType", "()Lcom/criteo/publisher/util/AdUnitType;", "adUnitType", "<init>", "(Ljava/lang/String;)V", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/InterstitialAdUnit.class */
public final class InterstitialAdUnit implements AdUnit {
    private final String adUnitId;

    public InterstitialAdUnit(String str) {
        l.f(str, "adUnitId");
        this.adUnitId = str;
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

    public final InterstitialAdUnit copy(String str) {
        l.f(str, "adUnitId");
        return new InterstitialAdUnit(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof InterstitialAdUnit) && l.a(getAdUnitId(), ((InterstitialAdUnit) obj).getAdUnitId());
        }
        return true;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public String getAdUnitId() {
        return this.adUnitId;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public EnumC23072a getAdUnitType() {
        return EnumC23072a.CRITEO_INTERSTITIAL;
    }

    public int hashCode() {
        String adUnitId = getAdUnitId();
        return adUnitId != null ? adUnitId.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InterstitialAdUnit(adUnitId=");
        m8728C.append(getAdUnitId());
        m8728C.append(")");
        return m8728C.toString();
    }
}
