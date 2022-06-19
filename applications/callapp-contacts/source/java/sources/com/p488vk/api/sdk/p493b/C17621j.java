package com.p488vk.api.sdk.p493b;

import com.p488vk.api.sdk.AbstractC17689i;
import com.p488vk.api.sdk.C17685g;
import java.util.concurrent.CountDownLatch;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.AbstractC18473n;
import kotlin.jvm.internal.C18522n;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJX\u0010\f\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u0001H\r2)\u0010\u0011\u001a%\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H\u0004¢\u0006\u0002\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00018��2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u001c\u001a\u00020\u001dH\u0004R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006$"}, m4298d2 = {"Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "awaitValidation", "H", "extra", "", "handler", "handlerMethod", "Lkotlin/Function3;", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "handleCaptcha", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "handleException", "handleUserConfirmation", "handleValidation", "persistToken", "credentials", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b.j */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j.class */
public final class C17621j<T> extends AbstractC17618h<T> {

    /* renamed from: a */
    private final AbstractC17609c<T> f62378a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0002\b\t"}, m4298d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.j$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$a.class */
    static final /* synthetic */ class C17622a extends C18522n implements AbstractC18473n<AbstractC17689i, String, AbstractC17689i.C17690a<String>, C20128v> {

        /* renamed from: a */
        public static final C17622a f62379a = new C17622a();

        C17622a() {
            super(3, AbstractC17689i.class, "handleCaptcha", "handleCaptcha(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.AbstractC18473n
        /* renamed from: a */
        public final /* synthetic */ C20128v mo1164a(AbstractC17689i abstractC17689i, String str, AbstractC17689i.C17690a<String> c17690a) {
            AbstractC17689i p1 = abstractC17689i;
            String p2 = str;
            AbstractC17689i.C17690a<String> p3 = c17690a;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            C18524p.m3840d(p3, "p3");
            p1.mo4813a(p2, p3);
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n"}, m4298d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.j$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$b.class */
    static final /* synthetic */ class C17623b extends C18522n implements AbstractC18473n<AbstractC17689i, String, AbstractC17689i.C17690a<Boolean>, C20128v> {

        /* renamed from: a */
        public static final C17623b f62380a = new C17623b();

        C17623b() {
            super(3, AbstractC17689i.class, "handleConfirm", "handleConfirm(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.AbstractC18473n
        /* renamed from: a */
        public final /* synthetic */ C20128v mo1164a(AbstractC17689i abstractC17689i, String str, AbstractC17689i.C17690a<Boolean> c17690a) {
            AbstractC17689i p1 = abstractC17689i;
            String p2 = str;
            AbstractC17689i.C17690a<Boolean> p3 = c17690a;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            C18524p.m3840d(p3, "p3");
            p1.mo4811c(p2, p3);
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n"}, m4298d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b.j$c */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$c.class */
    static final /* synthetic */ class C17624c extends C18522n implements AbstractC18473n<AbstractC17689i, String, AbstractC17689i.C17690a<AbstractC17689i.C17691b>, C20128v> {

        /* renamed from: a */
        public static final C17624c f62381a = new C17624c();

        C17624c() {
            super(3, AbstractC17689i.class, "handleValidation", "handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.AbstractC18473n
        /* renamed from: a */
        public final /* synthetic */ C20128v mo1164a(AbstractC17689i abstractC17689i, String str, AbstractC17689i.C17690a<AbstractC17689i.C17691b> c17690a) {
            AbstractC17689i p1 = abstractC17689i;
            String p2 = str;
            AbstractC17689i.C17690a<AbstractC17689i.C17691b> p3 = c17690a;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            C18524p.m3840d(p3, "p3");
            p1.mo4812b(p2, p3);
            return C20128v.f66529a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C17621j(C17685g manager, int i, AbstractC17609c<? extends T> chain) {
        super(manager, i);
        C18524p.m3840d(manager, "manager");
        C18524p.m3840d(chain, "chain");
        this.f62378a = chain;
    }

    /* renamed from: a */
    private static <T, H> T m4867a(String extra, H h, AbstractC18473n<? super H, ? super String, ? super AbstractC17689i.C17690a<T>, C20128v> handlerMethod) {
        C18524p.m3840d(extra, "extra");
        C18524p.m3840d(handlerMethod, "handlerMethod");
        if (h == null) {
            return null;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AbstractC17689i.C17690a c17690a = new AbstractC17689i.C17690a(countDownLatch);
        handlerMethod.mo1164a(h, extra, c17690a);
        countDownLatch.await();
        return c17690a.f62512a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
        if (r0 == null) goto L18;
     */
    @Override // com.p488vk.api.sdk.p493b.AbstractC17609c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T mo4868a(com.p488vk.api.sdk.p493b.C17608b r5) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.p493b.C17621j.mo4868a(com.vk.api.sdk.b.b):java.lang.Object");
    }
}
