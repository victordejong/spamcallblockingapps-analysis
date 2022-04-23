package com.bytedance.sdk.openadsdk.preload.geckox.model;

import com.appsflyer.share.Constants;
import com.bytedance.sdk.openadsdk.preload.a.a.c;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel.class */
public class ComponentModel {
    @c(a = "packages")
    private Map<String, List<UpdatePackage>> packages;
    @c(a = "universal_strategies")
    private Map<String, b> universalStrategies;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a.class */
    public static class a {
        @c(a = Constants.URL_CAMPAIGN)

        /* renamed from: a  reason: collision with root package name */
        public String f10232a;
        @c(a = "clean_type")

        /* renamed from: b  reason: collision with root package name */
        public int f10233b;
        @c(a = "version")

        /* renamed from: c  reason: collision with root package name */
        public List<Long> f10234c;
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b.class */
    public static class b {
        @c(a = "specified_clean")

        /* renamed from: a  reason: collision with root package name */
        public List<a> f10235a;
    }

    public Map<String, List<UpdatePackage>> getPackages() {
        return this.packages;
    }

    public Map<String, b> getUniversalStrategies() {
        return this.universalStrategies;
    }
}
