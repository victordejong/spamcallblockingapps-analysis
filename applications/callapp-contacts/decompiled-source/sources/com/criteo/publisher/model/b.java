package com.criteo.publisher.model;

import com.mopub.common.AdType;
import java.util.Collection;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/b.class */
public abstract class b extends q {

    /* renamed from: a  reason: collision with root package name */
    private final String f17534a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17535b;

    /* renamed from: c  reason: collision with root package name */
    private final Boolean f17536c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f17537d;
    private final Collection<String> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, Boolean bool, Boolean bool2, Collection<String> collection) {
        Objects.requireNonNull(str, "Null getImpressionId");
        this.f17534a = str;
        Objects.requireNonNull(str2, "Null getPlacementId");
        this.f17535b = str2;
        this.f17536c = bool;
        this.f17537d = bool2;
        Objects.requireNonNull(collection, "Null getSizes");
        this.e = collection;
    }

    @Override // com.criteo.publisher.model.q
    @com.google.gson.annotations.b(a = "impId")
    public String a() {
        return this.f17534a;
    }

    @Override // com.criteo.publisher.model.q
    @com.google.gson.annotations.b(a = "placementId")
    public String b() {
        return this.f17535b;
    }

    @Override // com.criteo.publisher.model.q
    @com.google.gson.annotations.b(a = "sizes")
    public Collection<String> c() {
        return this.e;
    }

    @Override // com.criteo.publisher.model.q
    @com.google.gson.annotations.b(a = AdType.INTERSTITIAL)
    public Boolean d() {
        return this.f17537d;
    }

    @Override // com.criteo.publisher.model.q
    @com.google.gson.annotations.b(a = "isNative")
    public Boolean e() {
        return this.f17536c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        Boolean bool2;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (!this.f17534a.equals(qVar.a()) || !this.f17535b.equals(qVar.b()) || ((bool = this.f17536c) != null ? !bool.equals(qVar.e()) : qVar.e() != null) || ((bool2 = this.f17537d) != null ? !bool2.equals(qVar.d()) : qVar.d() != null) || !this.e.equals(qVar.c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f17534a.hashCode();
        int hashCode2 = this.f17535b.hashCode();
        Boolean bool = this.f17536c;
        int i = 0;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f17537d;
        if (bool2 != null) {
            i = bool2.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.e.hashCode();
    }

    public String toString() {
        return "CdbRequestSlot{getImpressionId=" + this.f17534a + ", getPlacementId=" + this.f17535b + ", isNativeAd=" + this.f17536c + ", isInterstitial=" + this.f17537d + ", getSizes=" + this.e + "}";
    }
}
