package com.criteo.publisher.model;

import com.criteo.publisher.p020a0.C1927o;
import com.criteo.publisher.p020a0.EnumC1908a;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/BannerAdUnit.class */
public final class BannerAdUnit extends AdUnit {

    /* renamed from: c */
    public final AdSize f2193c;

    public BannerAdUnit(String str, AdSize adSize) {
        super(str, EnumC1908a.CRITEO_BANNER);
        this.f2193c = adSize;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BannerAdUnit.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        return C1927o.m36005a(this.f2193c, ((BannerAdUnit) obj).f2193c);
    }

    public AdSize getSize() {
        return this.f2193c;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public int hashCode() {
        return C1927o.m36004a(Integer.valueOf(super.hashCode()), this.f2193c);
    }
}
