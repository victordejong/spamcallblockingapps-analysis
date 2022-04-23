package com.vk.api.sdk.c;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.api.client.googleapis.notifications.b;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018��2\u00020\u0001:\u0001\u0017B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "", b.f31754a, "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "method", "getMethod", "()Ljava/lang/String;", "tag", "Lcom/vk/api/sdk/okhttp/RequestTag;", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "Builder", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f36020a;

    /* renamed from: b  reason: collision with root package name */
    public final String f36021b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f36022c;

    /* renamed from: d  reason: collision with root package name */
    public final f f36023d;
    private final boolean e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00020\tJ\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020��2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\r\u001a\u00020��2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020��2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0014\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0010@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u000f¨\u0006 "}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "method", "getMethod", "()Ljava/lang/String;", "Lcom/vk/api/sdk/okhttp/RequestTag;", "tag", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "allow", "key", "value", "", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "from", "call", "Lcom/vk/api/sdk/VKMethodCall;", "requestTag", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f36024a = "";

        /* renamed from: b  reason: collision with root package name */
        public String f36025b = "";

        /* renamed from: c  reason: collision with root package name */
        public Map<String, String> f36026c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        f f36027d;
        public boolean e;

        public final a a(String key, String value) {
            p.d(key, "key");
            p.d(value, "value");
            a aVar = this;
            aVar.f36026c.put(key, value);
            return aVar;
        }

        public final e a() {
            return new e(this);
        }

        public final String a(String key) {
            p.d(key, "key");
            return this.f36026c.get(key);
        }
    }

    protected e(a b2) {
        p.d(b2, "b");
        if (kotlin.h.p.a((CharSequence) b2.f36024a)) {
            throw new IllegalArgumentException("method is null or empty");
        } else if (!kotlin.h.p.a((CharSequence) b2.f36025b)) {
            this.f36020a = b2.f36024a;
            this.f36021b = b2.f36025b;
            this.f36022c = b2.f36026c;
            this.f36023d = b2.f36027d;
            this.e = b2.e;
        } else {
            throw new IllegalArgumentException("version is null or empty");
        }
    }
}
