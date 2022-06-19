package com.google.api.client.http;

import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.w */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/w.class */
public abstract class AbstractC15346w {
    static final Logger LOGGER = Logger.getLogger(AbstractC15346w.class.getName());
    private static final String[] SUPPORTED_METHODS;

    static {
        String[] strArr = {"DELETE", "GET", "POST", "PUT"};
        SUPPORTED_METHODS = strArr;
        Arrays.sort(strArr);
    }

    public C15340q buildRequest() {
        return new C15340q(this, null);
    }

    public abstract AbstractC15349z buildRequest(String str, String str2) throws IOException;

    public final C15341r createRequestFactory() {
        return createRequestFactory(null);
    }

    public final C15341r createRequestFactory(AbstractC15342s abstractC15342s) {
        return new C15341r(this, abstractC15342s);
    }

    public boolean isMtls() {
        return false;
    }

    public void shutdown() throws IOException {
    }

    public boolean supportsMethod(String str) throws IOException {
        return Arrays.binarySearch(SUPPORTED_METHODS, str) >= 0;
    }
}
