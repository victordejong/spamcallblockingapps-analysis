package com.sinch.verification.core.initiation;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.logging.LogKt;
import com.sinch.logging.Logger;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.core.initiation.response.InitiationResponseData;
import com.sinch.verification.core.internal.VerificationState;
import com.sinch.verification.core.internal.VerificationStateListener;
import com.sinch.verification.core.internal.utils.ApiCallback;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Response;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0016\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003BS\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012 \b\u0002\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\n\u0012\u0004\u0012\u00028��0\t\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u0011\u001a\u00020\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J#\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00028��2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0016¢\u0006\u0002\u0010\u001aR&\u0010\b\u001a\u001a\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\n\u0012\u0004\u0012\u00028��0\tX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lcom/sinch/verification/core/initiation/InitiationApiCallback;", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "listener", "Lcom/sinch/verification/core/initiation/response/InitiationListener;", "statusListener", "Lcom/sinch/verification/core/internal/VerificationStateListener;", "dataModifier", "Lkotlin/Function2;", "Lretrofit2/Response;", "successCallback", "Lkotlin/Function1;", "", "(Lcom/sinch/verification/core/initiation/response/InitiationListener;Lcom/sinch/verification/core/internal/VerificationStateListener;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "logger", "Lcom/sinch/logging/Logger;", "ifNotManuallyStopped", "f", "Lkotlin/Function0;", "onError", "t", "", "onSuccess", "data", Payload.RESPONSE, "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)V", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/InitiationApiCallback.class */
public class InitiationApiCallback<T extends InitiationResponseData> implements ApiCallback<T> {
    private final Function2<T, Response<T>, T> dataModifier;
    private final InitiationListener<T> listener;
    private final Logger logger;
    private final VerificationStateListener statusListener;
    private final Function1<T, C20128v> successCallback;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u0002H\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0005H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, m4298d2 = {"<anonymous>", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "data", "<anonymous parameter 1>", "Lretrofit2/Response;", "invoke", "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;Lretrofit2/Response;)Lcom/sinch/verification/core/initiation/response/InitiationResponseData;"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.sinch.verification.core.initiation.InitiationApiCallback$1 */
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/InitiationApiCallback$1.class */
    public static final class C171161 extends AbstractC18526r implements Function2<T, Response<T>, T> {
        public static final C171161 INSTANCE = new C171161();

        C171161() {
            super(2);
        }

        public final T invoke(T data, Response<T> response) {
            C18524p.m3841c(data, "data");
            C18524p.m3841c(response, "<anonymous parameter 1>");
            return data;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            return invoke((C171161) ((InitiationResponseData) obj), (Response<C171161>) obj2);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m4298d2 = {"<anonymous>", "", "T", "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;", "it", "invoke", "(Lcom/sinch/verification/core/initiation/response/InitiationResponseData;)V"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: com.sinch.verification.core.initiation.InitiationApiCallback$2 */
    /* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/initiation/InitiationApiCallback$2.class */
    public static final class C171172 extends AbstractC18526r implements Function1<T, C20128v> {
        public static final C171172 INSTANCE = new C171172();

        C171172() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ C20128v invoke(Object obj) {
            invoke((C171172) ((InitiationResponseData) obj));
            return C20128v.f66529a;
        }

        public final void invoke(T it2) {
            C18524p.m3841c(it2, "it");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InitiationApiCallback(InitiationListener<? super T> listener, VerificationStateListener statusListener, Function2<? super T, ? super Response<T>, ? extends T> dataModifier, Function1<? super T, C20128v> successCallback) {
        C18524p.m3841c(listener, "listener");
        C18524p.m3841c(statusListener, "statusListener");
        C18524p.m3841c(dataModifier, "dataModifier");
        C18524p.m3841c(successCallback, "successCallback");
        this.listener = listener;
        this.statusListener = statusListener;
        this.dataModifier = dataModifier;
        this.successCallback = successCallback;
        this.logger = LogKt.logger(this);
    }

    public /* synthetic */ InitiationApiCallback(InitiationListener initiationListener, VerificationStateListener verificationStateListener, Function2 function2, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(initiationListener, verificationStateListener, (i & 4) != 0 ? C171161.INSTANCE : function2, (i & 8) != 0 ? C171172.INSTANCE : function1);
    }

    private final void ifNotManuallyStopped(Function0<C20128v> function0) {
        if (!C18524p.m3850a(this.statusListener.getVerificationState(), VerificationState.ManuallyStopped.INSTANCE)) {
            function0.invoke();
        }
    }

    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public void onError(Throwable t) {
        C18524p.m3841c(t, "t");
        ifNotManuallyStopped(new InitiationApiCallback$onError$1(this, t));
    }

    public void onSuccess(T data, Response<T> response) {
        C18524p.m3841c(data, "data");
        C18524p.m3841c(response, "response");
        ifNotManuallyStopped(new InitiationApiCallback$onSuccess$1(this, data, response));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sinch.verification.core.internal.utils.ApiCallback
    public /* bridge */ /* synthetic */ void onSuccess(Object obj, Response response) {
        onSuccess((InitiationApiCallback<T>) ((InitiationResponseData) obj), (Response<InitiationApiCallback<T>>) response);
    }
}
