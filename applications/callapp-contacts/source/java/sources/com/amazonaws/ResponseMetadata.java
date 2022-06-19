package com.amazonaws;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ResponseMetadata.class */
public class ResponseMetadata {

    /* renamed from: a */
    protected final Map<String, String> f11968a;

    public ResponseMetadata(ResponseMetadata responseMetadata) {
        this(responseMetadata.f11968a);
    }

    public ResponseMetadata(Map<String, String> map) {
        this.f11968a = map;
    }

    /* renamed from: a */
    public final String m38696a() {
        return this.f11968a.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map<String, String> map = this.f11968a;
        return map == null ? "{}" : map.toString();
    }
}
