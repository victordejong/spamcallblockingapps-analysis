package com.privacystar.core.p011ui.detail_view.about;

import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u001d\u0010\u0002\u001a\u0019\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007¢\u0006\u0002\b\b"}, m254d2 = {"<anonymous>", "", "p1", "Lretrofit2/Response;", "Lcom/privacystar/core/service/network/model/response/CallWatchPaymentResponse;", "Lkotlin/ParameterName;", "name", "response", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AccountInformationFragment$onCreateView$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AccountInformationFragment$onCreateView$1.class */
final class AccountInformationFragment$onCreateView$1 extends FunctionReference implements Function1<Response<CallWatchPaymentResponse>, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountInformationFragment$onCreateView$1(AccountInformationFragment accountInformationFragment) {
        super(1, accountInformationFragment);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "processCWResponse";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(AccountInformationFragment.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "processCWResponse(Lretrofit2/Response;)V";
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Response<CallWatchPaymentResponse> response) {
        invoke2(response);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Response<CallWatchPaymentResponse> response) {
        ((AccountInformationFragment) this.receiver).processCWResponse(response);
    }
}
