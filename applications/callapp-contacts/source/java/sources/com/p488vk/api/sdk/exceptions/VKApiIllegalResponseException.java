package com.p488vk.api.sdk.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018�� \t2\u00020\u0001:\u0001\tB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\b¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException;", "Lcom/vk/api/sdk/exceptions/VKApiException;", "detailMessage", "", "(Ljava/lang/String;)V", "throwable", "", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "(Ljava/lang/Throwable;)V", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.exceptions.VKApiIllegalResponseException */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/VKApiIllegalResponseException.class */
public final class VKApiIllegalResponseException extends VKApiException {

    /* renamed from: b */
    public static final C17682a f62503b = new C17682a(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/exceptions/VKApiIllegalResponseException$Companion;", "", "()V", "serialVersionUID", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.exceptions.VKApiIllegalResponseException$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/exceptions/VKApiIllegalResponseException$a.class */
    public static final class C17682a {
        private C17682a() {
        }

        public /* synthetic */ C17682a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VKApiIllegalResponseException(String detailMessage) {
        super(detailMessage);
        C18524p.m3840d(detailMessage, "detailMessage");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VKApiIllegalResponseException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
        C18524p.m3840d(detailMessage, "detailMessage");
        C18524p.m3840d(throwable, "throwable");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VKApiIllegalResponseException(Throwable throwable) {
        super(throwable);
        C18524p.m3840d(throwable, "throwable");
    }
}
