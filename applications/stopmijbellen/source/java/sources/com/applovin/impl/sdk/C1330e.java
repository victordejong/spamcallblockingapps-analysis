package com.applovin.impl.sdk;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdContentRating;
import com.applovin.sdk.AppLovinGender;
import com.applovin.sdk.AppLovinTargetingData;
import com.google.android.gms.common.Scopes;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e.class */
public class C1330e implements AppLovinTargetingData {

    /* renamed from: a */
    private final Map<String, String> f5102a = new HashMap();

    /* renamed from: b */
    private final Object f5103b = new Object();

    /* renamed from: c */
    private Integer f5104c = null;

    /* renamed from: d */
    private AppLovinGender f5105d = null;

    /* renamed from: e */
    private AppLovinAdContentRating f5106e = null;

    /* renamed from: f */
    private String f5107f = null;

    /* renamed from: g */
    private String f5108g = null;

    /* renamed from: h */
    private String f5109h = null;

    /* renamed from: i */
    private List<String> f5110i = null;

    /* renamed from: j */
    private List<String> f5111j = null;

    /* renamed from: a */
    private void m5734a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f5103b) {
            if (StringUtils.isValidString(str2)) {
                this.f5102a.put(str, str2);
            } else {
                this.f5102a.remove(str);
            }
        }
    }

    /* renamed from: a */
    public Map<String, String> m5735a() {
        HashMap hashMap;
        synchronized (this.f5103b) {
            hashMap = new HashMap(this.f5102a);
        }
        return hashMap;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void clearAll() {
        synchronized (this.f5103b) {
            this.f5102a.clear();
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public String getEmail() {
        return this.f5107f;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public AppLovinGender getGender() {
        return this.f5105d;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public List<String> getInterests() {
        return this.f5111j;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public List<String> getKeywords() {
        return this.f5110i;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public AppLovinAdContentRating getMaximumAdContentRating() {
        return this.f5106e;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public String getPhoneNumber() {
        return this.f5108g;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public Integer getYearOfBirth() {
        return this.f5104c;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public String getZipCode() {
        return this.f5109h;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setEmail(String str) {
        m5734a(Scopes.EMAIL, str != null ? StringUtils.toFullSHA1Hash(str.toLowerCase().trim()) : str);
        this.f5107f = str;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setGender(AppLovinGender appLovinGender) {
        String str;
        if (appLovinGender != null) {
            if (appLovinGender == AppLovinGender.FEMALE) {
                str = "F";
            } else if (appLovinGender == AppLovinGender.MALE) {
                str = "M";
            } else if (appLovinGender == AppLovinGender.OTHER) {
                str = "O";
            }
            m5734a("gender", str);
            this.f5105d = appLovinGender;
        }
        str = null;
        m5734a("gender", str);
        this.f5105d = appLovinGender;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setInterests(List<String> list) {
        m5734a("interests", list == null ? null : CollectionUtils.implode(list, list.size()));
        this.f5111j = list;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setKeywords(List<String> list) {
        m5734a("keywords", list == null ? null : CollectionUtils.implode(list, list.size()));
        this.f5110i = list;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setMaximumAdContentRating(AppLovinAdContentRating appLovinAdContentRating) {
        m5734a("maximum_ad_content_rating", (appLovinAdContentRating == null || appLovinAdContentRating == AppLovinAdContentRating.NONE) ? null : Integer.toString(appLovinAdContentRating.ordinal()));
        this.f5106e = appLovinAdContentRating;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setPhoneNumber(String str) {
        m5734a("phone_number", str != null ? StringUtils.toFullSHA1Hash(str.replaceAll("[^0-9]", "")) : str);
        this.f5108g = str;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setYearOfBirth(Integer num) {
        m5734a("year_of_birth", num == null ? null : Integer.toString(num.intValue()));
        this.f5104c = num;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setZipCode(String str) {
        m5734a("zip_code", str);
        this.f5109h = str;
    }
}
