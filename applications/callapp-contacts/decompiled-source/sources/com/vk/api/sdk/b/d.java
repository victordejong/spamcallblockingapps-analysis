package com.vk.api.sdk.b;

import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.vk.api.sdk.e.b;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.exceptions.VKApiIllegalResponseException;
import com.vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.vk.api.sdk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0017\u0010\u000e\u001a\u0004\u0018\u00018��2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/chain/InternalErrorRetryChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "backoff", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/d.class */
public final class d<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final b f35973a = new b(1000, Constants.MINUTE_IN_MILLIS, 1.5f, BitmapDescriptorFactory.HUE_RED, 8, null);

    /* renamed from: b  reason: collision with root package name */
    private final c<T> f35974b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public d(g manager, int i, c<? extends T> chain) {
        super(manager, i);
        p.d(manager, "manager");
        p.d(chain, "chain");
        this.f35974b = chain;
    }

    @Override // com.vk.api.sdk.b.c
    public final T a(b args) throws Exception {
        p.d(args, "args");
        VKApiExecutionException vKApiExecutionException = null;
        while (true) {
            if (b() < 0 || this.f35973a.f36056b <= b()) {
                if (this.f35973a.a()) {
                    Thread.sleep(this.f35973a.f36055a);
                }
                try {
                    return this.f35974b.a(args);
                } catch (VKApiExecutionException e) {
                    int i = e.f36073b;
                    boolean z = true;
                    if (i != 1) {
                        z = true;
                        if (i != 10) {
                            z = true;
                            if (i != 13) {
                                z = false;
                            }
                        }
                    }
                    if (z) {
                        b("", e);
                        vKApiExecutionException = e;
                        this.f35973a.b();
                    } else {
                        throw e;
                    }
                } catch (VKApiIllegalResponseException e2) {
                    b("", e2);
                    vKApiExecutionException = e2;
                    this.f35973a.b();
                } catch (VKInternalServerErrorException e3) {
                    b("", e3);
                    vKApiExecutionException = e3;
                    this.f35973a.b();
                }
            } else {
                throw (vKApiExecutionException == null ? new VKApiException("api-call failed due to retry limits, but no exception has tracked") : vKApiExecutionException);
            }
        }
    }
}
