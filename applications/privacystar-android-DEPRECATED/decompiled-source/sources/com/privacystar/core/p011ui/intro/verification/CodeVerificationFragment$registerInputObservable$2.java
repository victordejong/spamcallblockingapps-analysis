package com.privacystar.core.p011ui.intro.verification;

import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "e", "", "kotlin.jvm.PlatformType", "accept"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$registerInputObservable$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerificationFragment$registerInputObservable$2.class */
final class CodeVerificationFragment$registerInputObservable$2<T> implements Consumer<Throwable> {
    public static final CodeVerificationFragment$registerInputObservable$2 INSTANCE = new CodeVerificationFragment$registerInputObservable$2();

    CodeVerificationFragment$registerInputObservable$2() {
    }

    public final void accept(Throwable th) {
        Timber.m29i(th, "unhandled input observer error.", new Object[0]);
    }
}
