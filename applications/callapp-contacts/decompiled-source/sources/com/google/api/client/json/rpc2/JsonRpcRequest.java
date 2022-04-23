package com.google.api.client.json.rpc2;

import com.google.api.client.a.n;
import com.google.api.client.a.q;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/rpc2/JsonRpcRequest.class */
public class JsonRpcRequest extends n {
    @q
    private Object id;
    @q
    private final String jsonrpc = "2.0";
    @q
    private String method;
    @q
    private Object params;

    @Override // com.google.api.client.a.n, java.util.AbstractMap
    public JsonRpcRequest clone() {
        return (JsonRpcRequest) super.clone();
    }

    public Object getId() {
        return this.id;
    }

    public String getMethod() {
        return this.method;
    }

    public Object getParameters() {
        return this.params;
    }

    public String getVersion() {
        return "2.0";
    }

    @Override // com.google.api.client.a.n
    public JsonRpcRequest set(String str, Object obj) {
        return (JsonRpcRequest) super.set(str, obj);
    }

    public void setId(Object obj) {
        this.id = obj;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setParameters(Object obj) {
        this.params = obj;
    }
}
