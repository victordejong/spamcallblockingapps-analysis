package com.freshchat.consumer.sdk.p052e;

import java.io.InputStream;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.e.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/e/d.class */
public class C1531d {

    /* renamed from: eC */
    private InputStream f4150eC;

    /* renamed from: eE */
    private Map<String, List<String>> f4151eE;
    private int statusCode;

    /* renamed from: a */
    public void m40595a(Map<String, List<String>> map) {
        this.f4151eE = map;
    }

    public InputStream getInputStream() {
        return this.f4150eC;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setInputStream(InputStream inputStream) {
        this.f4150eC = inputStream;
    }

    public void setStatusCode(int i) {
        this.statusCode = i;
    }
}
