package com.p488vk.api.sdk.p493b;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.p496e.C17667b;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0010B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0017\u0010\f\u001a\u0004\u0018\u00018��2\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Backoff", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.i */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/i.class */
public final class C17619i<T> extends AbstractC17618h<T> {

    /* renamed from: a */
    private final AbstractC17609c<T> f62375a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall$Backoff;", "", "()V", Payload.RESPONSE_TIMEOUT, "", "bf", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "backoff", "", "delayTime", "reset", "shouldWait", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.i$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/i$a.class */
    static final class C17620a {

        /* renamed from: a */
        public static final C17620a f62376a = new C17620a();

        /* renamed from: b */
        private static final C17667b f62377b = new C17667b(1000, 8000, 1.2f, BitmapDescriptorFactory.HUE_RED, 8, null);

        private C17620a() {
        }

        /* renamed from: a */
        public final boolean m4872a() {
            boolean m4846a;
            synchronized (this) {
                m4846a = f62377b.m4846a();
            }
            return m4846a;
        }

        /* renamed from: b */
        public final void m4871b() {
            synchronized (this) {
                f62377b.m4844b();
            }
        }

        /* renamed from: c */
        public final void m4870c() {
            synchronized (this) {
                C17667b c17667b = f62377b;
                c17667b.f62472a = c17667b.f62474c;
                c17667b.f62473b = 0;
            }
        }

        /* renamed from: d */
        public final long m4869d() {
            long j;
            synchronized (this) {
                j = f62377b.f62472a;
            }
            return j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17619i(C17685g manager, int i, AbstractC17609c<? extends T> chain) {
        super(manager, i);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(chain, "chain");
        this.f62375a = chain;
    }

    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    public final T mo4868a(C17608b args) throws Exception {
        C18524p.m3840d(args, "args");
        int b = m4873b();
        if (b >= 0) {
            int i = 0;
            while (true) {
                if (C17620a.f62376a.m4872a()) {
                    Thread.sleep(C17620a.f62376a.m4869d());
                }
                try {
                    T mo4868a = this.f62375a.mo4868a(args);
                    C17620a.f62376a.m4870c();
                    return mo4868a;
                } catch (VKApiExecutionException e) {
                    if (!(e.f62495b == 6)) {
                        throw e;
                    }
                    m4877a("Too many requests", e);
                    C17620a.f62376a.m4871b();
                    if (i == b) {
                        break;
                    }
                    i++;
                }
            }
        }
        throw new VKApiException("Can't handle too many requests due to retry limit! (retryLimit=" + m4873b() + ')');
    }
}
