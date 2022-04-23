package com.vk.api.sdk.b;

import com.vk.api.sdk.g;
import com.vk.api.sdk.l;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0017\u0010\u0006\u001a\u0004\u0018\u00018��2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/chain/ApiMethodPriorityChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", "call", "Lcom/vk/api/sdk/VKMethodCall;", "priorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;)V", "chainId", "", "getChainId", "()I", "chainId$delegate", "Lkotlin/Lazy;", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/a.class */
public final class a<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    final com.vk.api.sdk.e.a f35959a;

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f35960b = h.a(new C0573a());

    /* renamed from: c  reason: collision with root package name */
    private final c<T> f35961c;

    /* renamed from: d  reason: collision with root package name */
    private final l f35962d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "T", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/a$a.class */
    static final class C0573a extends r implements Function0<Integer> {
        C0573a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Integer invoke() {
            return 0;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a(g manager, c<? extends T> chain, l call, com.vk.api.sdk.e.a priorityBackoff) {
        super(manager);
        p.d(manager, "manager");
        p.d(chain, "chain");
        p.d(call, "call");
        p.d(priorityBackoff, "priorityBackoff");
        this.f35961c = chain;
        this.f35962d = call;
        this.f35959a = priorityBackoff;
    }

    @Override // com.vk.api.sdk.b.c
    public final T a(b args) {
        p.d(args, "args");
        return this.f35961c.a(args);
    }
}
