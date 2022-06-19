package com.applovin.impl.sdk;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinUserSegment;
/* renamed from: com.applovin.impl.sdk.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/f.class */
public class C1388f implements AppLovinUserSegment {

    /* renamed from: a */
    private String f5229a;

    @Override // com.applovin.sdk.AppLovinUserSegment
    public String getName() {
        return this.f5229a;
    }

    @Override // com.applovin.sdk.AppLovinUserSegment
    public void setName(String str) {
        if (str != null) {
            if (str.length() > 32) {
                C1479t.m5107i("AppLovinUserSegment", "Setting name greater than 32 characters: " + str);
            }
            if (!StringUtils.isAlphaNumeric(str)) {
                C1479t.m5107i("AppLovinUserSegment", "Setting name that is not alphanumeric: " + str);
            }
        }
        this.f5229a = str;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinUserSegment{name=");
        m8752j.append(getName());
        m8752j.append('}');
        return m8752j.toString();
    }
}
