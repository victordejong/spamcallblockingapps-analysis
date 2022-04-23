package com.sinch.verification.core.config.general;

import android.content.Context;
import com.d.a.a.a.a.b;
import com.d.a.a.a.a.d;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.sinch.verification.core.auth.AuthorizationInterceptor;
import com.sinch.verification.core.auth.AuthorizationMethod;
import com.sinch.verificationcore.BuildConfig;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \f2\u00020\u0001:\u0002\u000b\fB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/sinch/verification/core/config/general/SinchGlobalConfig;", "Lcom/sinch/verification/core/config/general/GlobalConfig;", "context", "Landroid/content/Context;", "retrofit", "Lretrofit2/Retrofit;", "(Landroid/content/Context;Lretrofit2/Retrofit;)V", "getContext", "()Landroid/content/Context;", "getRetrofit", "()Lretrofit2/Retrofit;", "Builder", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/general/SinchGlobalConfig.class */
public final class SinchGlobalConfig implements GlobalConfig {
    public static final Companion Companion = new Companion(null);
    public static final long OKHTTP_CONNECT_TIMEOUT = 30;
    public static final long OKHTTP_READ_TIMEOUT = 30;
    private final Context context;
    private final Retrofit retrofit;

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00152\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00032\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;", "Lcom/sinch/verification/core/config/general/ApplicationContextSetter;", "Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;", "Lcom/sinch/verification/core/config/general/GlobalConfigCreator;", "()V", "additionalInterceptors", "", "Lokhttp3/Interceptor;", "apiHost", "", "authorizationMethod", "Lcom/sinch/verification/core/auth/AuthorizationMethod;", "baseUrl", "getBaseUrl", "()Ljava/lang/String;", "context", "Landroid/content/Context;", "applicationContext", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/sinch/verification/core/config/general/GlobalConfig;", "interceptors", "Companion", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/general/SinchGlobalConfig$Builder.class */
    public static final class Builder implements ApplicationContextSetter, AuthorizationMethodSetter, GlobalConfigCreator {
        public static final Companion Companion = new Companion(null);
        private List<? extends Interceptor> additionalInterceptors;
        private String apiHost;
        private AuthorizationMethod authorizationMethod;
        private Context context;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u00048FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;", "", "()V", "instance", "Lcom/sinch/verification/core/config/general/ApplicationContextSetter;", "instance$annotations", "getInstance", "()Lcom/sinch/verification/core/config/general/ApplicationContextSetter;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ void instance$annotations() {
            }

            public final ApplicationContextSetter getInstance() {
                return new Builder(null);
            }
        }

        private Builder() {
            this.apiHost = BuildConfig.API_BASE_URL;
            this.additionalInterceptors = z.f36608a;
        }

        public /* synthetic */ Builder(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String getBaseUrl() {
            return this.apiHost + "verification/v1/";
        }

        public static final ApplicationContextSetter getInstance() {
            return Companion.getInstance();
        }

        @Override // com.sinch.verification.core.config.general.GlobalConfigCreator
        public final GlobalConfigCreator apiHost(String apiHost) {
            p.c(apiHost, "apiHost");
            this.apiHost = apiHost;
            return this;
        }

        @Override // com.sinch.verification.core.config.general.ApplicationContextSetter
        public final AuthorizationMethodSetter applicationContext(Context applicationContext) {
            p.c(applicationContext, "applicationContext");
            this.context = applicationContext;
            return this;
        }

        @Override // com.sinch.verification.core.config.general.AuthorizationMethodSetter
        public final GlobalConfigCreator authorizationMethod(AuthorizationMethod authorizationMethod) {
            p.c(authorizationMethod, "authorizationMethod");
            this.authorizationMethod = authorizationMethod;
            return this;
        }

        @Override // com.sinch.verification.core.config.general.GlobalConfigCreator
        public final GlobalConfig build() {
            OkHttpClient.Builder connectTimeout = new OkHttpClient().newBuilder().readTimeout(30L, TimeUnit.SECONDS).connectTimeout(30L, TimeUnit.SECONDS);
            AuthorizationMethod authorizationMethod = this.authorizationMethod;
            if (authorizationMethod == null) {
                p.a("authorizationMethod");
            }
            OkHttpClient.Builder addInterceptor = connectTimeout.addInterceptor(new AuthorizationInterceptor(authorizationMethod));
            for (Interceptor interceptor : this.additionalInterceptors) {
                addInterceptor.addInterceptor(interceptor);
            }
            OkHttpClient build = addInterceptor.build();
            Retrofit.a a2 = new Retrofit.a().a(getBaseUrl());
            Json asConverterFactory = new Json(JsonConfiguration.copy$default(JsonConfiguration.Companion.getStable(), false, true, false, false, false, false, false, null, false, null, null, 2045, null), null, 2, null);
            MediaType contentType = MediaType.Companion.get("application/json");
            p.c(asConverterFactory, "$this$asConverterFactory");
            p.c(contentType, "contentType");
            Retrofit retrofit = a2.a(new b(contentType, new d.a(asConverterFactory))).a(build).a();
            Context context = this.context;
            if (context == null) {
                p.a("context");
            }
            p.a((Object) retrofit, "retrofit");
            return new SinchGlobalConfig(context, retrofit, null);
        }

        @Override // com.sinch.verification.core.config.general.GlobalConfigCreator
        public final GlobalConfigCreator interceptors(List<? extends Interceptor> interceptors) {
            p.c(interceptors, "interceptors");
            this.additionalInterceptors = interceptors;
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Companion;", "", "()V", "OKHTTP_CONNECT_TIMEOUT", "", "OKHTTP_READ_TIMEOUT", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/config/general/SinchGlobalConfig$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private SinchGlobalConfig(Context context, Retrofit retrofit) {
        this.context = context;
        this.retrofit = retrofit;
    }

    public /* synthetic */ SinchGlobalConfig(Context context, Retrofit retrofit, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, retrofit);
    }

    @Override // com.sinch.verification.core.config.general.GlobalConfig
    public final Context getContext() {
        return this.context;
    }

    @Override // com.sinch.verification.core.config.general.GlobalConfig
    public final Retrofit getRetrofit() {
        return this.retrofit;
    }
}
