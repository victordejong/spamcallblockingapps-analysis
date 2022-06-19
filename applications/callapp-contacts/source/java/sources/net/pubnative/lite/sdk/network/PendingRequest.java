package net.pubnative.lite.sdk.network;

import java.util.Map;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/network/PendingRequest.class */
public class PendingRequest {
    private final Map<String, String> headers;
    private final String postBody;
    private final String url;

    public PendingRequest(String str, String str2, Map<String, String> map) {
        this.url = str;
        this.headers = map;
        this.postBody = str2;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getPostBody() {
        return this.postBody;
    }

    public String getUrl() {
        return this.url;
    }
}
