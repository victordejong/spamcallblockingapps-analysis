package com.vk.api.sdk;

import com.vk.api.sdk.exceptions.VKApiExecutionException;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001:\u0002\u0013\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H&J\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\n0\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0015"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler;", "", "handleCaptcha", "", "img", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "tryToHandleException", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "Callback", "Credentials", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i.class */
public interface i {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "T", "", "latch", "Ljava/util/concurrent/CountDownLatch;", "(Ljava/util/concurrent/CountDownLatch;)V", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "cancel", "", "submit", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i$a.class */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public volatile T f36084a;

        /* renamed from: b  reason: collision with root package name */
        final CountDownLatch f36085b;

        public a(CountDownLatch latch) {
            p.d(latch, "latch");
            this.f36085b = latch;
        }

        public final void a(T t) {
            this.f36084a = t;
            this.f36085b.countDown();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\b\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "", "secret", "", "token", "uid", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "isValid", "", "()Z", "getSecret", "()Ljava/lang/String;", "getToken", "getUid", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f36086a;

        /* renamed from: b  reason: collision with root package name */
        public final String f36087b;

        /* renamed from: c  reason: collision with root package name */
        public final String f36088c;

        /* renamed from: d  reason: collision with root package name */
        private final Integer f36089d;

        public b(String str, String str2, Integer num) {
            this.f36087b = str;
            this.f36088c = str2;
            this.f36089d = num;
            String str3 = str2;
            this.f36086a = true ^ (str3 == null || kotlin.h.p.a((CharSequence) str3));
        }
    }

    void a(VKApiExecutionException vKApiExecutionException, g gVar) throws VKApiExecutionException;

    void a(String str, a<String> aVar);

    void b(String str, a<b> aVar);

    void c(String str, a<Boolean> aVar);
}
