package com.p488vk.api.sdk.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "method", "", "(Ljava/lang/String;)V", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.exceptions.IgnoredAccessTokenException */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/IgnoredAccessTokenException.class */
public final class IgnoredAccessTokenException extends VKApiExecutionException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IgnoredAccessTokenException(String method) {
        super(-2, method, false, "Ignored Access Token", null, null, null, null, 240, null);
        C18524p.m3840d(method, "method");
    }
}
