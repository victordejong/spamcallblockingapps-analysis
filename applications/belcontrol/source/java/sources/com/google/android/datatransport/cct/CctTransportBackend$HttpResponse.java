package com.google.android.datatransport.cct;

import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CctTransportBackend$HttpResponse.class */
public final class CctTransportBackend$HttpResponse {
    public final int code;
    public final long nextRequestMillis;
    public final URL redirectUrl;

    public CctTransportBackend$HttpResponse(int i, URL url, long j) {
        this.code = i;
        this.redirectUrl = url;
        this.nextRequestMillis = j;
    }
}
