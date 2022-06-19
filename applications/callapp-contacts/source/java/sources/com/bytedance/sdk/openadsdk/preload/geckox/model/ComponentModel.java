package com.bytedance.sdk.openadsdk.preload.geckox.model;

import com.appsflyer.share.Constants;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel.class */
public class ComponentModel {
    @AbstractC5114c(m32993a = "packages")
    private Map<String, List<UpdatePackage>> packages;
    @AbstractC5114c(m32993a = "universal_strategies")
    private Map<String, C5396b> universalStrategies;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.model.ComponentModel$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a.class */
    public static class C5395a {
        @AbstractC5114c(m32993a = Constants.URL_CAMPAIGN)

        /* renamed from: a */
        public String f18897a;
        @AbstractC5114c(m32993a = "clean_type")

        /* renamed from: b */
        public int f18898b;
        @AbstractC5114c(m32993a = "version")

        /* renamed from: c */
        public List<Long> f18899c;
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.model.ComponentModel$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b.class */
    public static class C5396b {
        @AbstractC5114c(m32993a = "specified_clean")

        /* renamed from: a */
        public List<C5395a> f18900a;
    }

    public Map<String, List<UpdatePackage>> getPackages() {
        return this.packages;
    }

    public Map<String, C5396b> getUniversalStrategies() {
        return this.universalStrategies;
    }
}
