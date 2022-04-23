package com.sinch.verification.core.initiation.response;

import com.sinch.verification.core.initiation.response.InitiationResponseData;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0016\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/sinch/verification/core/initiation/response/EmptyInitializationListener;", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "Lcom/sinch/verification/core/initiation/response/InitiationListener;", "()V", "onInitializationFailed", "", "t", "", "onInitiated", "data", "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/response/EmptyInitializationListener.class */
public class EmptyInitializationListener<T extends InitiationResponseData> implements InitiationListener<T> {
    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public void onInitializationFailed(Throwable t) {
        p.c(t, "t");
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public void onInitiated(T data) {
        p.c(data, "data");
    }
}
