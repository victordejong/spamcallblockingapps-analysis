package com.amazonaws;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ResponseMetadata.class */
public class ResponseMetadata {

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, String> f6545a;

    public ResponseMetadata(ResponseMetadata responseMetadata) {
        this(responseMetadata.f6545a);
    }

    public ResponseMetadata(Map<String, String> map) {
        this.f6545a = map;
    }

    public final String a() {
        return this.f6545a.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map<String, String> map = this.f6545a;
        return map == null ? "{}" : map.toString();
    }
}
