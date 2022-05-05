package com.privacystar.core.p011ui.detail_view.subscription;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
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
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.util.DialogUtil;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.realm.RealmResults;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0014J\b\u0010\u0017\u001a\u00020\u0001H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020\u0014H\u0016J\b\u0010!\u001a\u00020\u0014H\u0016J\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\tH\u0002J\b\u0010$\u001a\u00020\u0014H\u0002J\b\u0010%\u001a\u00020\u0014H\u0002J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0002J\b\u0010*\u001a\u00020\u0014H\u0002J\b\u0010+\u001a\u00020\u0014H\u0002J\b\u0010,\u001a\u00020\u0014H\u0002J\u0010\u0010-\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\tH\u0002J\b\u0010.\u001a\u00020\u0014H\u0002J\u0010\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u000201H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u00062"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/subscription/SubscriptionFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "()V", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "gpReceipts", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/PlayStoreReceipt;", "pendingProductId", "", "purchasePending", "", SubscriptionContract.SubscriptionEntry.TABLE_NAME, "Lcom/privacystar/core/data/model/Subscription;", "getSubscription$app_core", "()Lcom/privacystar/core/data/model/Subscription;", "setSubscription$app_core", "(Lcom/privacystar/core/data/model/Subscription;)V", "usesGP", "finishSubscriptionSetup", "", "getLayoutResId", "", "newInstance", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onResume", "onSubImpl", "productId", "presentPostPurchaseDialog", "setupToolbar", "showPurchaseRetryDialog", "cancelAction", "Lcom/privacystar/core/ui/widgets/dialog/ButtonAction;", "subscribeAction", "skipPurchase", "skipPurchaseAttempt", "startPurchase", "storeAttemptedPurchaseAction", "trackAnalytics", "updateGPCache", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/subscription/SubscriptionFragment.class */
public final class SubscriptionFragment extends DetailFragment {
    private HashMap _$_findViewCache;
    private RealmResults<PlayStoreReceipt> gpReceipts;
    private String pendingProductId;
    private boolean purchasePending;
    @Nullable
    private Subscription subscription;
    private boolean usesGP = true;
    private final CompositeDisposable disposables = new CompositeDisposable();

    private final void finishSubscriptionSetup() {
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        Context context = getContext();
        if (context != null) {
            context.startActivity(intent);
        }
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

    private final void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.subscription_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
        this.activity.enableFab(false);
    }

    private final void showPurchaseRetryDialog(ButtonAction buttonAction, ButtonAction buttonAction2) {
        Context it = getContext();
        if (it != null) {
            StaticDialogs staticDialogs = StaticDialogs.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            InformationDialog newSubscribeRetryDialog = staticDialogs.newSubscribeRetryDialog(it, buttonAction, buttonAction2);
            DialogUtil dialogUtil = DialogUtil.INSTANCE;
            InformationDialog informationDialog = newSubscribeRetryDialog;
            DetailActivity activity = this.activity;
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
            FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "activity.supportFragmentManager");
            dialogUtil.showAllowingStateLoss(informationDialog, supportFragmentManager, "subscription_retry_fragment", this.activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipPurchase() {
        Timber.m37d("Skipping purchase and transitioning.", new Object[0]);
        finishSubscriptionSetup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void skipPurchaseAttempt() {
        Timber.m37d("Not Now button clicked.", new Object[0]);
        showPurchaseRetryDialog(new ButtonAction() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragment$skipPurchaseAttempt$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                SubscriptionFragment.this.skipPurchase();
            }
        }, new ButtonAction() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragment$skipPurchaseAttempt$2
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                SubscriptionFragment.this.startPurchase();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startPurchase() {
        Timber.m37d("Subscribe button clicked.", new Object[0]);
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

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.subscription_intro_fragment;
    }

    @Nullable
    public final Subscription getSubscription$app_core() {
        return this.subscription;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new SubscriptionFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        CardView cardView;
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        if (!getResources().getBoolean(C1566R.bool.subscription_enabled)) {
            Timber.m31i("Subscription view launched when it is not enabled.", new Object[0]);
            Intent intent = new Intent(getContext(), HomeActivity.class);
            intent.setFlags(268468224);
            startActivity(intent);
            return inflate;
        }
        if (!(inflate == null || (cardView = (CardView) inflate.findViewById(C1566R.C1569id.subscription_intro_submit_cv)) == null)) {
            CompositeDisposable compositeDisposable = this.disposables;
            Observable<R> map = RxView.clicks(cardView).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            compositeDisposable.add(map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragment$onCreateView$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    SubscriptionFragment.this.startPurchase();
                }
            }));
        }
        if (!(inflate == null || (frameLayout2 = (FrameLayout) inflate.findViewById(C1566R.C1569id.subscription_intro_skip)) == null)) {
            CompositeDisposable compositeDisposable2 = this.disposables;
            Observable<R> map2 = RxView.clicks(frameLayout2).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map2, "RxView.clicks(this).map(VoidToUnit)");
            compositeDisposable2.add(map2.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragment$onCreateView$$inlined$let$lambda$2
                public final void accept(Unit unit) {
                    SubscriptionFragment.this.skipPurchaseAttempt();
                }
            }));
        }
        if (!(inflate == null || (frameLayout = (FrameLayout) inflate.findViewById(C1566R.C1569id.subscription_intro_already_paid)) == null)) {
            ViewExtensionsKt.gone(frameLayout);
        }
        setupToolbar();
        this.usesGP = BuildUtil.INSTANCE.doesVariantHaveGpPurchases(getContext());
        trackAnalytics();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        this.disposables.dispose();
        super.onDestroy();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.m37d("Fragment resumed", new Object[0]);
        presentPostPurchaseDialog();
    }

    public final void setSubscription$app_core(@Nullable Subscription subscription) {
        this.subscription = subscription;
    }
}
