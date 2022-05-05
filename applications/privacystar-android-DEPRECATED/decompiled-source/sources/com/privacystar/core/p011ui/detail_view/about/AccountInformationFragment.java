package com.privacystar.core.p011ui.detail_view.about;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.network.handler.CallWatchPaymentHandler;
import com.privacystar.core.service.network.model.request.CallWatchPaymentRequest;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.SubscriptionUtil;
import com.privacystar.core.util.ThemeUtil;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Response;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0003J\b\u0010 \u001a\u00020\u001fH\u0014J\b\u0010!\u001a\u00020��H\u0016J\b\u0010\"\u001a\u00020#H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+H\u0016J\b\u0010,\u001a\u00020#H\u0016J\b\u0010-\u001a\u00020#H\u0016J\u0012\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101H\u0016J\b\u00102\u001a\u00020#H\u0016J\u0018\u00103\u001a\u00020#2\u000e\u00104\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002J\u0010\u00105\u001a\u00020#2\u0006\u00104\u001a\u00020\nH\u0002J\b\u00106\u001a\u00020#H\u0016J\u001a\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020/2\b\b\u0001\u00109\u001a\u00020\u001fH\u0002J\b\u0010:\u001a\u00020#H\u0002J \u0010;\u001a\u00020#2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020=H\u0002J\b\u0010@\u001a\u00020#H\u0002J\u0012\u0010A\u001a\u00020/2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\b\u0010B\u001a\u00020#H\u0002J\u0010\u0010C\u001a\u00020#2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010D\u001a\u00020#H\u0002J\b\u0010E\u001a\u00020#H\u0002J\b\u0010F\u001a\u00020#H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\bX\u0082\u0004¢\u0006\u0002\n��R#\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\f0\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u0015\"\u0004\b\u001a\u0010\u0017R\u001e\u0010\u001b\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u0015\"\u0004\b\u001d\u0010\u0017¨\u0006G"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/about/AccountInformationFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "()V", "disposables", "", "Lio/reactivex/disposables/Disposable;", "responsePubSub", "Lio/reactivex/subjects/PublishSubject;", "Lretrofit2/Response;", "Lcom/privacystar/core/service/network/model/response/CallWatchPaymentResponse;", SubscriptionContract.SubscriptionEntry.TABLE_NAME, "Lcom/privacystar/core/data/model/Subscription;", "kotlin.jvm.PlatformType", "getSubscription", "()Lcom/privacystar/core/data/model/Subscription;", "subscription$delegate", "Lkotlin/Lazy;", "subscriptionExpiration", "Landroid/widget/TextView;", "getSubscriptionExpiration", "()Landroid/widget/TextView;", "setSubscriptionExpiration", "(Landroid/widget/TextView;)V", "subscriptionExpirationTitle", "getSubscriptionExpirationTitle", "setSubscriptionExpirationTitle", "subscriptionStatus", "getSubscriptionStatus", "setSubscriptionStatus", "determineButtonText", "", "getLayoutResId", "newInstance", "onButtonClicked", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "onResume", "processCWResponse", "response", "processDPICode", "refreshContent", "setupButton", "visible", "text", "setupSubscription", "setupTextValues", "state", "", "renewalTitle", "renewalDate", "setupToolbar", "shouldShowButton", "showCancelAdvDialog", "showCancelDialog", "showCanceledDialog", "showFuturePaymentDialog", "showProcessorErrorDialog", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AccountInformationFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AccountInformationFragment.class */
public final class AccountInformationFragment extends DetailFragment implements DetailActivity.DetailActivityContent {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(AccountInformationFragment.class), SubscriptionContract.SubscriptionEntry.TABLE_NAME, "getSubscription()Lcom/privacystar/core/data/model/Subscription;"))};
    private HashMap _$_findViewCache;
    private final PublishSubject<Response<CallWatchPaymentResponse>> responsePubSub;
    @BindView(C1566R.C1569id.account_information_subscription_expiration)
    @NotNull
    public TextView subscriptionExpiration;
    @BindView(C1566R.C1569id.account_information_subscription_expiration_title)
    @NotNull
    public TextView subscriptionExpirationTitle;
    @BindView(C1566R.C1569id.account_information_subscription_status)
    @NotNull
    public TextView subscriptionStatus;
    private final Lazy subscription$delegate = LazyKt.lazy(new AccountInformationFragment$subscription$2(this));
    private final Collection<Disposable> disposables = new HashSet();

    public AccountInformationFragment() {
        PublishSubject<Response<CallWatchPaymentResponse>> create = PublishSubject.create();
        Intrinsics.checkExpressionValueIsNotNull(create, "PublishSubject.create()");
        this.responsePubSub = create;
    }

    @StringRes
    private final int determineButtonText(Subscription subscription) {
        int i = 2131755064;
        if (subscription != null) {
            i = 2131755064;
            if (subscription.getSubscriptionType() == SubscriptionType.INACTIVE) {
                i = C1566R.string.subscription_subscribe;
            }
        }
        return i;
    }

    private final Subscription getSubscription() {
        Lazy lazy = this.subscription$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Subscription) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processCWResponse(Response<CallWatchPaymentResponse> response) {
        if (response == null) {
            Timber.m37d("Payment response was null.", new Object[0]);
        } else if (!response.isSuccessful() || response.body() == null) {
            Timber.m31i("Processing unsuccessful dpi request. [%s]", Integer.valueOf(response.code()));
            showProcessorErrorDialog();
        } else {
            Timber.m37d("Processing successful dpi response.", new Object[0]);
            CallWatchPaymentResponse it = response.body();
            if (it != null) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                processDPICode(it);
            }
        }
    }

    private final void processDPICode(CallWatchPaymentResponse callWatchPaymentResponse) {
        CallWatchPaymentResponse.DPIResultCode resultCode = callWatchPaymentResponse.getResultCode();
        if (resultCode == null) {
            resultCode = CallWatchPaymentResponse.DPIResultCode.UNKNOWN;
        }
        Timber.m37d("Processing DPI code [%d][%s]", Integer.valueOf(resultCode.getValue()), resultCode);
        if (!isVisible()) {
            Timber.m37d("AccountInfo is not currently in the foreground, won't show result dialog.", new Object[0]);
            return;
        }
        switch (resultCode) {
            case SUCCESS:
                showCanceledDialog();
                return;
            case ADV_PAYMENT_FOUND:
                showCancelAdvDialog();
                return;
            case USER_ACCT_FUTURE_CHARGE:
                showFuturePaymentDialog();
                return;
            default:
                showProcessorErrorDialog();
                return;
        }
    }

    private final void setupButton(boolean z, @StringRes int i) {
        this.activity.enableButton(z);
        this.activity.setButtonText(i);
    }

    private final void setupSubscription() {
        String string = getString(SubscriptionRealm.isSubscriptionActive(getSubscription()) ? C1566R.string.subscription_type_active : C1566R.string.subscription_type_expired);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(\n        if (S…iption_type_expired\n    )");
        Date mrcDate = SubscriptionUtil.getMrcDate(getSubscription());
        String renewalDateText = DateUtil.isDateInFuture(mrcDate) ? DateUtil.formatDateSimple(mrcDate) : getString(C1566R.string.subscription_expiration_not_available);
        String string2 = getString(SubscriptionRealm.isSubscriptionConcluded(getSubscription()) ? C1566R.string.account_information_subscription_expiration_end_title : C1566R.string.account_information_subscription_expiration_title);
        Intrinsics.checkExpressionValueIsNotNull(string2, "getString(\n        if (S…on_expiration_title\n    )");
        Intrinsics.checkExpressionValueIsNotNull(renewalDateText, "renewalDateText");
        setupTextValues(string, string2, renewalDateText);
    }

    private final void setupTextValues(String str, String str2, String str3) {
        TextView textView = this.subscriptionStatus;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionStatus");
        }
        textView.setText(str);
        TextView textView2 = this.subscriptionExpirationTitle;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionExpirationTitle");
        }
        textView2.setText(str2);
        TextView textView3 = this.subscriptionExpiration;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionExpiration");
        }
        textView3.setText(str3);
    }

    private final void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.account_information_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
        this.activity.enableFab(false);
    }

    private final boolean shouldShowButton(Subscription subscription) {
        boolean z = true;
        if (subscription != null) {
            SubscriptionType subscriptionType = subscription.getSubscriptionType();
            z = true;
            if (subscriptionType != null) {
                z = true;
                if (subscriptionType == SubscriptionType.CONCLUDED) {
                    z = false;
                }
            }
        }
        return z;
    }

    private final void showCancelAdvDialog() {
        DialogButton dialogButton = new DialogButton(getString(C1566R.string.info_dialog_okay), new ButtonAction() { // from class: com.privacystar.core.ui.detail_view.about.AccountInformationFragment$showCancelAdvDialog$okayButton$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                PublishSubject<Response<CallWatchPaymentResponse>> publishSubject;
                CallWatchPaymentHandler instance = CallWatchPaymentHandler.getInstance();
                CallWatchPaymentRequest.CallWatchPaymentActionType callWatchPaymentActionType = CallWatchPaymentRequest.CallWatchPaymentActionType.CANCEL_ADV_PAYMENT;
                publishSubject = AccountInformationFragment.this.responsePubSub;
                instance.generateAndSendRequest(context, callWatchPaymentActionType, publishSubject);
            }
        });
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        intent.addFlags(67108864);
        DialogButton createFromIntent = DialogButton.createFromIntent(getString(C1566R.string.info_dialog_no_thanks), intent);
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        Context context = getContext();
        if (context != null) {
            new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.info_dialog_upgrade_alert_title).withBody(ThemeUtil.populateStringWithCarrier(context, C1566R.string.info_dialog_upgrade_alert_body_advance)).withButtons(dialogButton, createFromIntent).build().show(supportFragmentManager, "processor_cancel_adv_payment_fragment");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0055, code lost:
        if (r9 != null) goto L_0x0071;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void showCancelDialog(com.privacystar.core.data.model.Subscription r9) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.about.AccountInformationFragment.showCancelDialog(com.privacystar.core.data.model.Subscription):void");
    }

    private final void showCanceledDialog() {
        FragmentActivity activity = getActivity();
        new InformationDialog.Builder(DialogType.INFORMATION).withTitle(getString(C1566R.string.info_dialog_canceled_title)).withBody(getString(C1566R.string.info_dialog_canceled_body)).withButtons(new DialogButton(getString(C1566R.string.general_text_close), AccountInformationFragment$showCanceledDialog$closeButton$1.INSTANCE)).build().show(activity != null ? activity.getSupportFragmentManager() : null, "canceled_confirmation_fragment");
    }

    private final void showFuturePaymentDialog() {
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        intent.addFlags(67108864);
        DialogButton createFromIntent = DialogButton.createFromIntent(getString(C1566R.string.info_dialog_okay), intent);
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        Context context = getContext();
        if (context != null) {
            new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.info_dialog_upgrade_alert_title).withBody(ThemeUtil.populateStringWithCarrier(context, C1566R.string.info_dialog_upgrade_alert_body_future)).withButtons(createFromIntent).build().show(supportFragmentManager, "processor_future_dated_fragment");
        }
    }

    private final void showProcessorErrorDialog() {
        FragmentActivity activity = getActivity();
        new InformationDialog.Builder(DialogType.ERROR).withTitle(getString(C1566R.string.verification_failed_fragment_title)).withBody(getString(C1566R.string.verification_failed_fragment_subtitle)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_okay))).build().show(activity != null ? activity.getSupportFragmentManager() : null, "processor_error_explanation_fragment");
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
        return C1566R.C1571layout.account_information_fragment;
    }

    @NotNull
    public final TextView getSubscriptionExpiration() {
        TextView textView = this.subscriptionExpiration;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionExpiration");
        }
        return textView;
    }

    @NotNull
    public final TextView getSubscriptionExpirationTitle() {
        TextView textView = this.subscriptionExpirationTitle;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionExpirationTitle");
        }
        return textView;
    }

    @NotNull
    public final TextView getSubscriptionStatus() {
        TextView textView = this.subscriptionStatus;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("subscriptionStatus");
        }
        return textView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public AccountInformationFragment newInstance() {
        return new AccountInformationFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
        Subscription subscription = getSubscription();
        if (subscription == null) {
            return;
        }
        if (subscription.getSubscriptionType() != SubscriptionType.INACTIVE || !(this.activity instanceof DetailFragment.DetailFragmentContainer)) {
            showCancelDialog(subscription);
            return;
        }
        DetailActivity detailActivity = this.activity;
        if (detailActivity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.detail_view.DetailFragment.DetailFragmentContainer");
        }
        detailActivity.showSubscriptionPage();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        this.unbinder = ButterKnife.bind(this, inflate);
        Timber.m37d("Inflating %s", toString());
        Subscription subscription = getSubscription();
        SubscriptionType subscriptionType = null;
        String subscriptionText = subscription != null ? subscription.getSubscriptionText() : null;
        Subscription subscription2 = getSubscription();
        Timber.m37d("Subscription type and expiration: [%s][%s]", subscriptionText, subscription2 != null ? subscription2.getExpiration() : null);
        Subscription subscription3 = getSubscription();
        if (subscription3 != null) {
            subscriptionType = subscription3.getSubscriptionType();
        }
        if (subscriptionType != SubscriptionType.TRIAL || !(this.activity instanceof DetailFragment.DetailFragmentContainer)) {
            setupToolbar();
            Collection<Disposable> collection = this.disposables;
            PublishSubject<Response<CallWatchPaymentResponse>> publishSubject = this.responsePubSub;
            final AccountInformationFragment$onCreateView$1 accountInformationFragment$onCreateView$1 = new AccountInformationFragment$onCreateView$1(this);
            Disposable subscribe = publishSubject.subscribe(new Consumer() { // from class: com.privacystar.core.ui.detail_view.about.AccountInformationFragment$sam$io_reactivex_functions_Consumer$0
                @Override // io.reactivex.functions.Consumer
                public final /* synthetic */ void accept(Object obj) {
                    Intrinsics.checkExpressionValueIsNotNull(Function1.this.invoke(obj), "invoke(...)");
                }
            });
            Intrinsics.checkExpressionValueIsNotNull(subscribe, "responsePubSub.subscribe(this::processCWResponse)");
            collection.add(subscribe);
            setupButton(shouldShowButton(getSubscription()), determineButtonText(getSubscription()));
            outputNameAccessibility(C1566R.string.con_desc_account_information_fragment);
            return inflate;
        }
        Timber.m37d("Account information launched but account is in trial - redirection to subscription view.", new Object[0]);
        DetailActivity detailActivity = this.activity;
        if (detailActivity == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.detail_view.DetailFragment.DetailFragmentContainer");
        }
        DetailActivity detailActivity2 = detailActivity;
        detailActivity2.navigateBack();
        detailActivity2.showSubscriptionPage();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        for (Disposable disposable : this.disposables) {
            disposable.dispose();
        }
        super.onDestroy();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        setupSubscription();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    public final void setSubscriptionExpiration(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.subscriptionExpiration = textView;
    }

    public final void setSubscriptionExpirationTitle(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.subscriptionExpirationTitle = textView;
    }

    public final void setSubscriptionStatus(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.subscriptionStatus = textView;
    }
}
