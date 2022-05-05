package com.privacystar.core.p011ui.intro.verification;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Lcom/privacystar/core/ui/intro/verification/NumberVerificationPresenter;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.NumberVerificationFragment$presenter$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/NumberVerificationFragment$presenter$2.class */
final class NumberVerificationFragment$presenter$2 extends Lambda implements Function0<NumberVerificationPresenter> {
    final /* synthetic */ NumberVerificationFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumberVerificationFragment$presenter$2(NumberVerificationFragment numberVerificationFragment) {
        super(0);
        this.this$0 = numberVerificationFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final NumberVerificationPresenter invoke() {
        return new NumberVerificationPresenter(new WeakReference(this.this$0));
    }
}
