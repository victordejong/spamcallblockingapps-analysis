package com.vk.api.sdk.d;

import com.appsflyer.internal.referrer.Payload;
import com.vk.api.sdk.e;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.g;
import com.vk.api.sdk.h;
import com.vk.api.sdk.l;
import java.io.IOException;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\u0010\u001c\n��\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018�� 1*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u00011B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J%\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b¢\u0006\u0002\u0010\u001cJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001dJ \u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001eJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\tJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020!J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\"J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0��H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0014J\u0015\u0010'\u001a\u00028��2\u0006\u0010(\u001a\u00020)H\u0014¢\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00028��2\u0006\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0002\u0010-J\u0015\u0010+\u001a\u00028��2\u0006\u0010.\u001a\u00020/H\u0016¢\u0006\u0002\u00100R\u001a\u0010\b\u001a\u00020\tX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u000f¨\u00062"}, d2 = {"Lcom/vk/api/sdk/requests/VKRequest;", "T", "Lcom/vk/api/sdk/VKApiResponseParser;", "Lcom/vk/api/sdk/internal/ApiCommand;", "method", "", "requestApiVersion", "(Ljava/lang/String;Ljava/lang/String;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "setAllowNoAuth", "(Z)V", "getMethod", "()Ljava/lang/String;", "setMethod", "(Ljava/lang/String;)V", "params", "Ljava/util/LinkedHashMap;", "getParams", "()Ljava/util/LinkedHashMap;", "getRequestApiVersion", "addParam", "name", "", "values", "", "(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;", "", "", "value", "", "", "", "createBaseCallBuilder", "Lcom/vk/api/sdk/VKMethodCall$Builder;", "config", "Lcom/vk/api/sdk/VKApiConfig;", "onExecute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "parse", Payload.RESPONSE, "(Ljava/lang/String;)Ljava/lang/Object;", "r", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)Ljava/lang/Object;", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/d/b.class */
public class b<T> extends com.vk.api.sdk.internal.a<T> implements h<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36032a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f36033b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashMap<String, String> f36034c;

    /* renamed from: d  reason: collision with root package name */
    private String f36035d;
    private final String e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/requests/VKRequest$Companion;", "", "()V", "ERROR_MALFORMED_RESPONSE", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/d/b$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(String method, String str) {
        p.d(method, "method");
        this.f36035d = method;
        this.e = str;
        this.f36034c = new LinkedHashMap<>();
    }

    public /* synthetic */ b(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2);
    }

    public final b<T> a(String name, int i) {
        p.d(name, "name");
        b<T> bVar = this;
        if (i != 0) {
            LinkedHashMap<String, String> linkedHashMap = bVar.f36034c;
            String num = Integer.toString(i);
            p.b(num, "Integer.toString(value)");
            linkedHashMap.put(name, num);
        }
        return bVar;
    }

    public final b<T> a(String name, String str) {
        p.d(name, "name");
        b<T> bVar = this;
        if (str != null) {
            bVar.f36034c.put(name, str);
        }
        return bVar;
    }

    @Override // com.vk.api.sdk.internal.a
    public final T a(g manager) throws InterruptedException, IOException, VKApiException {
        p.d(manager, "manager");
        e config = manager.f36080c;
        String str = this.e;
        String str2 = str;
        if (str == null) {
            str2 = config.e;
        }
        this.f36034c.put("lang", config.l);
        this.f36034c.put("device_id", config.f36039d.a());
        this.f36034c.put("v", str2);
        p.d(config, "config");
        l.a aVar = new l.a();
        LinkedHashMap<String, String> args = this.f36034c;
        p.d(args, "args");
        l.a aVar2 = aVar;
        aVar2.f36103c.putAll(args);
        l.a b2 = aVar2.a(this.f36035d).b(str2);
        b2.h = this.f36033b;
        return (T) manager.a(b2.b(), this);
    }

    @Override // com.vk.api.sdk.h
    public final T a(String response) throws VKApiException {
        p.d(response, "response");
        try {
            return a(new JSONObject(response));
        } catch (Throwable th) {
            String str = this.f36035d;
            throw new VKApiExecutionException(-2, str, true, "[" + this.f36035d + "] " + th.getLocalizedMessage(), null, null, null, null, 240, null);
        }
    }

    public T a(JSONObject r) throws Exception {
        p.d(r, "r");
        return (T) r;
    }
}
