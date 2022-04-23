package com.vk.api.sdk.c;

import android.content.Context;
import android.os.Looper;
import com.appsflyer.internal.referrer.Payload;
import com.vk.api.sdk.e.a.c;
import com.vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.vk.api.sdk.exceptions.VKLargeEntityException;
import com.vk.api.sdk.m;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018�� J2\u00020\u0001:\u0002JKB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0014J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H\u0002J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0014J\u0010\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020$H\u0016J\u001a\u0010-\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0004J\u0012\u00106\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020$H\u0014J\u0012\u00107\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020$H\u0014J\u0010\u00108\u001a\u00020\u001f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0018\u00109\u001a\u00020:2\u0006\u0010#\u001a\u00020/2\u0006\u0010;\u001a\u00020<H\u0014J\u0012\u0010=\u001a\u0004\u0018\u00010\u00062\u0006\u0010>\u001a\u000203H\u0004J\b\u0010?\u001a\u00020\u0006H\u0002J\u0018\u0010@\u001a\u00020\u001f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006J\u0010\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u0017H\u0002J\u0018\u0010C\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010D\u001a\u00020\u0006H\u0004J \u0010E\u001a\u00020F*\u00020F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020I0HH\u0002R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\tR\"\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\tR\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001c\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\t¨\u0006L"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "", "config", "Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "(Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;)V", "<set-?>", "", "accessToken", "getAccessToken", "()Ljava/lang/String;", "getConfig", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "customEndpoint", "host", "getHost", "ignoredAccessToken", "getIgnoredAccessToken", "lock", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "okHttpProvider$delegate", "Lkotlin/Lazy;", "secret", "getSecret", "checkAccessTokenIsIgnored", "", "method", "requestAccessToken", "checkNonSecretMethodCall", "call", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "convertFileNameToSafeValue", "fileName", "createLoggingInterceptor", "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "execute", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "Lcom/vk/api/sdk/okhttp/OkHttpPostCall;", "progressListener", "Lcom/vk/api/sdk/VKApiProgressListener;", "executeRequest", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "getActualAccessToken", "getActualSecret", "ignoreAccessToken", "makePostCallRequestBuilder", "Lokhttp3/Request$Builder;", "requestBody", "Lokhttp3/RequestBody;", "readResponse", Payload.RESPONSE, "resolveEndpoint", "setCredentials", "updateClient", "provider", "validateQueryString", "paramsString", "updateWith", "Lokhttp3/MultipartBody$Builder;", "parts", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "Companion", "MethodResponse", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c.class */
public final class c {
    public static final a g = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public volatile String f36012b;

    /* renamed from: c  reason: collision with root package name */
    public volatile String f36013c;

    /* renamed from: d  reason: collision with root package name */
    public final String f36014d;
    public volatile String e;
    public final com.vk.api.sdk.c.d f;
    private final Context h;
    private final Object i = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final Lazy f36011a = h.a(new C0576c());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;", "", "()V", "MIME_APPLICATION", "", "UTF_8", "defaultApiEndpoint", "host", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "", Payload.RESPONSE, "", "executorRequestAccessToken", "(Ljava/lang/String;Ljava/lang/String;)V", "getExecutorRequestAccessToken", "()Ljava/lang/String;", "getResponse", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f36015a;

        /* renamed from: b  reason: collision with root package name */
        public final String f36016b;

        public b(String str, String str2) {
            this.f36015a = str;
            this.f36016b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return p.a((Object) this.f36015a, (Object) bVar.f36015a) && p.a((Object) this.f36016b, (Object) bVar.f36016b);
        }

        public final int hashCode() {
            String str = this.f36015a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f36016b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "MethodResponse(response=" + this.f36015a + ", executorRequestAccessToken=" + this.f36016b + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vk/api/sdk/VKOkHttpProvider;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$c.class */
    static final class C0576c extends r implements Function0<m> {
        C0576c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ m invoke() {
            if (!p.a(Looper.getMainLooper(), Looper.myLooper())) {
                c cVar = c.this;
                c.a(cVar, cVar.f.f36019a.f);
                return c.this.f.f36019a.f;
            }
            throw new IllegalStateException("UI thread");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, d2 = {"com/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "update", "Lokhttp3/OkHttpClient$Builder;", "builder", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$d.class */
    public static final class d implements m.a {
        d() {
        }

        @Override // com.vk.api.sdk.m.a
        public final OkHttpClient.Builder a(OkHttpClient.Builder builder) {
            p.d(builder, "builder");
            if (c.a.NONE != c.this.f.f36019a.g.a().a()) {
                builder.addInterceptor(c.a(c.this.f.f36019a.j, c.this.f.f36019a.g));
            }
            return builder;
        }
    }

    public c(com.vk.api.sdk.c.d config) {
        p.d(config, "config");
        this.f = config;
        this.h = config.f36019a.f36036a;
        this.f36012b = config.a();
        this.f36013c = config.b();
        this.f36014d = config.f36019a.n.a();
    }

    protected static com.vk.api.sdk.c.b a(boolean z, com.vk.api.sdk.e.a.c logger) {
        p.d(logger, "logger");
        return new com.vk.api.sdk.c.b(z, logger);
    }

    public static String a(Response response) {
        ResponseBody responseBody;
        p.d(response, "response");
        if (response.code() != 413) {
            ResponseBody body = response.body();
            String str = null;
            if (body != null) {
                try {
                    str = body.string();
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            int code = response.code();
            if (500 > code || 599 < code) {
                return str;
            }
            int code2 = response.code();
            String str2 = str;
            if (str == null) {
                str2 = JsonReaderKt.NULL;
            }
            throw new VKInternalServerErrorException(code2, str2);
        }
        throw new VKLargeEntityException(response.message());
    }

    public static final /* synthetic */ void a(c cVar, m mVar) {
        mVar.a(new d());
    }

    public final void a(String accessToken, String str) {
        p.d(accessToken, "accessToken");
        com.vk.api.sdk.internal.d dVar = com.vk.api.sdk.internal.d.f36095a;
        com.vk.api.sdk.internal.d.a(accessToken);
        this.f36012b = accessToken;
        this.f36013c = str;
    }
}
