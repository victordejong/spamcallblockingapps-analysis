package com.mopub.volley.toolbox;

import java.io.FilterInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/HurlStack$a.class */
public class HurlStack$a extends FilterInputStream {

    /* renamed from: a */
    public final HttpURLConnection f9328a;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public HurlStack$a(java.net.HttpURLConnection r4) {
        /*
            r3 = this;
            r0 = r4
            java.io.InputStream r0 = r0.getInputStream()     // Catch: java.io.IOException -> L8
            r5 = r0
            goto Le
        L8:
            r5 = move-exception
            r0 = r4
            java.io.InputStream r0 = r0.getErrorStream()
            r5 = r0
        Le:
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.f9328a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.HurlStack$a.<init>(java.net.HttpURLConnection):void");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.f9328a.disconnect();
    }
}
