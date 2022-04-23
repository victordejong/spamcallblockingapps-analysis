package com.sinch.verification.core.auth;

import com.mopub.mobileads.AmazonAdapterConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.Request;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/sinch/verification/core/auth/AppKeyAuthorizationMethod;", "Lcom/sinch/verification/core/auth/AuthorizationMethod;", AmazonAdapterConfiguration.APP_KEY, "", "(Ljava/lang/String;)V", "onAuthorize", "Lokhttp3/Request;", "request", "onPrepareAuthorization", "", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/auth/AppKeyAuthorizationMethod.class */
public final class AppKeyAuthorizationMethod implements AuthorizationMethod {
    private final String appKey;

    public AppKeyAuthorizationMethod(String appKey) {
        p.c(appKey, "appKey");
        this.appKey = appKey;
    }

    @Override // com.sinch.verification.core.auth.AuthorizationMethod
    public final Request onAuthorize(Request request) {
        p.c(request, "request");
        Request.Builder newBuilder = request.newBuilder();
        return newBuilder.addHeader("Authorization", "Application " + this.appKey).build();
    }

    @Override // com.sinch.verification.core.auth.AuthorizationMethod
    public final void onPrepareAuthorization() {
    }
}
