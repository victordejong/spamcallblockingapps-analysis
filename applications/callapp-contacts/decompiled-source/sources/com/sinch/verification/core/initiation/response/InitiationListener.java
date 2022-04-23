package com.sinch.verification.core.initiation.response;

import com.sinch.verification.core.initiation.response.InitiationResponseData;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0004\bf\u0018��*\n\b��\u0010\u0001 ��*\u00020\u00022\u00020\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0015\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00028��H&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/sinch/verification/core/initiation/response/InitiationListener;", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "", "onInitializationFailed", "", "t", "", "onInitiated", "data", "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/response/InitiationListener.class */
public interface InitiationListener<T extends InitiationResponseData> {
    void onInitializationFailed(Throwable th);

    void onInitiated(T t);
}
