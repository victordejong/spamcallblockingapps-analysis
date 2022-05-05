package com.facebook.stetho.inspector.jsonrpc.protocol;

import android.annotation.SuppressLint;
import com.facebook.stetho.json.annotation.JsonProperty;
import org.json.JSONObject;
@SuppressLint({"UsingDefaultJsonDeserializer", "EmptyJsonPropertyUse"})
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcResponse.class */
public class JsonRpcResponse {
    @JsonProperty
    public JSONObject error;
    @JsonProperty(required = true)

    /* renamed from: id */
    public long f6471id;
    @JsonProperty
    public JSONObject result;
}
