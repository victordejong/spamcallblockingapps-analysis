package com.privacystar.core.p011ui.intro.af_welcome;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomeFragment$showWelcomeDialog$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomeFragment$showWelcomeDialog$1.class */
final class AFWelcomeFragment$showWelcomeDialog$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ AFWelcomeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFWelcomeFragment$showWelcomeDialog$1(AFWelcomeFragment aFWelcomeFragment) {
        super(0);
        this.this$0 = aFWelcomeFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.getPresenter().onDialogFinished();
    }
}
