package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ServiceNameFactory.class */
enum ServiceNameFactory {
    ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getServiceName(String str) {
        HttpClientConfig httpClientConfig = InternalConfig.Factory.a().e.get(str);
        if (httpClientConfig == null) {
            return null;
        }
        return httpClientConfig.f6644a;
    }
}
