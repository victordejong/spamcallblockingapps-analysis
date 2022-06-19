package com.p488vk.api.sdk;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.api.client.googleapis.notifications.C15291b;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\b\u0016\u0018�� #2\u00020\u0001:\u0002\"#B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010 \u001a\u00020\u0017H\u0016J\b\u0010!\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\bR\u0011\u0010\u0013\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\bR\u0011\u0010\u001c\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0015¨\u0006$"}, m4298d2 = {"Lcom/vk/api/sdk/VKMethodCall;", "", C15291b.f55271a, "Lcom/vk/api/sdk/VKMethodCall$Builder;", "(Lcom/vk/api/sdk/VKMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "ignoreExecuteErrors", "", "getIgnoreExecuteErrors", "()[I", "isAwaitNetwork", "method", "getMethod", "()Ljava/lang/String;", "retryCount", "", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "equals", "other", "hashCode", "toString", "Builder", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.l */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l.class */
public final class C17699l {

    /* renamed from: g */
    public static final C17701b f62525g = new C17701b(null);

    /* renamed from: a */
    public final String f62526a;

    /* renamed from: b */
    public final String f62527b;

    /* renamed from: c */
    public final Map<String, String> f62528c;

    /* renamed from: d */
    final int f62529d;

    /* renamed from: e */
    final boolean f62530e;

    /* renamed from: f */
    public final boolean f62531f;

    /* renamed from: h */
    private final boolean f62532h;

    /* renamed from: i */
    private final int[] f62533i;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020��2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u001fH\u0016J\u0010\u0010 \u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010!\u001a\u00020\"H\u0016J\u0012\u0010\u000e\u001a\u00020��2\b\u0010#\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020��2\u0006\u0010$\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020��2\u0006\u0010%\u001a\u00020\u0004H\u0016J\u0010\u0010\u001b\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0007R\u001e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0007R\u001e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0014¨\u0006&"}, m4298d2 = {"Lcom/vk/api/sdk/VKMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "", "ignoreExecuteErrors", "getIgnoreExecuteErrors", "()[I", "isAwaitNetwork", "method", "getMethod", "()Ljava/lang/String;", "", "retryCount", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "key", "value", "", "awaitNetwork", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/vk/api/sdk/VKMethodCall;", "ignoredErrors", "count", EventConstants.SKIP, "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.l$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l$a.class */
    public static final class C17700a {

        /* renamed from: a */
        String f62534a = "";

        /* renamed from: b */
        String f62535b = "";

        /* renamed from: c */
        public Map<String, String> f62536c = new LinkedHashMap();

        /* renamed from: d */
        int f62537d = 4;

        /* renamed from: e */
        boolean f62538e;

        /* renamed from: f */
        boolean f62539f;

        /* renamed from: g */
        int[] f62540g;

        /* renamed from: h */
        public boolean f62541h;

        /* renamed from: a */
        public final C17700a m4810a() {
            C17700a c17700a = this;
            c17700a.f62537d = 0;
            return c17700a;
        }

        /* renamed from: a */
        public final C17700a m4809a(String method) {
            C18524p.m3840d(method, "method");
            C17700a c17700a = this;
            c17700a.f62534a = method;
            return c17700a;
        }

        /* renamed from: a */
        public final C17700a m4808a(String key, String value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            C17700a c17700a = this;
            c17700a.f62536c.put(key, value);
            return c17700a;
        }

        /* renamed from: b */
        public final C17700a m4806b(String version) {
            C18524p.m3840d(version, "version");
            C17700a c17700a = this;
            c17700a.f62535b = version;
            return c17700a;
        }

        /* renamed from: b */
        public final C17699l m4807b() {
            return new C17699l(this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/VKMethodCall$Companion;", "", "()V", "DEFAULT_RETRY_COUNT", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.l$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l$b.class */
    public static final class C17701b {
        private C17701b() {
        }

        public /* synthetic */ C17701b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected C17699l(C17700a b) {
        C18524p.m3840d(b, "b");
        if (!C18425p.m3966a((CharSequence) b.f62534a)) {
            if (C18425p.m3966a((CharSequence) b.f62535b)) {
                throw new IllegalArgumentException("version is null or empty");
            }
            this.f62526a = b.f62534a;
            this.f62527b = b.f62535b;
            this.f62528c = b.f62536c;
            this.f62529d = b.f62537d;
            this.f62530e = b.f62538e;
            this.f62532h = b.f62539f;
            this.f62533i = b.f62540g;
            this.f62531f = b.f62541h;
            return;
        }
        throw new IllegalArgumentException("method is null or empty");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!C18524p.m3850a(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.vk.api.sdk.VKMethodCall");
        C17699l c17699l = (C17699l) obj;
        return !(C18524p.m3850a((Object) this.f62526a, (Object) c17699l.f62526a) ^ true) && !(C18524p.m3850a(this.f62528c, c17699l.f62528c) ^ true);
    }

    public final int hashCode() {
        return (this.f62526a.hashCode() * 31) + this.f62528c.hashCode();
    }

    public final String toString() {
        return "VKMethodCall(method='" + this.f62526a + "', args=" + this.f62528c + ')';
    }
}
