package com.applovin.impl.mediation;

import android.content.Context;
import android.os.Bundle;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import p131c.p135b.p136a.p143d.C2135c;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxAdapterParametersImpl.class */
public class MaxAdapterParametersImpl implements MaxAdapterInitializationParameters, MaxAdapterResponseParameters, MaxAdapterSignalCollectionParameters {

    /* renamed from: a */
    public Bundle f21388a;

    /* renamed from: b */
    public boolean f21389b;

    /* renamed from: c */
    public boolean f21390c;

    /* renamed from: d */
    public boolean f21391d;

    /* renamed from: e */
    public boolean f21392e;

    /* renamed from: f */
    public String f21393f;

    /* renamed from: g */
    public String f21394g;

    /* renamed from: h */
    public MaxAdFormat f21395h;

    /* renamed from: a */
    public static MaxAdapterParametersImpl m19205a(C2135c.AbstractC2137b bVar, Context context) {
        MaxAdapterParametersImpl a = m19204a((C2135c.C2141f) bVar, context);
        a.f21393f = bVar.m30968p();
        a.f21394g = bVar.m30969o();
        return a;
    }

    /* renamed from: a */
    public static MaxAdapterParametersImpl m19204a(C2135c.C2141f fVar, Context context) {
        MaxAdapterParametersImpl maxAdapterParametersImpl = new MaxAdapterParametersImpl();
        maxAdapterParametersImpl.f21389b = fVar.m30925a(context);
        maxAdapterParametersImpl.f21390c = fVar.m30913b(context);
        maxAdapterParametersImpl.f21391d = fVar.m30905c(context);
        maxAdapterParametersImpl.f21388a = fVar.m30895h();
        maxAdapterParametersImpl.f21392e = fVar.m30898f();
        return maxAdapterParametersImpl;
    }

    /* renamed from: a */
    public static MaxAdapterParametersImpl m19203a(C2135c.C2144h hVar, MaxAdFormat maxAdFormat, Context context) {
        MaxAdapterParametersImpl a = m19204a(hVar, context);
        a.f21395h = maxAdFormat;
        return a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters
    public MaxAdFormat getAdFormat() {
        return this.f21395h;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getBidResponse() {
        return this.f21394g;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getServerParameters() {
        return this.f21388a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getThirdPartyAdPlacementId() {
        return this.f21393f;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean hasUserConsent() {
        return this.f21389b;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isAgeRestrictedUser() {
        return this.f21390c;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isDoNotSell() {
        return this.f21391d;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isTesting() {
        return this.f21392e;
    }
}
