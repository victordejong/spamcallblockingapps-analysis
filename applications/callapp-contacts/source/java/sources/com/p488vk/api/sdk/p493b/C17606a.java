package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.C17699l;
import com.p488vk.api.sdk.p496e.AbstractC17660a;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0017\u0010\u0006\u001a\u0004\u0018\u00018��2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/vk/api/sdk/chain/ApiMethodPriorityChainCall;", "T", "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", "call", "Lcom/vk/api/sdk/VKMethodCall;", "priorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;)V", "chainId", "", "getChainId", "()I", "chainId$delegate", "Lkotlin/Lazy;", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.a */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/a.class */
public final class C17606a<T> extends AbstractC17609c<T> {

    /* renamed from: a */
    final AbstractC17660a f62347a;

    /* renamed from: b */
    private final Lazy f62348b = C18399h.m3897a(new C17607a());

    /* renamed from: c */
    private final AbstractC17609c<T> f62349c;

    /* renamed from: d */
    private final C17699l f62350d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "T", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.a$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/a$a.class */
    public static final class C17607a extends AbstractC18526r implements Function0<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17607a() {
            super(0);
            C17606a.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Integer invoke() {
            return 0;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17606a(C17685g manager, AbstractC17609c<? extends T> chain, C17699l call, AbstractC17660a priorityBackoff) {
        super(manager);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(chain, "chain");
        C18524p.m3840d(call, "call");
        C18524p.m3840d(priorityBackoff, "priorityBackoff");
        this.f62349c = chain;
        this.f62350d = call;
        this.f62347a = priorityBackoff;
    }

    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    public final T mo4868a(C17608b args) {
        C18524p.m3840d(args, "args");
        return this.f62349c.mo4868a(args);
    }
}
