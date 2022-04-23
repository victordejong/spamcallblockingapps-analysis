package com.vk.api.sdk.b;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.vk.api.sdk.e.b;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0010B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0017\u0010\f\u001a\u0004\u0018\u00018��2\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Backoff", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/i.class */
public final class i<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f35991a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\bÂ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall$Backoff;", "", "()V", Payload.RESPONSE_TIMEOUT, "", "bf", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "backoff", "", "delayTime", "reset", "shouldWait", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f35992a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final b f35993b = new b(1000, 8000, 1.2f, BitmapDescriptorFactory.HUE_RED, 8, null);

        private a() {
        }

        public final boolean a() {
            boolean a2;
            synchronized (this) {
                a2 = f35993b.a();
            }
            return a2;
        }

        public final void b() {
            synchronized (this) {
                f35993b.b();
            }
        }

        public final void c() {
            synchronized (this) {
                b bVar = f35993b;
                bVar.f36055a = bVar.f36057c;
                bVar.f36056b = 0;
            }
        }

        public final long d() {
            long j;
            synchronized (this) {
                j = f35993b.f36055a;
            }
            return j;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public i(g manager, int i, c<? extends T> chain) {
        super(manager, i);
        p.d(manager, "manager");
        p.d(chain, "chain");
        this.f35991a = chain;
    }

    @Override // com.vk.api.sdk.b.c
    public final T a(b args) throws Exception {
        p.d(args, "args");
        int b2 = b();
        if (b2 >= 0) {
            int i = 0;
            while (true) {
                if (a.f35992a.a()) {
                    Thread.sleep(a.f35992a.d());
                }
                try {
                    T a2 = this.f35991a.a(args);
                    a.f35992a.c();
                    return a2;
                } catch (VKApiExecutionException e) {
                    if (e.f36073b == 6) {
                        a("Too many requests", e);
                        a.f35992a.b();
                        if (i == b2) {
                            break;
                        }
                        i++;
                    } else {
                        throw e;
                    }
                }
            }
        }
        throw new VKApiException("Can't handle too many requests due to retry limit! (retryLimit=" + b() + ')');
    }
}
