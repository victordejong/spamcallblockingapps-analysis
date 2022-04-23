package com.vk.api.sdk.b;

import com.vk.api.sdk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/chain/RetryChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "(Lcom/vk/api/sdk/VKApiManager;I)V", "getRetryLimit", "()I", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/h.class */
public abstract class h<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final int f35990a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g manager, int i) {
        super(manager);
        p.d(manager, "manager");
        this.f35990a = i;
        if (i < 0) {
            throw new IllegalArgumentException("retryLimit must be >= 0");
        }
    }

    public final int b() {
        return this.f35990a;
    }
}
