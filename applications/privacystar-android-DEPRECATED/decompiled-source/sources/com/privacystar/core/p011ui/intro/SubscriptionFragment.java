package com.privacystar.core.p011ui.intro;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.PlayStoreReceipt;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.util.BuildUtil;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.realm.RealmResults;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0014\u001a\u00020\fH\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0014J\b\u0010\u0019\u001a\u00020\fH\u0016J&\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0016J\b\u0010#\u001a\u00020\u0016H\u0016J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\nH\u0002J\b\u0010&\u001a\u00020\u0016H\u0002J\b\u0010'\u001a\u00020\fH\u0016J\b\u0010(\u001a\u00020\u0016H\u0002J\b\u0010)\u001a\u00020\u0016H\u0002J\b\u0010*\u001a\u00020\u0016H\u0002J\b\u0010+\u001a\u00020\u0016H\u0002J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\nH\u0002J\b\u0010-\u001a\u00020\u0016H\u0002J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u000200H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, m254d2 = {"Lcom/privacystar/core/ui/intro/SubscriptionFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "gpReceipts", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/PlayStoreReceipt;", "pendingProductId", "", "purchasePending", "", SubscriptionContract.SubscriptionEntry.TABLE_NAME, "Lcom/privacystar/core/data/model/Subscription;", "getSubscription$app_core", "()Lcom/privacystar/core/data/model/Subscription;", "setSubscription$app_core", "(Lcom/privacystar/core/data/model/Subscription;)V", "usesGP", "canAutoTransition", "finishSubscriptionSetup", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "onSubImpl", "productId", "presentPostPurchaseDialog", "shouldDisplay", "skipAlreadyPaid", "skipPurchase", "skipPurchaseAttempt", "startPurchase", "storeAttemptedPurchaseAction", "trackAnalytics", "updateGPCache", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.SubscriptionFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/SubscriptionFragment.class */
public final class SubscriptionFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;
    private RealmResults<PlayStoreReceipt> gpReceipts;
    private String pendingProductId;
    private boolean purchasePending;
    @Nullable
    private Subscription subscription;
    private boolean usesGP = true;
    private final CompositeDisposable disposables = new CompositeDisposable();

    private final void finishSubscriptionSetup() {
        PreferenceUtil.putSubscriptionSetup(true);
        transitionIntroFragment();
    }

    private final void onSubImpl(String str) {
        Timber.m37d("Attempting purchase of sku [%s]", str);
        storeAttemptedPurchaseAction(str);
        PreferenceUtil.putLastPurchaseSucceeded(false);
        PreferenceUtil.putLastPurchaseFailed(false);
        BillingHelper.attemptPurchase(getContext(), str, IABV3Helper.SkuType.SUBSCRIPTION);
    }

    private final void presentPostPurchaseDialog() {
        if (this.usesGP) {
            if (!this.purchasePending || this.pendingProductId == null) {
                return;
            }
        } else if (!this.purchasePending) {
            return;
        }
        Context it = getContext();
        if (it != null) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            updateGPCache(it);
        }
        this.purchasePending = false;
        if (PreferenceUtil.getLastPurchaseSucceeded()) {
            Timber.m37d("Last purchase succeeded. Showing upgrade success dialog.", new Object[0]);
            finishSubscriptionSetup();
        } else if (this.usesGP && PreferenceUtil.getLastPurchaseFailed()) {
            Timber.m37d("Last purchase failed. Not showing upgrade success dialog.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipAlreadyPaid() {
        Timber.m37d("Already Paid clicked.", new Object[0]);
        AnalyticsManager.INSTANCE.fire(new Event.OnboardingSubscription(Event.OnboardingSubscriptionAction.ALREADY_PAID));
        BillingHelper.checkPurchases(getContext());
        skipPurchase();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipPurchase() {
        Timber.m37d("Skipping purchase and transitioning.", new Object[0]);
        finishSubscriptionSetup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipPurchaseAttempt() {
        Timber.m37d("Not Now button clicked.", new Object[0]);
        AnalyticsManager.INSTANCE.fire(new Event.OnboardingSubscription(Event.OnboardingSubscriptionAction.NOT_NOW));
        showPurchaseRetryDialog(new ButtonAction() { // from class: com.privacystar.core.ui.intro.SubscriptionFragment$skipPurchaseAttempt$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                SubscriptionFragment.this.skipPurchase();
            }
        }, new ButtonAction() { // from class: com.privacystar.core.ui.intro.SubscriptionFragment$skipPurchaseAttempt$2
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                SubscriptionFragment.this.startPurchase();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startPurchase() {
        Timber.m37d("Subscribe button clicked.", new Object[0]);
        AnalyticsManager.INSTANCE.fire(new Event.OnboardingSubscription(Event.OnboardingSubscriptionAction.SUBSCRIBE));
        Context context = getContext();
        if (context != null) {
            String string = context.getString(C1566R.string.play_store_sku_discount_annual);
            Intrinsics.checkExpressionValueIsNotNull(string, "it.getString(R.string.pl…tore_sku_discount_annual)");
            onSubImpl(string);
        }
    }

    private final void storeAttemptedPurchaseAction(String str) {
        this.purchasePending = true;
        this.pendingProductId = str;
    }

    private final void trackAnalytics() {
        AnalyticsManager.INSTANCE.fire(new Event.PaymentStartedEvent(this.usesGP ? Event.PaymentInterface.GP : Event.PaymentInterface.SPRINT));
    }

    private final void updateGPCache(Context context) {
        Timber.m28v("Refreshing GP purchase cache.", new Object[0]);
        BillingHelper.checkPurchases(context);
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.subscription_intro_fragment;
    }

    @Nullable
    public final Subscription getSubscription$app_core() {
        return this.subscription;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        CardView cardView;
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        if (!(inflate == null || (cardView = (CardView) inflate.findViewById(C1566R.C1569id.subscription_intro_submit_cv)) == null)) {
            CompositeDisposable compositeDisposable = this.disposables;
            Observable<R> map = RxView.clicks(cardView).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            compositeDisposable.add(map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.SubscriptionFragment$onCreateView$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    SubscriptionFragment.this.startPurchase();
                }
            }));
        }
        if (!(inflate == null || (frameLayout2 = (FrameLayout) inflate.findViewById(C1566R.C1569id.subscription_intro_skip)) == null)) {
            CompositeDisposable compositeDisposable2 = this.disposables;
            Observable<R> map2 = RxView.clicks(frameLayout2).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map2, "RxView.clicks(this).map(VoidToUnit)");
            compositeDisposable2.add(map2.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.SubscriptionFragment$onCreateView$$inlined$let$lambda$2
                public final void accept(Unit unit) {
                    SubscriptionFragment.this.skipPurchaseAttempt();
                }
            }));
        }
        if (!(inflate == null || (frameLayout = (FrameLayout) inflate.findViewById(C1566R.C1569id.subscription_intro_already_paid)) == null)) {
            CompositeDisposable compositeDisposable3 = this.disposables;
            Observable<R> map3 = RxView.clicks(frameLayout).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map3, "RxView.clicks(this).map(VoidToUnit)");
            compositeDisposable3.add(map3.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.SubscriptionFragment$onCreateView$$inlined$let$lambda$3
                public final void accept(Unit unit) {
                    SubscriptionFragment.this.skipAlreadyPaid();
                }
            }));
        }
        this.usesGP = BuildUtil.INSTANCE.doesVariantHaveGpPurchases(getContext());
        trackAnalytics();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        this.disposables.dispose();
        super.onDestroy();
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.m37d("Fragment resumed", new Object[0]);
        Activity activity = this.activity;
        if (activity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.intro.intro_core.IntroFragment.IntroFragmentContainer");
        }
        ((IntroFragment.IntroFragmentContainer) activity).disableSpinner();
        presentPostPurchaseDialog();
    }

    public final void setSubscription$app_core(@Nullable Subscription subscription) {
        this.subscription = subscription;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getSubscriptionSetup();
    }
}
