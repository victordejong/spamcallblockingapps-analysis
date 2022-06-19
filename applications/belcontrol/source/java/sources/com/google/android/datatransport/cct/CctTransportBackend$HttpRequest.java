package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CctTransportBackend$HttpRequest.class */
public final class CctTransportBackend$HttpRequest {
    public final String apiKey;
    public final BatchedLogRequest requestBody;
    public final URL url;

    public CctTransportBackend$HttpRequest(URL url, BatchedLogRequest batchedLogRequest, String str) {
        this.url = url;
        this.requestBody = batchedLogRequest;
        this.apiKey = str;
    }

    public CctTransportBackend$HttpRequest withUrl(URL url) {
        return new CctTransportBackend$HttpRequest(url, this.requestBody, this.apiKey);
    }
}
