package com.vk.api.sdk.d;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/requests/VKBooleanRequest;", "Lcom/vk/api/sdk/requests/VKRequest;", "", "method", "", "(Ljava/lang/String;)V", "parse", "r", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)Ljava/lang/Boolean;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/d/a.class */
public final class a extends b<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(String method) {
        super(method, null, 2, null);
        p.d(method, "method");
    }

    @Override // com.vk.api.sdk.d.b
    public final /* synthetic */ Boolean a(JSONObject r) {
        p.d(r, "r");
        return Boolean.TRUE;
    }
}
