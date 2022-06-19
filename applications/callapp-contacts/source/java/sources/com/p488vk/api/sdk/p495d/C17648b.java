package com.p488vk.api.sdk.p495d;

import com.appsflyer.internal.referrer.Payload;
import com.p488vk.api.sdk.AbstractC17688h;
import com.p488vk.api.sdk.C17650e;
import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.C17699l;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.internal.AbstractC17692a;
import java.io.IOException;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��j\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\u0010\u001c\n��\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018�� 1*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u00011B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J%\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001b¢\u0006\u0002\u0010\u001cJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001dJ \u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u0006\u0012\u0002\b\u00030\u001eJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\tJ\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020!J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\"J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0��H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0014J\u0015\u0010'\u001a\u00028��2\u0006\u0010(\u001a\u00020)H\u0014¢\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00028��2\u0006\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0002\u0010-J\u0015\u0010+\u001a\u00028��2\u0006\u0010.\u001a\u00020/H\u0016¢\u0006\u0002\u00100R\u001a\u0010\b\u001a\u00020\tX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u000f¨\u00062"}, m4298d2 = {"Lcom/vk/api/sdk/requests/VKRequest;", "T", "Lcom/vk/api/sdk/VKApiResponseParser;", "Lcom/vk/api/sdk/internal/ApiCommand;", "method", "", "requestApiVersion", "(Ljava/lang/String;Ljava/lang/String;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "setAllowNoAuth", "(Z)V", "getMethod", "()Ljava/lang/String;", "setMethod", "(Ljava/lang/String;)V", "params", "Ljava/util/LinkedHashMap;", "getParams", "()Ljava/util/LinkedHashMap;", "getRequestApiVersion", "addParam", "name", "", "values", "", "(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;", "", "", "value", "", "", "", "createBaseCallBuilder", "Lcom/vk/api/sdk/VKMethodCall$Builder;", "config", "Lcom/vk/api/sdk/VKApiConfig;", "onExecute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "parse", Payload.RESPONSE, "(Ljava/lang/String;)Ljava/lang/Object;", "r", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)Ljava/lang/Object;", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.d.b */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/d/b.class */
public class C17648b<T> extends AbstractC17692a<T> implements AbstractC17688h<T> {

    /* renamed from: a */
    public static final C17649a f62430a = new C17649a(null);

    /* renamed from: b */
    private volatile boolean f62431b;

    /* renamed from: c */
    private final LinkedHashMap<String, String> f62432c;

    /* renamed from: d */
    private String f62433d;

    /* renamed from: e */
    private final String f62434e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/requests/VKRequest$Companion;", "", "()V", "ERROR_MALFORMED_RESPONSE", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.d.b$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/d/b$a.class */
    public static final class C17649a {
        private C17649a() {
        }

        public /* synthetic */ C17649a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C17648b(String method, String str) {
        C18524p.m3840d(method, "method");
        this.f62433d = method;
        this.f62434e = str;
        this.f62432c = new LinkedHashMap<>();
    }

    public /* synthetic */ C17648b(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2);
    }

    /* renamed from: a */
    public final C17648b<T> m4852a(String name, int i) {
        C18524p.m3840d(name, "name");
        C17648b<T> c17648b = this;
        if (i != 0) {
            LinkedHashMap<String, String> linkedHashMap = c17648b.f62432c;
            String num = Integer.toString(i);
            C18524p.m3843b(num, "Integer.toString(value)");
            linkedHashMap.put(name, num);
        }
        return c17648b;
    }

    /* renamed from: a */
    public final C17648b<T> m4851a(String name, String str) {
        C18524p.m3840d(name, "name");
        C17648b<T> c17648b = this;
        if (str != null) {
            c17648b.f62432c.put(name, str);
        }
        return c17648b;
    }

    @Override // com.p488vk.api.sdk.internal.AbstractC17692a
    /* renamed from: a */
    public final T mo4824a(C17685g manager) throws InterruptedException, IOException, VKApiException {
        C18524p.m3840d(manager, "manager");
        C17650e config = manager.f62507c;
        String str = this.f62434e;
        String str2 = str;
        if (str == null) {
            str2 = config.f62440e;
        }
        this.f62432c.put("lang", config.f62447l);
        this.f62432c.put("device_id", config.f62439d.mo1102a());
        this.f62432c.put("v", str2);
        C18524p.m3840d(config, "config");
        C17699l.C17700a c17700a = new C17699l.C17700a();
        LinkedHashMap<String, String> args = this.f62432c;
        C18524p.m3840d(args, "args");
        C17699l.C17700a c17700a2 = c17700a;
        c17700a2.f62536c.putAll(args);
        C17699l.C17700a m4806b = c17700a2.m4809a(this.f62433d).m4806b(str2);
        m4806b.f62541h = this.f62431b;
        return (T) manager.m4828a(m4806b.m4807b(), this);
    }

    @Override // com.p488vk.api.sdk.AbstractC17688h
    /* renamed from: a */
    public final T mo4826a(String response) throws VKApiException {
        C18524p.m3840d(response, "response");
        try {
            return mo4850a(new JSONObject(response));
        } catch (Throwable th) {
            String str = this.f62433d;
            throw new VKApiExecutionException(-2, str, true, "[" + this.f62433d + "] " + th.getLocalizedMessage(), null, null, null, null, 240, null);
        }
    }

    /* renamed from: a */
    public T mo4850a(JSONObject r) throws Exception {
        C18524p.m3840d(r, "r");
        return (T) r;
    }
}
