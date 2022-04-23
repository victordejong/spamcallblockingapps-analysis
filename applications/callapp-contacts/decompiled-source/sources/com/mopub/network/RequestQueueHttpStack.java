package com.mopub.network;

import com.mopub.volley.toolbox.HurlStack;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestQueueHttpStack.class */
public class RequestQueueHttpStack extends HurlStack {

    /* renamed from: a  reason: collision with root package name */
    private final String f34763a;

    public RequestQueueHttpStack(String str) {
        this(str, null);
    }

    public RequestQueueHttpStack(String str, HurlStack.UrlRewriter urlRewriter) {
        this(str, urlRewriter, null);
    }

    public RequestQueueHttpStack(String str, HurlStack.UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        super(urlRewriter, sSLSocketFactory);
        this.f34763a = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r6.isEmpty() != false) goto L_0x000f;
     */
    @Override // com.mopub.volley.toolbox.HurlStack, com.mopub.volley.toolbox.BaseHttpStack
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.toolbox.HttpResponse executeRequest(com.mopub.volley.Request<?> r5, java.util.Map<java.lang.String, java.lang.String> r6) throws java.io.IOException, com.mopub.volley.AuthFailureError {
        /*
            r4 = this;
            r0 = r6
            if (r0 == 0) goto L_0x000f
            r0 = r6
            r7 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0017
        L_0x000f:
            java.util.TreeMap r0 = new java.util.TreeMap
            r1 = r0
            r1.<init>()
            r7 = r0
        L_0x0017:
            r0 = r7
            com.mopub.common.util.ResponseHeader r1 = com.mopub.common.util.ResponseHeader.USER_AGENT
            java.lang.String r1 = r1.getKey()
            r2 = r4
            java.lang.String r2 = r2.f34763a
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r4
            r1 = r5
            r2 = r7
            com.mopub.volley.toolbox.HttpResponse r0 = super.executeRequest(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.RequestQueueHttpStack.executeRequest(com.mopub.volley.Request, java.util.Map):com.mopub.volley.toolbox.HttpResponse");
    }
}
