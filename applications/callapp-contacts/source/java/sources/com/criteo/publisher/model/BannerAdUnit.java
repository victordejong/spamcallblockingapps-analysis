package com.criteo.publisher.model;

import com.criteo.publisher.p256m0.EnumC8423a;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0004R\u001c\u0010\b\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u0016\u0010\u001a\u001a\u00020\u00178V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007¨\u0006\u001f"}, m4298d2 = {"Lcom/criteo/publisher/model/BannerAdUnit;", "Lcom/criteo/publisher/model/AdUnit;", "", "component1", "()Ljava/lang/String;", "Lcom/criteo/publisher/model/AdSize;", "component2", "()Lcom/criteo/publisher/model/AdSize;", "adUnitId", "size", "copy", "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/BannerAdUnit;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Ljava/lang/String;", "getAdUnitId", "Lcom/criteo/publisher/util/AdUnitType;", "getAdUnitType", "()Lcom/criteo/publisher/util/AdUnitType;", "adUnitType", "Lcom/criteo/publisher/model/AdSize;", "getSize", "<init>", "(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V", "publisher-sdk_release"}, m4297k = 1, m4296mv = {1, 1, 15}, m4295pn = "", m4294xi = 0, m4293xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/BannerAdUnit.class */
public final class BannerAdUnit implements AdUnit {
    private final String adUnitId;
    private final AdSize size;

    public BannerAdUnit(String adUnitId, AdSize size) {
        C18524p.m3841c(adUnitId, "adUnitId");
        C18524p.m3841c(size, "size");
        this.adUnitId = adUnitId;
        this.size = size;
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

    public final BannerAdUnit copy(String adUnitId, AdSize size) {
        C18524p.m3841c(adUnitId, "adUnitId");
        C18524p.m3841c(size, "size");
        return new BannerAdUnit(adUnitId, size);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BannerAdUnit)) {
                return false;
            }
            BannerAdUnit bannerAdUnit = (BannerAdUnit) obj;
            return C18524p.m3850a((Object) getAdUnitId(), (Object) bannerAdUnit.getAdUnitId()) && C18524p.m3850a(this.size, bannerAdUnit.size);
        }
        return true;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public final String getAdUnitId() {
        return this.adUnitId;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public final EnumC8423a getAdUnitType() {
        return EnumC8423a.CRITEO_BANNER;
    }

    public final AdSize getSize() {
        return this.size;
    }

    public final int hashCode() {
        String adUnitId = getAdUnitId();
        int i = 0;
        int hashCode = adUnitId != null ? adUnitId.hashCode() : 0;
        AdSize adSize = this.size;
        if (adSize != null) {
            i = adSize.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "BannerAdUnit(adUnitId=" + getAdUnitId() + ", size=" + this.size + ")";
    }
}
