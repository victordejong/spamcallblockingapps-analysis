package com.applovin.impl.sdk.p057e;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.C1285d;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.e.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/j.class */
public class C1353j extends C1354k {

    /* renamed from: c */
    private final List<String> f5151c;

    public C1353j(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener, C1408l c1408l) {
        super(C1285d.m6006a(m5665a(list)), null, appLovinAdLoadListener, "TaskFetchMultizoneAd", c1408l);
        this.f5151c = Collections.unmodifiableList(list);
    }

    /* renamed from: a */
    private static String m5665a(List<String> list) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("No zone identifiers specified");
        }
        return list.get(0);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: a */
    public Map<String, String> mo5370a() {
        HashMap hashMap = new HashMap(1);
        List<String> list = this.f5151c;
        hashMap.put("zone_ids", CollectionUtils.implode(list, list.size()));
        return hashMap;
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1347h
    /* renamed from: h */
    public EnumC1282b mo5664h() {
        return EnumC1282b.APPLOVIN_MULTIZONE;
    }
}
