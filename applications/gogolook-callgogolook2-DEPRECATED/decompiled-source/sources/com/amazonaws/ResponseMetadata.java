package com.amazonaws;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ResponseMetadata.class */
public class ResponseMetadata {
    public final Map<String, String> metadata;

    public ResponseMetadata(Map<String, String> map) {
        this.metadata = map;
    }

    public String getRequestId() {
        return this.metadata.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map<String, String> map = this.metadata;
        return map == null ? "{}" : map.toString();
    }
}
