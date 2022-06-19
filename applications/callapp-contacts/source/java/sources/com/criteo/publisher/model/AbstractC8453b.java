package com.criteo.publisher.model;

import com.google.gson.annotations.AbstractC15952b;
import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Objects;
/* renamed from: com.criteo.publisher.model.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b.class */
public abstract class AbstractC8453b extends AbstractC8501q {

    /* renamed from: a */
    private final String f30223a;

    /* renamed from: b */
    private final String f30224b;

    /* renamed from: c */
    private final Boolean f30225c;

    /* renamed from: d */
    private final Boolean f30226d;

    /* renamed from: e */
    private final Collection<String> f30227e;

    public AbstractC8453b(String str, String str2, Boolean bool, Boolean bool2, Collection<String> collection) {
        Objects.requireNonNull(str, "Null getImpressionId");
        this.f30223a = str;
        Objects.requireNonNull(str2, "Null getPlacementId");
        this.f30224b = str2;
        this.f30225c = bool;
        this.f30226d = bool2;
        Objects.requireNonNull(collection, "Null getSizes");
        this.f30227e = collection;
    }

    @Override // com.criteo.publisher.model.AbstractC8501q
    @AbstractC15952b(m7988a = "impId")
    /* renamed from: a */
    public String mo25566a() {
        return this.f30223a;
    }

    @Override // com.criteo.publisher.model.AbstractC8501q
    @AbstractC15952b(m7988a = "placementId")
    /* renamed from: b */
    public String mo25563b() {
        return this.f30224b;
    }

    @Override // com.criteo.publisher.model.AbstractC8501q
    @AbstractC15952b(m7988a = "sizes")
    /* renamed from: c */
    public Collection<String> mo25562c() {
        return this.f30227e;
    }

    @Override // com.criteo.publisher.model.AbstractC8501q
    @AbstractC15952b(m7988a = AdType.INTERSTITIAL)
    /* renamed from: d */
    public Boolean mo25561d() {
        return this.f30226d;
    }

    @Override // com.criteo.publisher.model.AbstractC8501q
    @AbstractC15952b(m7988a = "isNative")
    /* renamed from: e */
    public Boolean mo25560e() {
        return this.f30225c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        Boolean bool2;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8501q)) {
            return false;
        }
        AbstractC8501q abstractC8501q = (AbstractC8501q) obj;
        if (!this.f30223a.equals(abstractC8501q.mo25566a()) || !this.f30224b.equals(abstractC8501q.mo25563b()) || ((bool = this.f30225c) != null ? !bool.equals(abstractC8501q.mo25560e()) : abstractC8501q.mo25560e() != null) || ((bool2 = this.f30226d) != null ? !bool2.equals(abstractC8501q.mo25561d()) : abstractC8501q.mo25561d() != null) || !this.f30227e.equals(abstractC8501q.mo25562c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f30223a.hashCode();
        int hashCode2 = this.f30224b.hashCode();
        Boolean bool = this.f30225c;
        int i = 0;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f30226d;
        if (bool2 != null) {
            i = bool2.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f30227e.hashCode();
    }

    public String toString() {
        return "CdbRequestSlot{getImpressionId=" + this.f30223a + ", getPlacementId=" + this.f30224b + ", isNativeAd=" + this.f30225c + ", isInterstitial=" + this.f30226d + ", getSizes=" + this.f30227e + "}";
    }
}
