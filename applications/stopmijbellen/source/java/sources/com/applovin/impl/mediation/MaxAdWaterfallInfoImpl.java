package com.applovin.impl.mediation;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxAdWaterfallInfoImpl.class */
public class MaxAdWaterfallInfoImpl implements MaxAdWaterfallInfo {

    /* renamed from: a */
    private final AbstractC1044a f3737a;

    /* renamed from: b */
    private final String f3738b;

    /* renamed from: c */
    private final String f3739c;

    /* renamed from: d */
    private final List<MaxNetworkResponseInfo> f3740d;

    /* renamed from: e */
    private final long f3741e;

    public MaxAdWaterfallInfoImpl(AbstractC1044a abstractC1044a, long j, List<MaxNetworkResponseInfo> list) {
        this(abstractC1044a, abstractC1044a.m6704m(), abstractC1044a.m6703n(), j, list);
    }

    public MaxAdWaterfallInfoImpl(AbstractC1044a abstractC1044a, String str, String str2, long j, List<MaxNetworkResponseInfo> list) {
        this.f3737a = abstractC1044a;
        this.f3738b = str;
        this.f3739c = str2;
        this.f3740d = list;
        this.f3741e = j;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public long getLatencyMillis() {
        return this.f3741e;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public MaxAd getLoadedAd() {
        return this.f3737a;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getName() {
        return this.f3738b;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public List<MaxNetworkResponseInfo> getNetworkResponses() {
        return this.f3740d;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getTestName() {
        return this.f3739c;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxAdWaterfallInfo{name=");
        m8752j.append(this.f3738b);
        m8752j.append(", testName=");
        m8752j.append(this.f3739c);
        m8752j.append(", networkResponses=");
        m8752j.append(this.f3740d);
        m8752j.append(", latencyMillis=");
        m8752j.append(this.f3741e);
        m8752j.append('}');
        return m8752j.toString();
    }
}
