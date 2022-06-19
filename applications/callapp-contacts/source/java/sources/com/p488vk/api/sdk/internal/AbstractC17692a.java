package com.p488vk.api.sdk.internal;

import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0006H$¢\u0006\u0002\u0010\u0007¨\u0006\t"}, m4298d2 = {"Lcom/vk/api/sdk/internal/ApiCommand;", "Response", "", "()V", "execute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "onExecute", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.internal.a */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/a.class */
public abstract class AbstractC17692a<Response> {
    /* renamed from: a */
    protected abstract Response mo4824a(C17685g c17685g) throws InterruptedException, IOException, VKApiException;

    /* renamed from: b */
    public final Response m4823b(C17685g manager) throws InterruptedException, IOException, VKApiException {
        C18524p.m3840d(manager, "manager");
        return mo4824a(manager);
    }
}
