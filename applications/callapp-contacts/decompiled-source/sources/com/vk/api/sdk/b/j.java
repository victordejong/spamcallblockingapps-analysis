package com.vk.api.sdk.b;

import com.vk.api.sdk.g;
import com.vk.api.sdk.i;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\u0002\u0010\tJX\u0010\f\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u0001H\r2)\u0010\u0011\u001a%\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0013\u0012\u0004\u0012\u00020\u00140\u0012¢\u0006\u0002\b\u0015H\u0004¢\u0006\u0002\u0010\u0016J\u0017\u0010\u0017\u001a\u0004\u0018\u00018��2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0018\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001a\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u001c\u001a\u00020\u001dH\u0004R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006$"}, d2 = {"Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", "T", "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", "awaitValidation", "H", "extra", "", "handler", "handlerMethod", "Lkotlin/Function3;", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "call", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "handleCaptcha", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "handleException", "handleUserConfirmation", "handleValidation", "persistToken", "credentials", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j.class */
public final class j<T> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final com.vk.api.sdk.b.c<T> f35994a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$a.class */
    static final /* synthetic */ class a extends n implements kotlin.jvm.functions.n<i, String, i.a<String>, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f35995a = new a();

        a() {
            super(3, i.class, "handleCaptcha", "handleCaptcha(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.n
        public final /* synthetic */ v a(i iVar, String str, i.a<String> aVar) {
            i p1 = iVar;
            String p2 = str;
            i.a<String> p3 = aVar;
            p.d(p1, "p1");
            p.d(p2, "p2");
            p.d(p3, "p3");
            p1.a(p2, p3);
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n"}, d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$b.class */
    static final /* synthetic */ class b extends n implements kotlin.jvm.functions.n<i, String, i.a<Boolean>, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f35996a = new b();

        b() {
            super(3, i.class, "handleConfirm", "handleConfirm(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.n
        public final /* synthetic */ v a(i iVar, String str, i.a<Boolean> aVar) {
            i p1 = iVar;
            String p2 = str;
            i.a<Boolean> p3 = aVar;
            p.d(p1, "p1");
            p.d(p2, "p2");
            p.d(p3, "p3");
            p1.c(p2, p3);
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\b\n"}, d2 = {"<anonymous>", "", "T", "p1", "Lcom/vk/api/sdk/VKApiValidationHandler;", "p2", "", "p3", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b/j$c.class */
    static final /* synthetic */ class c extends n implements kotlin.jvm.functions.n<i, String, i.a<i.b>, v> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f35997a = new c();

        c() {
            super(3, i.class, "handleValidation", "handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
        }

        @Override // kotlin.jvm.functions.n
        public final /* synthetic */ v a(i iVar, String str, i.a<i.b> aVar) {
            i p1 = iVar;
            String p2 = str;
            i.a<i.b> p3 = aVar;
            p.d(p1, "p1");
            p.d(p2, "p2");
            p.d(p3, "p3");
            p1.b(p2, p3);
            return v.f38654a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public j(g manager, int i, com.vk.api.sdk.b.c<? extends T> chain) {
        super(manager, i);
        p.d(manager, "manager");
        p.d(chain, "chain");
        this.f35994a = chain;
    }

    private static <T, H> T a(String extra, H h, kotlin.jvm.functions.n<? super H, ? super String, ? super i.a<T>, v> handlerMethod) {
        p.d(extra, "extra");
        p.d(handlerMethod, "handlerMethod");
        if (h == null) {
            return null;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        i.a aVar = new i.a(countDownLatch);
        handlerMethod.a(h, extra, aVar);
        countDownLatch.await();
        return aVar.f36084a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
        if (r0 == null) goto L_0x0063;
     */
    @Override // com.vk.api.sdk.b.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T a(com.vk.api.sdk.b.b r5) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.b.j.a(com.vk.api.sdk.b.b):java.lang.Object");
    }
}
