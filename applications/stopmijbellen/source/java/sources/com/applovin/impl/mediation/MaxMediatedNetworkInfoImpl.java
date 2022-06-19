package com.applovin.impl.mediation;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/MaxMediatedNetworkInfoImpl.class */
public class MaxMediatedNetworkInfoImpl implements MaxMediatedNetworkInfo {

    /* renamed from: a */
    private final JSONObject f3754a;

    public MaxMediatedNetworkInfoImpl(JSONObject jSONObject) {
        this.f3754a = jSONObject;
    }

    @Override // com.applovin.mediation.MaxMediatedNetworkInfo
    public String getAdapterClassName() {
        return JsonUtils.getString(this.f3754a, "class", "");
    }

    @Override // com.applovin.mediation.MaxMediatedNetworkInfo
    public String getAdapterVersion() {
        return JsonUtils.getString(this.f3754a, "version", "");
    }

    @Override // com.applovin.mediation.MaxMediatedNetworkInfo
    public String getName() {
        return JsonUtils.getString(this.f3754a, AppMeasurementSdk.ConditionalUserProperty.NAME, "");
    }

    @Override // com.applovin.mediation.MaxMediatedNetworkInfo
    public String getSdkVersion() {
        return JsonUtils.getString(this.f3754a, "sdk_version", "");
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxMediatedNetworkInfo{name=");
        m8752j.append(getName());
        m8752j.append(", adapterClassName=");
        m8752j.append(getAdapterClassName());
        m8752j.append(", adapterVersion=");
        m8752j.append(getAdapterVersion());
        m8752j.append(", sdkVersion=");
        m8752j.append(getSdkVersion());
        m8752j.append('}');
        return m8752j.toString();
    }
}
