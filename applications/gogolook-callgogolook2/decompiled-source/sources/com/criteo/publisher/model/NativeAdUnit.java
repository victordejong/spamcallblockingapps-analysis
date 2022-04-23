package com.criteo.publisher.model;

import com.criteo.publisher.p020a0.C1927o;
import com.criteo.publisher.p020a0.EnumC1908a;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/NativeAdUnit.class */
public final class NativeAdUnit extends AdUnit {

    /* renamed from: c */
    public final AdSize f2194c = new AdSize(2, 2);

    public NativeAdUnit(String str) {
        super(str, EnumC1908a.CRITEO_CUSTOM_NATIVE);
    }

    @Override // com.criteo.publisher.model.AdUnit
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NativeAdUnit.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        return C1927o.m36005a(this.f2194c, ((NativeAdUnit) obj).f2194c);
    }

    public AdSize getAdSize() {
        return this.f2194c;
    }

    @Override // com.criteo.publisher.model.AdUnit
    public int hashCode() {
        return C1927o.m36004a(Integer.valueOf(super.hashCode()), this.f2194c);
    }
}
