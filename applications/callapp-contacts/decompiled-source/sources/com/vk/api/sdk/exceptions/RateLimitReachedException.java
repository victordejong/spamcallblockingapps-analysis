package com.vk.api.sdk.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vk/api/sdk/exceptions/RateLimitReachedException;", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "method", "", "message", "(Ljava/lang/String;Ljava/lang/String;)V", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/RateLimitReachedException.class */
public final class RateLimitReachedException extends VKApiExecutionException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RateLimitReachedException(String method, String message) {
        super(29, method, false, message, null, null, null, null, 240, null);
        p.d(method, "method");
        p.d(message, "message");
    }
}
