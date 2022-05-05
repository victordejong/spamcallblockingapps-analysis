package com.privacystar.core.p011ui.intro.intro_core;

import io.reactivex.Observable;
import io.reactivex.functions.BiFunction;
import io.reactivex.rxkotlin.Observables;
import io.reactivex.subjects.BehaviorSubject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010��\u001a\u0010\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "Lio/reactivex/Observable;", "", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroPresenter$transitionReadyObsv$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroPresenter$transitionReadyObsv$2.class */
public final class IntroPresenter$transitionReadyObsv$2 extends Lambda implements Function0<Observable<Boolean>> {
    final /* synthetic */ IntroPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntroPresenter$transitionReadyObsv$2(IntroPresenter introPresenter) {
        super(0);
        this.this$0 = introPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Observable<Boolean> invoke() {
        BehaviorSubject behaviorSubject;
        BehaviorSubject subscriptionReady;
        Observables observables = Observables.INSTANCE;
        behaviorSubject = this.this$0.codeVerification;
        BehaviorSubject behaviorSubject2 = behaviorSubject;
        subscriptionReady = this.this$0.getSubscriptionReady();
        Intrinsics.checkExpressionValueIsNotNull(subscriptionReady, "subscriptionReady");
        Observable<Boolean> combineLatest = Observable.combineLatest(behaviorSubject2, subscriptionReady, new BiFunction<T1, T2, R>() { // from class: com.privacystar.core.ui.intro.intro_core.IntroPresenter$transitionReadyObsv$2$$special$$inlined$combineLatest$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T1 t1, T2 t2) {
                Boolean t22 = (Boolean) t2;
                Boolean t12 = (Boolean) t1;
                Timber.m37d("Combining code verifiction [" + t12 + "] && subscription [" + t22 + ']', new Object[0]);
                Intrinsics.checkExpressionValueIsNotNull(t12, "t1");
                boolean z = false;
                if (t12.booleanValue()) {
                    Intrinsics.checkExpressionValueIsNotNull(t22, "t2");
                    z = false;
                    if (t22.booleanValue()) {
                        z = true;
                    }
                }
                return (R) Boolean.valueOf(z);
            }
        });
        if (combineLatest == null) {
            Intrinsics.throwNpe();
        }
        return combineLatest;
    }
}
