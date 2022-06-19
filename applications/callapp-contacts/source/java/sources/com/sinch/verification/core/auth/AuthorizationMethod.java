package com.sinch.verification.core.auth;

import kotlin.Metadata;
import okhttp3.Request;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, m4298d2 = {"Lcom/sinch/verification/core/auth/AuthorizationMethod;", "", "onAuthorize", "Lokhttp3/Request;", "request", "onPrepareAuthorization", "", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/auth/AuthorizationMethod.class */
public interface AuthorizationMethod {
    Request onAuthorize(Request request);

    void onPrepareAuthorization();
}
