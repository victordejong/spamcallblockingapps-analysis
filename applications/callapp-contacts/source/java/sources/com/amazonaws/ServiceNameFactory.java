package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ServiceNameFactory.class */
enum ServiceNameFactory {
    ;

    public static String getServiceName(String str) {
        HttpClientConfig httpClientConfig = InternalConfig.Factory.m38603a().f12101e.get(str);
        if (httpClientConfig == null) {
            return null;
        }
        return httpClientConfig.f12095a;
    }
}
