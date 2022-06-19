package com.p488vk.api.sdk.p494c;

import android.content.Context;
import android.os.Looper;
import com.appsflyer.internal.referrer.Payload;
import com.p488vk.api.sdk.AbstractC17702m;
import com.p488vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.p488vk.api.sdk.exceptions.VKLargeEntityException;
import com.p488vk.api.sdk.internal.C17696d;
import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018�� J2\u00020\u0001:\u0002JKB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0014J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H\u0002J\u0018\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0014J\u0010\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020$H\u0016J\u001a\u0010-\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0004J\u0012\u00106\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020$H\u0014J\u0012\u00107\u001a\u0004\u0018\u00010\u00062\u0006\u0010#\u001a\u00020$H\u0014J\u0010\u00108\u001a\u00020\u001f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0018\u00109\u001a\u00020:2\u0006\u0010#\u001a\u00020/2\u0006\u0010;\u001a\u00020<H\u0014J\u0012\u0010=\u001a\u0004\u0018\u00010\u00062\u0006\u0010>\u001a\u000203H\u0004J\b\u0010?\u001a\u00020\u0006H\u0002J\u0018\u0010@\u001a\u00020\u001f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006J\u0010\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u0017H\u0002J\u0018\u0010C\u001a\u00020\u00062\u0006\u0010#\u001a\u00020$2\u0006\u0010D\u001a\u00020\u0006H\u0004J \u0010E\u001a\u00020F*\u00020F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020I0HH\u0002R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\tR\"\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\tR\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\"\u0010\u001c\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\t¨\u0006L"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "", "config", "Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "(Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;)V", "<set-?>", "", "accessToken", "getAccessToken", "()Ljava/lang/String;", "getConfig", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "customEndpoint", "host", "getHost", "ignoredAccessToken", "getIgnoredAccessToken", "lock", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "okHttpProvider$delegate", "Lkotlin/Lazy;", "secret", "getSecret", "checkAccessTokenIsIgnored", "", "method", "requestAccessToken", "checkNonSecretMethodCall", "call", "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "convertFileNameToSafeValue", "fileName", "createLoggingInterceptor", "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "execute", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "Lcom/vk/api/sdk/okhttp/OkHttpPostCall;", "progressListener", "Lcom/vk/api/sdk/VKApiProgressListener;", "executeRequest", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "getActualAccessToken", "getActualSecret", "ignoreAccessToken", "makePostCallRequestBuilder", "Lokhttp3/Request$Builder;", "requestBody", "Lokhttp3/RequestBody;", "readResponse", Payload.RESPONSE, "resolveEndpoint", "setCredentials", "updateClient", "provider", "validateQueryString", "paramsString", "updateWith", "Lokhttp3/MultipartBody$Builder;", "parts", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "Companion", "MethodResponse", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.c */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c.class */
public final class C17637c {

    /* renamed from: g */
    public static final C17638a f62402g = new C17638a(null);

    /* renamed from: b */
    public volatile String f62404b;

    /* renamed from: c */
    public volatile String f62405c;

    /* renamed from: d */
    public final String f62406d;

    /* renamed from: e */
    public volatile String f62407e;

    /* renamed from: f */
    public final C17642d f62408f;

    /* renamed from: h */
    private final Context f62409h;

    /* renamed from: i */
    private final Object f62410i = new Object();

    /* renamed from: a */
    public final Lazy f62403a = C18399h.m3897a(new C17640c());

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;", "", "()V", "MIME_APPLICATION", "", "UTF_8", "defaultApiEndpoint", "host", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.c$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$a.class */
    public static final class C17638a {
        private C17638a() {
        }

        public /* synthetic */ C17638a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "", Payload.RESPONSE, "", "executorRequestAccessToken", "(Ljava/lang/String;Ljava/lang/String;)V", "getExecutorRequestAccessToken", "()Ljava/lang/String;", "getResponse", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.c$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$b.class */
    public static final class C17639b {

        /* renamed from: a */
        public final String f62411a;

        /* renamed from: b */
        public final String f62412b;

        public C17639b(String str, String str2) {
            this.f62411a = str;
            this.f62412b = str2;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C17639b)) {
                    return false;
                }
                C17639b c17639b = (C17639b) obj;
                return C18524p.m3850a((Object) this.f62411a, (Object) c17639b.f62411a) && C18524p.m3850a((Object) this.f62412b, (Object) c17639b.f62412b);
            }
            return true;
        }

        public final int hashCode() {
            String str = this.f62411a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f62412b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "MethodResponse(response=" + this.f62411a + ", executorRequestAccessToken=" + this.f62412b + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/vk/api/sdk/VKOkHttpProvider;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.c$c */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$c.class */
    public static final class C17640c extends AbstractC18526r implements Function0<AbstractC17702m> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17640c() {
            super(0);
            C17637c.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC17702m invoke() {
            if (!C18524p.m3850a(Looper.getMainLooper(), Looper.myLooper())) {
                C17637c c17637c = C17637c.this;
                C17637c.m4861a(c17637c, c17637c.f62408f.f62415a.f62441f);
                return C17637c.this.f62408f.f62415a.f62441f;
            }
            throw new IllegalStateException("UI thread");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¨\u0006\u0005"}, m4298d2 = {"com/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "update", "Lokhttp3/OkHttpClient$Builder;", "builder", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.c.c$d */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/c$d.class */
    public static final class C17641d implements AbstractC17702m.AbstractC17703a {
        C17641d() {
            C17637c.this = r4;
        }

        @Override // com.p488vk.api.sdk.AbstractC17702m.AbstractC17703a
        /* renamed from: a */
        public final OkHttpClient.Builder mo4805a(OkHttpClient.Builder builder) {
            C18524p.m3840d(builder, "builder");
            if (AbstractC17665c.EnumC17666a.NONE != C17637c.this.f62408f.f62415a.f62442g.mo4848a().mo1102a()) {
                builder.addInterceptor(C17637c.m4858a(C17637c.this.f62408f.f62415a.f62445j, C17637c.this.f62408f.f62415a.f62442g));
            }
            return builder;
        }
    }

    public C17637c(C17642d config) {
        C18524p.m3840d(config, "config");
        this.f62408f = config;
        this.f62409h = config.f62415a.f62436a;
        this.f62404b = config.m4857a();
        this.f62405c = config.m4856b();
        this.f62406d = config.f62415a.f62449n.mo1102a();
    }

    /* renamed from: a */
    protected static C17627b m4858a(boolean z, AbstractC17665c logger) {
        C18524p.m3840d(logger, "logger");
        return new C17627b(z, logger);
    }

    /* renamed from: a */
    public static String m4859a(Response response) {
        ResponseBody responseBody;
        C18524p.m3840d(response, "response");
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

    /* renamed from: a */
    public static final /* synthetic */ void m4861a(C17637c c17637c, AbstractC17702m abstractC17702m) {
        abstractC17702m.mo4803a(new C17641d());
    }

    /* renamed from: a */
    public final void m4860a(String accessToken, String str) {
        C18524p.m3840d(accessToken, "accessToken");
        C17696d c17696d = C17696d.f62523a;
        C17696d.m4815a(accessToken);
        this.f62404b = accessToken;
        this.f62405c = str;
    }
}
