package com.p488vk.api.sdk.p494c;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.api.client.googleapis.notifications.C15291b;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018��2\u00020\u0001:\u0001\u0017B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0010¨\u0006\u0018"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "", C15291b.f55271a, "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "method", "getMethod", "()Ljava/lang/String;", "tag", "Lcom/vk/api/sdk/okhttp/RequestTag;", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "Builder", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.e */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/e.class */
public final class C17643e {

    /* renamed from: a */
    public final String f62416a;

    /* renamed from: b */
    public final String f62417b;

    /* renamed from: c */
    public final Map<String, String> f62418c;

    /* renamed from: d */
    public final C17645f f62419d;

    /* renamed from: e */
    private final boolean f62420e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0016\u001a\u00020\u0004J\u0010\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00020\tJ\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020��2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\r\u001a\u00020��2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020��2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0014\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u0010@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u000f¨\u0006 "}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "method", "getMethod", "()Ljava/lang/String;", "Lcom/vk/api/sdk/okhttp/RequestTag;", "tag", "getTag", "()Lcom/vk/api/sdk/okhttp/RequestTag;", "version", "getVersion", "allow", "key", "value", "", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "from", "call", "Lcom/vk/api/sdk/VKMethodCall;", "requestTag", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.e$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/e$a.class */
    public static final class C17644a {

        /* renamed from: a */
        public String f62421a = "";

        /* renamed from: b */
        public String f62422b = "";

        /* renamed from: c */
        public Map<String, String> f62423c = new HashMap();

        /* renamed from: d */
        C17645f f62424d;

        /* renamed from: e */
        public boolean f62425e;

        /* renamed from: a */
        public final C17644a m4853a(String key, String value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            C17644a c17644a = this;
            c17644a.f62423c.put(key, value);
            return c17644a;
        }

        /* renamed from: a */
        public final C17643e m4855a() {
            return new C17643e(this);
        }

        /* renamed from: a */
        public final String m4854a(String key) {
            C18524p.m3840d(key, "key");
            return this.f62423c.get(key);
        }
    }

    protected C17643e(C17644a b) {
        C18524p.m3840d(b, "b");
        if (!C18425p.m3966a((CharSequence) b.f62421a)) {
            if (C18425p.m3966a((CharSequence) b.f62422b)) {
                throw new IllegalArgumentException("version is null or empty");
            }
            this.f62416a = b.f62421a;
            this.f62417b = b.f62422b;
            this.f62418c = b.f62423c;
            this.f62419d = b.f62424d;
            this.f62420e = b.f62425e;
            return;
        }
        throw new IllegalArgumentException("method is null or empty");
    }
}
