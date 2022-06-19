package com.criteo.publisher.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\b\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0007R\u0016\u0010\u001c\u001a\u00020\u00198V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/criteo/publisher/model/BannerAdUnit;", "Lcom/criteo/publisher/model/AdUnit;", "", "component1", "()Ljava/lang/String;", "Lcom/criteo/publisher/model/AdSize;", "component2", "()Lcom/criteo/publisher/model/AdSize;", "adUnitId", "size", "copy", "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/BannerAdUnit;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAdUnitId", "Lcom/criteo/publisher/model/AdSize;", "getSize", "Lcom/criteo/publisher/util/AdUnitType;", "getAdUnitType", "()Lcom/criteo/publisher/util/AdUnitType;", "adUnitType", "<init>", "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/BannerAdUnit.class */
public final class BannerAdUnit implements AdUnit {
    private final String adUnitId;
    private final AdSize size;

    public BannerAdUnit(String str, AdSize adSize) {
        l.f(str, "adUnitId");
        l.f(adSize, "size");
        this.adUnitId = str;
        this.size = adSize;
    }

    public static /* synthetic */ BannerAdUnit copy$default(BannerAdUnit bannerAdUnit, String str, AdSize adSize, int i, Object obj) {
        if ((i & 1) != 0) {
            str = bannerAdUnit.getAdUnitId();
        }
        if ((i & 2) != 0) {
            adSize = bannerAdUnit.size;
        }
        return bannerAdUnit.copy(str, adSize);
    }

    public final String component1() {
        return getAdUnitId();
    }

    public final AdSize component2() {
        return this.size;
    }

    public final BannerAdUnit copy(String str, AdSize adSize) {
        l.f(str, "adUnitId");
        l.f(adSize, "size");
        return new BannerAdUnit(str, adSize);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BannerAdUnit)) {
                return false;
            }
            BannerAdUnit bannerAdUnit = (BannerAdUnit) obj;
            return l.a(getAdUnitId(), bannerAdUnit.getAdUnitId()) && l.a(this.size, bannerAdUnit.size);
        }
        return true;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public String getAdUnitId() {
        return this.adUnitId;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public EnumC23072a getAdUnitType() {
        return EnumC23072a.CRITEO_BANNER;
    }

    public final AdSize getSize() {
        return this.size;
    }

    public int hashCode() {
        String adUnitId = getAdUnitId();
        int i = 0;
        int hashCode = adUnitId != null ? adUnitId.hashCode() : 0;
        AdSize adSize = this.size;
        if (adSize != null) {
            i = adSize.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BannerAdUnit(adUnitId=");
        m8728C.append(getAdUnitId());
        m8728C.append(", size=");
        m8728C.append(this.size);
        m8728C.append(")");
        return m8728C.toString();
    }
}
