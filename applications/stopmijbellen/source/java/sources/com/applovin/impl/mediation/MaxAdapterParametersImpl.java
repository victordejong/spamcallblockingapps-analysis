package com.applovin.impl.mediation;

import android.os.Bundle;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.mediation.p038a.C1052h;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxAdapterParametersImpl.class */
public class MaxAdapterParametersImpl implements MaxAdapterInitializationParameters, MaxAdapterResponseParameters, MaxAdapterSignalCollectionParameters {

    /* renamed from: a */
    private String f3742a;

    /* renamed from: b */
    private Map<String, Object> f3743b;

    /* renamed from: c */
    private Bundle f3744c;

    /* renamed from: d */
    private Bundle f3745d;

    /* renamed from: e */
    private Boolean f3746e;

    /* renamed from: f */
    private Boolean f3747f;

    /* renamed from: g */
    private Boolean f3748g;

    /* renamed from: h */
    private boolean f3749h;

    /* renamed from: i */
    private String f3750i;

    /* renamed from: j */
    private String f3751j;

    /* renamed from: k */
    private long f3752k;

    /* renamed from: l */
    private MaxAdFormat f3753l;

    private MaxAdapterParametersImpl() {
    }

    /* renamed from: a */
    public static MaxAdapterParametersImpl m6751a(AbstractC1044a abstractC1044a) {
        MaxAdapterParametersImpl m6750a = m6750a((C1049f) abstractC1044a);
        m6750a.f3750i = abstractC1044a.m6705l();
        m6750a.f3751j = abstractC1044a.m6708i();
        m6750a.f3752k = abstractC1044a.m6707j();
        return m6750a;
    }

    /* renamed from: a */
    public static MaxAdapterParametersImpl m6750a(C1049f c1049f) {
        MaxAdapterParametersImpl maxAdapterParametersImpl = new MaxAdapterParametersImpl();
        maxAdapterParametersImpl.f3742a = c1049f.getAdUnitId();
        maxAdapterParametersImpl.f3746e = c1049f.m6650R();
        maxAdapterParametersImpl.f3747f = c1049f.m6649S();
        maxAdapterParametersImpl.f3748g = c1049f.m6648T();
        maxAdapterParametersImpl.f3743b = c1049f.m6646V();
        maxAdapterParametersImpl.f3744c = c1049f.m6645W();
        maxAdapterParametersImpl.f3745d = c1049f.m6644X();
        maxAdapterParametersImpl.f3749h = c1049f.m6651Q();
        return maxAdapterParametersImpl;
    }

    /* renamed from: a */
    public static MaxAdapterParametersImpl m6749a(C1052h c1052h, MaxAdFormat maxAdFormat) {
        MaxAdapterParametersImpl m6750a = m6750a(c1052h);
        m6750a.f3753l = maxAdFormat;
        return m6750a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters
    public MaxAdFormat getAdFormat() {
        return this.f3753l;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getAdUnitId() {
        return this.f3742a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public long getBidExpirationMillis() {
        return this.f3752k;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getBidResponse() {
        return this.f3751j;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getCustomParameters() {
        return this.f3745d;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Map<String, Object> getLocalExtraParameters() {
        return this.f3743b;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getServerParameters() {
        return this.f3744c;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getThirdPartyAdPlacementId() {
        return this.f3750i;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean hasUserConsent() {
        return this.f3746e;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isAgeRestrictedUser() {
        return this.f3747f;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Boolean isDoNotSell() {
        return this.f3748g;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isTesting() {
        return this.f3749h;
    }
}
