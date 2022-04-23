package com.google.api.client.http;

import java.io.IOException;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/w.class */
public abstract class w {
    static final Logger LOGGER = Logger.getLogger(w.class.getName());
    private static final String[] SUPPORTED_METHODS;

    static {
        String[] strArr = {"DELETE", "GET", "POST", "PUT"};
        SUPPORTED_METHODS = strArr;
        Arrays.sort(strArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q buildRequest() {
        return new q(this, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract z buildRequest(String str, String str2) throws IOException;

    public final r createRequestFactory() {
        return createRequestFactory(null);
    }

    public final r createRequestFactory(s sVar) {
        return new r(this, sVar);
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
