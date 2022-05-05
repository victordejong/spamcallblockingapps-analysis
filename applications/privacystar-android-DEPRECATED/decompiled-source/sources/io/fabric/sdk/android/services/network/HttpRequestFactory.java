package io.fabric.sdk.android.services.network;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/network/HttpRequestFactory.class */
public interface HttpRequestFactory {
    HttpRequest buildHttpRequest(HttpMethod httpMethod, String str);

    HttpRequest buildHttpRequest(HttpMethod httpMethod, String str, Map<String, String> map);

    PinningInfoProvider getPinningInfoProvider();

    void setPinningInfoProvider(PinningInfoProvider pinningInfoProvider);
}
