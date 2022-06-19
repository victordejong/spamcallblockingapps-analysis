package com.google.api.client.http.p286f0;

import com.google.api.client.util.C8731w;
import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
/* renamed from: com.google.api.client.http.f0.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f0/e.class */
final class C8631e extends HttpEntityEnclosingRequestBase {

    /* renamed from: d */
    private final String f38328d;

    public C8631e(String str, String str2) {
        this.f38328d = (String) C8731w.m2836d(str);
        setURI(URI.create(str2));
    }

    public String getMethod() {
        return this.f38328d;
    }
}
