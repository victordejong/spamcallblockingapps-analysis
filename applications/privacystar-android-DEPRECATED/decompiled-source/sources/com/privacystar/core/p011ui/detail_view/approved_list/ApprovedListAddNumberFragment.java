package com.privacystar.core.p011ui.detail_view.approved_list;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.TextInputLayout;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.Toolbar;
import android.telephony.PhoneNumberFormattingTextWatcher;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListAddNumberFragment;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragment;
import com.privacystar.core.p011ui.util.BlockApproveNumberUtil;
import com.privacystar.core.p011ui.widgets.NumberListType;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.NumberListUtil;
import io.realm.Realm;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002:\u0001,B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0002J\b\u0010\u0017\u001a\u00020\u000bH\u0014J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0019\u001a\u00020\u0001H\u0016J\b\u0010\u001a\u001a\u00020\u0012H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010#\u001a\u00020\u0012H\u0016J\b\u0010$\u001a\u00020\u0012H\u0016J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010)\u001a\u00020\u0012H\u0016J\b\u0010*\u001a\u00020\u0012H\u0002J\b\u0010+\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��¨\u0006-"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "()V", "addNumberButton", "Landroid/support/v7/widget/CardView;", "addNumberButtonClickedListener", "Landroid/view/View$OnClickListener;", "bannerLocation", "Landroid/widget/LinearLayout;", "colorDisabled", "", "colorEnabled", "inputNumberET", "Landroid/widget/EditText;", "snackBarParent", "Landroid/support/design/widget/CoordinatorLayout;", "approveNumber", "", "number", "", "disableButton", "enableButton", "getLayoutResId", "inflateErrorBannerWithButtons", "newInstance", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onFabClicked", "onMenuItemClicked", "", "item", "Landroid/view/MenuItem;", "refreshContent", "setupToolbar", "showSuccessSnackbar", "AddPhoneNumberTextWatch", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment.class */
public final class ApprovedListAddNumberFragment extends DetailFragment implements DetailActivity.DetailActivityContent {
    private HashMap _$_findViewCache;
    private CardView addNumberButton;
    private LinearLayout bannerLocation;
    private EditText inputNumberET;
    private CoordinatorLayout snackBarParent;
    private int colorDisabled = -1;
    private int colorEnabled = -1;
    private final View.OnClickListener addNumberButtonClickedListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$addNumberButtonClickedListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Editable text = ApprovedListAddNumberFragment.access$getInputNumberET$p(ApprovedListAddNumberFragment.this).getText();
            Intrinsics.checkExpressionValueIsNotNull(text, "inputNumberET.text");
            String replace = new Regex("[^0-9]").replace(text, "");
            Timber.m37d("Adding " + replace + " to block list", new Object[0]);
            ApprovedListAddNumberFragment.this.approveNumber(replace);
        }
    };

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u000e\u001a\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tH\u0016Jj\u0010\u000f\u001a\u00020\r2b\u0010\u0010\u001a^\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r0\u0004Rl\u0010\u0003\u001a`\u0012\u0015\u0012\u0013\u0018\u00010\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\n\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment$AddPhoneNumberTextWatch;", "Landroid/telephony/PhoneNumberFormattingTextWatcher;", "()V", "secondaryTextChangedListener", "Lkotlin/Function4;", "", "Lkotlin/ParameterName;", "name", "s", "", "start", "before", "count", "", "onTextChanged", "setSecondaryTextChangedListener", "fn", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$AddPhoneNumberTextWatch */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/approved_list/ApprovedListAddNumberFragment$AddPhoneNumberTextWatch.class */
    public static final class AddPhoneNumberTextWatch extends PhoneNumberFormattingTextWatcher {
        private Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> secondaryTextChangedListener;

        @Override // android.telephony.PhoneNumberFormattingTextWatcher, android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
            super.onTextChanged(charSequence, i, i2, i3);
            Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> function4 = this.secondaryTextChangedListener;
            if (function4 != null) {
                function4.invoke(charSequence, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            }
        }

        public final void setSecondaryTextChangedListener(@NotNull Function4<? super CharSequence, ? super Integer, ? super Integer, ? super Integer, Unit> fn) {
            Intrinsics.checkParameterIsNotNull(fn, "fn");
            this.secondaryTextChangedListener = fn;
        }
    }

    @NotNull
    public static final /* synthetic */ LinearLayout access$getBannerLocation$p(ApprovedListAddNumberFragment approvedListAddNumberFragment) {
        LinearLayout linearLayout = approvedListAddNumberFragment.bannerLocation;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerLocation");
        }
        return linearLayout;
    }

    @NotNull
    public static final /* synthetic */ EditText access$getInputNumberET$p(ApprovedListAddNumberFragment approvedListAddNumberFragment) {
        EditText editText = approvedListAddNumberFragment.inputNumberET;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputNumberET");
        }
        return editText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void approveNumber(String str) {
        BlockApproveNumberUtil.BlockApproveNumberStatus approveNumber = BlockApproveNumberUtil.approveNumber(this.activity, getRealm(), str);
        Timber.m37d("Approve Number Status [" + approveNumber + ']', new Object[0]);
        if (approveNumber != null) {
            switch (approveNumber) {
                case FEATURE_NOT_AVAILABLE:
                    startActivity(DetailActivity.detailIntent(getContext(), SubscriptionFragment.class, null));
                    return;
                case INVALID_PHONE_NUMBER:
                    Timber.m37d("Invalid phone number, showing snackbar", new Object[0]);
                    PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
                    CoordinatorLayout coordinatorLayout = this.snackBarParent;
                    if (coordinatorLayout == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("snackBarParent");
                    }
                    CoordinatorLayout coordinatorLayout2 = coordinatorLayout;
                    DetailActivity activity = this.activity;
                    Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
                    PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, coordinatorLayout2, activity, C1566R.string.search_error_title, true, false, 16, null).show();
                    return;
                case ALREADY_APPROVED:
                    Timber.m37d("Already Approved, showing snackbar", new Object[0]);
                    PSSnackBars pSSnackBars2 = PSSnackBars.INSTANCE;
                    CoordinatorLayout coordinatorLayout3 = this.snackBarParent;
                    if (coordinatorLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("snackBarParent");
                    }
                    CoordinatorLayout coordinatorLayout4 = coordinatorLayout3;
                    DetailActivity activity2 = this.activity;
                    Intrinsics.checkExpressionValueIsNotNull(activity2, "activity");
                    PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars2, coordinatorLayout4, activity2, C1566R.string.info_dialog_already_approved_title, true, false, 16, null).show();
                    return;
                case ALREADY_BLOCKED:
                    Timber.m37d("Already blocked, showing snackbar", new Object[0]);
                    inflateErrorBannerWithButtons(str);
                    return;
                case SUCCESSFULLY_ADDED:
                    Timber.m37d("Number successfully blocked, showing snackbar", new Object[0]);
                    showSuccessSnackbar();
                    refreshContent();
                    return;
            }
        }
        Timber.m34e("Approving number process is in an unknown status, number is not approved", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disableButton() {
        CardView cardView = this.addNumberButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addNumberButton");
        }
        cardView.setCardBackgroundColor(this.colorDisabled);
        CardView cardView2 = this.addNumberButton;
        if (cardView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addNumberButton");
        }
        cardView2.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enableButton() {
        CardView cardView = this.addNumberButton;
        if (cardView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addNumberButton");
        }
        cardView.setCardBackgroundColor(this.colorEnabled);
        CardView cardView2 = this.addNumberButton;
        if (cardView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addNumberButton");
        }
        cardView2.setEnabled(true);
    }

    private final void inflateErrorBannerWithButtons(final String str) {
        LinearLayout linearLayout = this.bannerLocation;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerLocation");
        }
        linearLayout.removeAllViews();
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        View inflate = activity.getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_two_actions, (ViewGroup) null);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String string = context.getString(C1566R.string.info_dialog_already_in_list_explanation, "block list", "allow list");
        View findViewById = inflate.findViewById(C1566R.C1569id.error_banner_two_title);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "banner.findViewById<Text…d.error_banner_two_title)");
        ((TextView) findViewById).setText(string);
        ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_yes)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$inflateErrorBannerWithButtons$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Realm realm;
                NumberListUtil numberListUtil = NumberListUtil.INSTANCE;
                String str2 = str;
                NumberListType numberListType = NumberListType.APPROVED;
                realm = ApprovedListAddNumberFragment.this.getRealm();
                Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
                numberListUtil.swapBetweenLists(str2, numberListType, realm);
                ApprovedListAddNumberFragment.access$getBannerLocation$p(ApprovedListAddNumberFragment.this).removeAllViews();
                ApprovedListAddNumberFragment.this.refreshContent();
                ApprovedListAddNumberFragment.this.showSuccessSnackbar();
            }
        });
        ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_no)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$inflateErrorBannerWithButtons$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApprovedListAddNumberFragment.access$getBannerLocation$p(ApprovedListAddNumberFragment.this).removeAllViews();
            }
        });
        LinearLayout linearLayout2 = this.bannerLocation;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerLocation");
        }
        linearLayout2.addView(inflate);
    }

    private final void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.approved_list_add_number_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        ((Toolbar) activity.findViewById(C1566R.C1569id.toolbar)).setNavigationIcon(C1566R.C1568drawable.ic_close_black_24dp);
        DetailActivity activity2 = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity2, "activity");
        ((Toolbar) activity2.findViewById(C1566R.C1569id.toolbar)).setNavigationContentDescription(C1566R.string.con_desc_detail_activity_back);
        this.activity.showToolbar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSuccessSnackbar() {
        AnalyticsManager.INSTANCE.fire(Event.AllowAddNumber.INSTANCE);
        PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
        CoordinatorLayout coordinatorLayout = this.snackBarParent;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snackBarParent");
        }
        CoordinatorLayout coordinatorLayout2 = coordinatorLayout;
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, coordinatorLayout2, activity, C1566R.string.info_dialog_approved_title, false, false, 24, null).show();
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
        return C1566R.C1571layout.block_allow_list_add_number_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new ApprovedListAddNumberFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        final View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Timber.m37d("Creating BlockListAddNumberFragment", new Object[0]);
        setupToolbar();
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        CardView cardView = (CardView) view.findViewById(C1566R.C1569id.block_list_add_number_add_number_btn);
        Intrinsics.checkExpressionValueIsNotNull(cardView, "view.block_list_add_number_add_number_btn");
        this.addNumberButton = cardView;
        EditText editText = (EditText) view.findViewById(C1566R.C1569id.block_list_add_number_enter_number_et);
        Intrinsics.checkExpressionValueIsNotNull(editText, "view.block_list_add_number_enter_number_et");
        this.inputNumberET = editText;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) view.findViewById(C1566R.C1569id.block_list_add_number_coordinator_layout);
        Intrinsics.checkExpressionValueIsNotNull(coordinatorLayout, "view.block_list_add_number_coordinator_layout");
        this.snackBarParent = coordinatorLayout;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C1566R.C1569id.block_list_add_number_banner_location);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.block_list_add_number_banner_location");
        this.bannerLocation = linearLayout;
        EditText editText2 = this.inputNumberET;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputNumberET");
        }
        BlockListAddNumberFragment.AddPhoneNumberTextWatch addPhoneNumberTextWatch = new BlockListAddNumberFragment.AddPhoneNumberTextWatch();
        addPhoneNumberTextWatch.setSecondaryTextChangedListener(new C1610x2a272059(this));
        editText2.addTextChangedListener(addPhoneNumberTextWatch);
        EditText editText3 = this.inputNumberET;
        if (editText3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("inputNumberET");
        }
        editText3.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.privacystar.core.ui.detail_view.approved_list.ApprovedListAddNumberFragment$onCreateView$2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                if (z) {
                    View view3 = view;
                    Intrinsics.checkExpressionValueIsNotNull(view3, "view");
                    TextInputLayout textInputLayout = (TextInputLayout) view3.findViewById(C1566R.C1569id.block_list_add_number_til);
                    Intrinsics.checkExpressionValueIsNotNull(textInputLayout, "view.block_list_add_number_til");
                    textInputLayout.setHint(ApprovedListAddNumberFragment.this.getString(C1566R.string.block_allow_list_add_number_input_layout_hint));
                    return;
                }
                View view4 = view;
                Intrinsics.checkExpressionValueIsNotNull(view4, "view");
                TextInputLayout textInputLayout2 = (TextInputLayout) view4.findViewById(C1566R.C1569id.block_list_add_number_til);
                Intrinsics.checkExpressionValueIsNotNull(textInputLayout2, "view.block_list_add_number_til");
                textInputLayout2.setHint(ApprovedListAddNumberFragment.this.getString(C1566R.string.block_allow_list_add_number_hint));
            }
        });
        CardView cardView2 = this.addNumberButton;
        if (cardView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addNumberButton");
        }
        cardView2.setOnClickListener(this.addNumberButtonClickedListener);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.colorEnabled = ContextCompat.getColor(context, C1566R.color.general_button_background_color);
        Context context2 = getContext();
        if (context2 == null) {
            Intrinsics.throwNpe();
        }
        this.colorDisabled = ContextCompat.getColor(context2, C1566R.color.general_button_background_color_disabled);
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        ((Toolbar) activity.findViewById(C1566R.C1569id.toolbar)).setNavigationIcon(C1566R.C1568drawable.back_icon_padded);
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

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
        if (this.inputNumberET != null) {
            EditText editText = this.inputNumberET;
            if (editText == null) {
                Intrinsics.throwUninitializedPropertyAccessException("inputNumberET");
            }
            editText.getText().clear();
        }
    }
}
