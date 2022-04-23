package com.vk.api.sdk.internal;

import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.g;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0006H$¢\u0006\u0002\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/internal/ApiCommand;", "Response", "", "()V", "execute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "onExecute", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/a.class */
public abstract class a<Response> {
    protected abstract Response a(g gVar) throws InterruptedException, IOException, VKApiException;

    public final Response b(g manager) throws InterruptedException, IOException, VKApiException {
        p.d(manager, "manager");
        return a(manager);
    }
}
