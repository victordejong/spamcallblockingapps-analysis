package com.sinch.verification.core.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.Interceptor;
import okhttp3.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/sinch/verification/core/auth/AuthorizationInterceptor;", "Lokhttp3/Interceptor;", "authorizationMethod", "Lcom/sinch/verification/core/auth/AuthorizationMethod;", "(Lcom/sinch/verification/core/auth/AuthorizationMethod;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/auth/AuthorizationInterceptor.class */
public final class AuthorizationInterceptor implements Interceptor {
    private final AuthorizationMethod authorizationMethod;

    public AuthorizationInterceptor(AuthorizationMethod authorizationMethod) {
        p.c(authorizationMethod, "authorizationMethod");
        this.authorizationMethod = authorizationMethod;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        p.c(chain, "chain");
        return chain.proceed(this.authorizationMethod.onAuthorize(chain.request()));
    }
}
