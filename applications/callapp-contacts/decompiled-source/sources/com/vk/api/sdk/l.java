package com.vk.api.sdk;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\r\b\u0016\u0018�� #2\u00020\u0001:\u0002\"#B\u000f\b\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010 \u001a\u00020\u0017H\u0016J\b\u0010!\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\bR\u0011\u0010\u0013\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\bR\u0011\u0010\u001c\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0015¨\u0006$"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall;", "", com.google.api.client.googleapis.notifications.b.f31754a, "Lcom/vk/api/sdk/VKMethodCall$Builder;", "(Lcom/vk/api/sdk/VKMethodCall$Builder;)V", "allowNoAuth", "", "getAllowNoAuth", "()Z", "args", "", "", "getArgs", "()Ljava/util/Map;", "ignoreExecuteErrors", "", "getIgnoreExecuteErrors", "()[I", "isAwaitNetwork", "method", "getMethod", "()Ljava/lang/String;", "retryCount", "", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "equals", "other", "hashCode", "toString", "Builder", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l.class */
public final class l {
    public static final b g = new b(null);

    /* renamed from: a  reason: collision with root package name */
    public final String f36097a;

    /* renamed from: b  reason: collision with root package name */
    public final String f36098b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f36099c;

    /* renamed from: d  reason: collision with root package name */
    final int f36100d;
    final boolean e;
    public final boolean f;
    private final boolean h;
    private final int[] i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020��2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u001fH\u0016J\u0010\u0010 \u001a\u00020��2\u0006\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010!\u001a\u00020\"H\u0016J\u0012\u0010\u000e\u001a\u00020��2\b\u0010#\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020��2\u0006\u0010$\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020��2\u0006\u0010%\u001a\u00020\u0004H\u0016J\u0010\u0010\u001b\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\tH\u0016R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R6\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\"\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\r@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0007R\u001e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0007R\u001e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0014¨\u0006&"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall$Builder;", "", "()V", "<set-?>", "", "allowNoAuth", "getAllowNoAuth", "()Z", "", "", "args", "getArgs", "()Ljava/util/Map;", "", "ignoreExecuteErrors", "getIgnoreExecuteErrors", "()[I", "isAwaitNetwork", "method", "getMethod", "()Ljava/lang/String;", "", "retryCount", "getRetryCount", "()I", "skipValidation", "getSkipValidation", "version", "getVersion", "key", "value", "", "awaitNetwork", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/vk/api/sdk/VKMethodCall;", "ignoredErrors", "count", EventConstants.SKIP, "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f36101a = "";

        /* renamed from: b  reason: collision with root package name */
        String f36102b = "";

        /* renamed from: c  reason: collision with root package name */
        public Map<String, String> f36103c = new LinkedHashMap();

        /* renamed from: d  reason: collision with root package name */
        int f36104d = 4;
        boolean e;
        boolean f;
        int[] g;
        public boolean h;

        public final a a() {
            a aVar = this;
            aVar.f36104d = 0;
            return aVar;
        }

        public final a a(String method) {
            p.d(method, "method");
            a aVar = this;
            aVar.f36101a = method;
            return aVar;
        }

        public final a a(String key, String value) {
            p.d(key, "key");
            p.d(value, "value");
            a aVar = this;
            aVar.f36103c.put(key, value);
            return aVar;
        }

        public final a b(String version) {
            p.d(version, "version");
            a aVar = this;
            aVar.f36102b = version;
            return aVar;
        }

        public final l b() {
            return new l(this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKMethodCall$Companion;", "", "()V", "DEFAULT_RETRY_COUNT", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/l$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected l(a b2) {
        p.d(b2, "b");
        if (kotlin.h.p.a((CharSequence) b2.f36101a)) {
            throw new IllegalArgumentException("method is null or empty");
        } else if (!kotlin.h.p.a((CharSequence) b2.f36102b)) {
            this.f36097a = b2.f36101a;
            this.f36098b = b2.f36102b;
            this.f36099c = b2.f36103c;
            this.f36100d = b2.f36104d;
            this.e = b2.e;
            this.h = b2.f;
            this.i = b2.g;
            this.f = b2.h;
        } else {
            throw new IllegalArgumentException("version is null or empty");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p.a(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.vk.api.sdk.VKMethodCall");
        l lVar = (l) obj;
        return !(p.a((Object) this.f36097a, (Object) lVar.f36097a) ^ true) && !(p.a(this.f36099c, lVar.f36099c) ^ true);
    }

    public final int hashCode() {
        return (this.f36097a.hashCode() * 31) + this.f36099c.hashCode();
    }

    public final String toString() {
        return "VKMethodCall(method='" + this.f36097a + "', args=" + this.f36099c + ')';
    }
}
