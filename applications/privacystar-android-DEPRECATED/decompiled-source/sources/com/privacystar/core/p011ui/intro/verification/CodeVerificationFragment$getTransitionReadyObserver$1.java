package com.privacystar.core.p011ui.intro.verification;

import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m254d2 = {"<anonymous>", "", "t1", "t2", "apply", "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$getTransitionReadyObserver$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerificationFragment$getTransitionReadyObserver$1.class */
final class CodeVerificationFragment$getTransitionReadyObserver$1<T1, T2, R> implements BiFunction<Boolean, Boolean, Boolean> {
    public static final CodeVerificationFragment$getTransitionReadyObserver$1 INSTANCE = new CodeVerificationFragment$getTransitionReadyObserver$1();

    CodeVerificationFragment$getTransitionReadyObserver$1() {
    }

    @NotNull
    public final Boolean apply(@NotNull Boolean t1, @NotNull Boolean t2) {
        Intrinsics.checkParameterIsNotNull(t1, "t1");
        Intrinsics.checkParameterIsNotNull(t2, "t2");
        Timber.m37d("TODO (SubscriptionReady is always true): Combining code verification [%b] && subscription [%b]", t1, t2);
        return t1;
    }
}
