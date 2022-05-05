package com.privacystar.core.p011ui.intro.intro_core;

import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.intro.intro_core.IntroContract;
import io.reactivex.subjects.BehaviorSubject;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010��\u001a&\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "Lio/reactivex/subjects/BehaviorSubject;", "", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroPresenter$subscriptionReady$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroPresenter$subscriptionReady$2.class */
public final class IntroPresenter$subscriptionReady$2 extends Lambda implements Function0<BehaviorSubject<Boolean>> {
    final /* synthetic */ IntroPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntroPresenter$subscriptionReady$2(IntroPresenter introPresenter) {
        super(0);
        this.this$0 = introPresenter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BehaviorSubject<Boolean> invoke() {
        WeakReference weakReference;
        weakReference = this.this$0.view;
        IntroContract.View view = (IntroContract.View) weakReference.get();
        return BehaviorSubject.createDefault(Boolean.valueOf(SubscriptionRealm.getSubscription(view != null ? view.getRealmTemp() : null) != null));
    }
}
