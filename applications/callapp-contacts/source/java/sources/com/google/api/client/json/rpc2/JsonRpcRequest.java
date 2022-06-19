package com.google.api.client.json.rpc2;

import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15241n;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/rpc2/JsonRpcRequest.class */
public class JsonRpcRequest extends C15241n {
    @AbstractC15247q

    /* renamed from: id */
    private Object f55403id;
    @AbstractC15247q
    private final String jsonrpc = "2.0";
    @AbstractC15247q
    private String method;
    @AbstractC15247q
    private Object params;

    @Override // com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public JsonRpcRequest clone() {
        return (JsonRpcRequest) super.clone();
    }

    public Object getId() {
        return this.f55403id;
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

    @Override // com.google.api.client.p379a.C15241n
    public JsonRpcRequest set(String str, Object obj) {
        return (JsonRpcRequest) super.set(str, obj);
    }

    public void setId(Object obj) {
        this.f55403id = obj;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setParameters(Object obj) {
        this.params = obj;
    }
}
