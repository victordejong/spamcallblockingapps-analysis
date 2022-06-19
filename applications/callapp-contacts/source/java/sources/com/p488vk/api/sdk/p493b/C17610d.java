package com.p488vk.api.sdk.p493b;

import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.p488vk.api.sdk.C17685g;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.exceptions.VKApiIllegalResponseException;
import com.p488vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.p488vk.api.sdk.p496e.C17667b;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJ\u0017\u0010\u000e\u001a\u0004\u0018\u00018��2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m4298d2 = {"Lcom/vk/api/sdk/chain/InternalErrorRetryChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "backoff", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.d */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/d.class */
public final class C17610d<T> extends AbstractC17618h<T> {

    /* renamed from: a */
    private final C17667b f62356a = new C17667b(1000, Constants.MINUTE_IN_MILLIS, 1.5f, BitmapDescriptorFactory.HUE_RED, 8, null);

    /* renamed from: b */
    private final AbstractC17609c<T> f62357b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17610d(C17685g manager, int i, AbstractC17609c<? extends T> chain) {
        super(manager, i);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(chain, "chain");
        this.f62357b = chain;
    }

    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    public final T mo4868a(C17608b args) throws Exception {
        C18524p.m3840d(args, "args");
        Throwable th = null;
        while (true) {
            if (m4873b() >= 0 && this.f62356a.f62473b > m4873b()) {
                throw (th == null ? new VKApiException("api-call failed due to retry limits, but no exception has tracked") : th);
            }
            if (this.f62356a.m4846a()) {
                Thread.sleep(this.f62356a.f62472a);
            }
            try {
                return this.f62357b.mo4868a(args);
            } catch (VKApiExecutionException e) {
                int i = e.f62495b;
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
                if (!z) {
                    throw e;
                }
                m4876b("", e);
                th = e;
                this.f62356a.m4844b();
            } catch (VKApiIllegalResponseException e2) {
                m4876b("", e2);
                th = (Exception) e2;
                this.f62356a.m4844b();
            } catch (VKInternalServerErrorException e3) {
                m4876b("", e3);
                th = (Exception) e3;
                this.f62356a.m4844b();
            }
        }
    }
}
