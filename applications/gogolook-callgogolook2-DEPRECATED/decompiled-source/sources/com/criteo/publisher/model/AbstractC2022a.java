package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.mopub.common.AdType;
import java.util.Collection;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/a.class */
public abstract class AbstractC2022a extends AbstractC2040n {

    /* renamed from: a */
    public final String f2195a;

    /* renamed from: b */
    public final String f2196b;

    /* renamed from: c */
    public final Boolean f2197c;

    /* renamed from: d */
    public final Boolean f2198d;

    /* renamed from: e */
    public final Collection<String> f2199e;

    public AbstractC2022a(String str, String str2, @Nullable Boolean bool, @Nullable Boolean bool2, Collection<String> collection) {
        if (str != null) {
            this.f2195a = str;
            if (str2 != null) {
                this.f2196b = str2;
                this.f2197c = bool;
                this.f2198d = bool2;
                if (collection != null) {
                    this.f2199e = collection;
                    return;
                }
                throw new NullPointerException("Null getSizes");
            }
            throw new NullPointerException("Null getPlacementId");
        }
        throw new NullPointerException("Null getImpressionId");
    }

    @Override // com.criteo.publisher.model.AbstractC2040n
    @NonNull
    @AbstractC10120c("impId")
    /* renamed from: a */
    public String mo35854a() {
        return this.f2195a;
    }

    @Override // com.criteo.publisher.model.AbstractC2040n
    @NonNull
    @AbstractC10120c("placementId")
    /* renamed from: b */
    public String mo35851b() {
        return this.f2196b;
    }

    @Override // com.criteo.publisher.model.AbstractC2040n
    @NonNull
    @AbstractC10120c("sizes")
    /* renamed from: c */
    public Collection<String> mo35850c() {
        return this.f2199e;
    }

    @Override // com.criteo.publisher.model.AbstractC2040n
    @Nullable
    @AbstractC10120c(AdType.INTERSTITIAL)
    /* renamed from: d */
    public Boolean mo35849d() {
        return this.f2198d;
    }

    @Override // com.criteo.publisher.model.AbstractC2040n
    @Nullable
    @AbstractC10120c("isNative")
    /* renamed from: e */
    public Boolean mo35848e() {
        return this.f2197c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        Boolean bool2;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2040n)) {
            return false;
        }
        AbstractC2040n nVar = (AbstractC2040n) obj;
        if (!this.f2195a.equals(nVar.mo35854a()) || !this.f2196b.equals(nVar.mo35851b()) || ((bool = this.f2197c) != null ? !bool.equals(nVar.mo35848e()) : nVar.mo35848e() != null) || ((bool2 = this.f2198d) != null ? !bool2.equals(nVar.mo35849d()) : nVar.mo35849d() != null) || !this.f2199e.equals(nVar.mo35850c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2195a.hashCode();
        int hashCode2 = this.f2196b.hashCode();
        Boolean bool = this.f2197c;
        int i = 0;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f2198d;
        if (bool2 != null) {
            i = bool2.hashCode();
        }
        return ((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i) * 1000003) ^ this.f2199e.hashCode();
    }

    public String toString() {
        return "CdbRequestSlot{getImpressionId=" + this.f2195a + ", getPlacementId=" + this.f2196b + ", isNativeAd=" + this.f2197c + ", isInterstitial=" + this.f2198d + ", getSizes=" + this.f2199e + CssParser.BLOCK_END;
    }
}
