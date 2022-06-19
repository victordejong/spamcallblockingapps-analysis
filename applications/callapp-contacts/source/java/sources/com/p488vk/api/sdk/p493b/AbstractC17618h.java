package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.C17685g;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/chain/RetryChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "(Lcom/vk/api/sdk/VKApiManager;I)V", "getRetryLimit", "()I", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.h */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/h.class */
public abstract class AbstractC17618h<T> extends AbstractC17609c<T> {

    /* renamed from: a */
    private final int f62374a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC17618h(C17685g manager, int i) {
        super(manager);
        C18524p.m3840d(manager, "manager");
        this.f62374a = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException("retryLimit must be >= 0");
    }

    /* renamed from: b */
    public final int m4873b() {
        return this.f62374a;
    }
}
