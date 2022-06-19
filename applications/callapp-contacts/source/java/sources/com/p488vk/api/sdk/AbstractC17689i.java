package com.p488vk.api.sdk;

import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001:\u0002\u0013\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H&J\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\n0\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0015"}, m4298d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler;", "", "handleCaptcha", "", "img", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "tryToHandleException", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "Callback", "Credentials", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.i */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i.class */
public interface AbstractC17689i {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0004\u0018\u00018��X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "T", "", "latch", "Ljava/util/concurrent/CountDownLatch;", "(Ljava/util/concurrent/CountDownLatch;)V", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "cancel", "", "submit", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.i$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i$a.class */
    public static final class C17690a<T> {

        /* renamed from: a */
        public volatile T f62512a;

        /* renamed from: b */
        final CountDownLatch f62513b;

        public C17690a(CountDownLatch latch) {
            C18524p.m3840d(latch, "latch");
            this.f62513b = latch;
        }

        /* renamed from: a */
        public final void m4825a(T t) {
            this.f62512a = t;
            this.f62513b.countDown();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\b\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "", "secret", "", "token", "uid", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "isValid", "", "()Z", "getSecret", "()Ljava/lang/String;", "getToken", "getUid", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.i$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/i$b.class */
    public static final class C17691b {

        /* renamed from: a */
        public final boolean f62514a;

        /* renamed from: b */
        public final String f62515b;

        /* renamed from: c */
        public final String f62516c;

        /* renamed from: d */
        private final Integer f62517d;

        public C17691b(String str, String str2, Integer num) {
            this.f62515b = str;
            this.f62516c = str2;
            this.f62517d = num;
            String str3 = str2;
            this.f62514a = true ^ (str3 == null || C18425p.m3966a((CharSequence) str3));
        }
    }

    /* renamed from: a */
    void mo4814a(VKApiExecutionException vKApiExecutionException, C17685g c17685g) throws VKApiExecutionException;

    /* renamed from: a */
    void mo4813a(String str, C17690a<String> c17690a);

    /* renamed from: b */
    void mo4812b(String str, C17690a<C17691b> c17690a);

    /* renamed from: c */
    void mo4811c(String str, C17690a<Boolean> c17690a);
}
