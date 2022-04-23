package com.privacystar.core.p011ui.detail_view.caller_details;

import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.ArrayRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.constraint.ConstraintLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentTransaction;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.widget.NestedScrollView;
import android.support.p004v7.app.AlertDialog;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.PopupMenu;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.call_event.CallHistoryAdapter;
import com.privacystar.core.data.call.call_event.CallHistoryHelper;
import com.privacystar.core.data.call.call_event.LogItem;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.CategoryQuestionnaireRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract;
import com.privacystar.core.p011ui.util.AnimationUtil;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.widgets.ConfirmDialog;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
import com.privacystar.core.p011ui.widgets.NumberListType;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.apptentive.ApptentiveConstants;
import com.privacystar.core.util.BlockingUtil;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.ContactUtil;
import com.privacystar.core.util.FeatureUtil;
import com.privacystar.core.util.NavigationUtil;
import com.privacystar.core.util.NumberListUtil;
import com.privacystar.core.util.PhoneActivityHelper;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.ThemeUtil;
import java.lang.reflect.Field;
import java.util.List;
import org.apmem.tools.layouts.FlowLayout;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsFragment.class */
public class CallerDetailsFragment extends DetailFragment implements DetailActivity.DetailActivityContent, View.OnCreateContextMenuListener, CallerDetailsContract.View {
    private static final int CALL_HISTORY_SIZE = 15;
    @BindView(C1566R.C1569id.caller_detail_alert_banner_location)
    LinearLayout alertBannerLocation;
    @BindView(C1566R.C1569id.caller_details_info_button_approve_cl)
    ConstraintLayout approveButtonCl;
    @BindView(C1566R.C1569id.caller_details_info_button_block_cl)
    ConstraintLayout blockButtonRl;
    @BindView(C1566R.C1569id.call_data_collection_center)
    LinearLayout callDataCollectionLayout;
    @BindView(C1566R.C1569id.caller_details_tags_rl)
    FlowLayout callLabelsLayout;
    @BindView(C1566R.C1569id.caller_details_caller_category_string)
    TextView callerCategoryTv;
    @BindView(C1566R.C1569id.caller_details_caller_icon)
    CallerIconView callerIcon;
    @BindView(C1566R.C1569id.caller_details_tags_cv)
    RelativeLayout categoryTagsRL;
    @BindView(C1566R.C1569id.caller_details_header_title)
    TextView headerTitleTv;
    @BindView(C1566R.C1569id.caller_details_info_button_approve_iv)
    ImageView infoApproveIcon;
    @BindView(C1566R.C1569id.caller_details_info_button_approve_tv)
    TextView infoApproveTv;
    @BindView(C1566R.C1569id.caller_details_info_button_block_iv)
    ImageView infoBlockIcon;
    @BindView(C1566R.C1569id.caller_details_info_button_block_tv)
    TextView infoBlockTv;
    @BindView(C1566R.C1569id.caller_details_info_location)
    TextView infoLocationTv;
    @BindView(C1566R.C1569id.caller_details_info_number)
    TextView infoNumberTv;
    @BindView(C1566R.C1569id.caller_details_info_rl)
    RelativeLayout infoRl;
    @BindView(C1566R.C1569id.options_button)
    LinearLayout menuButtonLayout;
    @BindView(C1566R.C1569id.no_items_placeholder)
    FrameLayout noItemsLayout;
    @BindView(C1566R.C1569id.caller_details_rv)
    ContextMenuRecyclerView recyclerView;
    @BindView(C1566R.C1569id.caller_details_info_button_report_cl)
    ConstraintLayout reportButtonCl;
    @BindView(C1566R.C1569id.call_data_collection_robocall)
    LinearLayout robocallCollectionLayout;
    @BindView(C1566R.C1569id.caller_details_scroll_view)
    NestedScrollView scrollView;
    @BindView(C1566R.C1569id.caller_details_coordinator)
    CoordinatorLayout snackbarLocation;
    private CallerDetailsTagButton[] tagButtons;
    @BindView(C1566R.C1569id.call_data_collection_center_thank_you)
    TextView thankYouMessageTv;
    @BindView(C1566R.C1569id.caller_details_back_button)
    LinearLayout upBackButton;
    @BindView(C1566R.C1569id.call_details_is_caller_type_card)
    LinearLayout yNQuestionLayout;
    @BindView(C1566R.C1569id.caller_details_yn_question_text)
    TextView yNQuestionTv;
    private PopupMenu optionsMenu = null;
    private AlertDialog reportSubmissionDialog = null;
    private CallerDetailsPresenter presenter = new CallerDetailsPresenter(this);
    private DialogInterface.OnClickListener cancelReport = new DialogInterface.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$0
        private final CallerDetailsFragment arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.arg$1.lambda$new$4$CallerDetailsFragment(dialogInterface, i);
        }
    };

    private boolean bindContextMenu(BlockListModel.BlockList blockList) {
        return blockList != null;
    }

    private void buildContextMenu(@MenuRes int i, View view) {
        this.optionsMenu = new PopupMenu(getActivity(), view, GravityCompat.END);
        this.optionsMenu.getMenuInflater().inflate(i, this.optionsMenu.getMenu());
        for (int i2 = 0; i2 < this.optionsMenu.getMenu().size(); i2++) {
            Drawable icon = this.optionsMenu.getMenu().getItem(i2).getIcon();
            if (icon != null) {
                icon.mutate();
                icon.setColorFilter(getResources().getColor(C1566R.color.ps3_grey_400), PorterDuff.Mode.SRC_ATOP);
            }
        }
        this.optionsMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$5
            private final CallerDetailsFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.support.p004v7.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                return this.arg$1.handleMenuTouch(menuItem);
            }
        });
        if (CallerDetailsManagerImpl.INSTANCE.shouldShowContextMenu()) {
            boolean z = getContext().getResources().getBoolean(C1566R.bool.caller_details_context_block);
            MenuItem findItem = this.optionsMenu.getMenu().findItem(C1566R.C1569id.block_list_context_menu_block);
            MenuItem findItem2 = this.optionsMenu.getMenu().findItem(C1566R.C1569id.block_list_context_menu_unblock);
            if (!(findItem == null || findItem2 == null)) {
                boolean callerIsBlocked = this.presenter.callerIsBlocked();
                findItem.setVisible(!callerIsBlocked && z);
                boolean z2 = false;
                if (callerIsBlocked) {
                    z2 = false;
                    if (z) {
                        z2 = true;
                    }
                }
                findItem2.setVisible(z2);
            }
        }
        view.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$6
            private final CallerDetailsFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                this.arg$1.lambda$buildContextMenu$5$CallerDetailsFragment(view2);
            }
        });
    }

    private void inflateErrorBannerWithButtons(final NumberListType numberListType, final String str) {
        View inflate = this.activity.getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_two_actions, (ViewGroup) null);
        ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_title)).setText(numberListType == NumberListType.BLOCK ? getString(C1566R.string.info_dialog_already_in_list_explanation, "allow list", "block list") : getString(C1566R.string.info_dialog_already_in_list_explanation, "block list", "allow list"));
        inflate.findViewById(C1566R.C1569id.error_banner_two_yes).setOnClickListener(new View.OnClickListener(this, str, numberListType) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$9
            private final CallerDetailsFragment arg$1;
            private final String arg$2;
            private final NumberListType arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = str;
                this.arg$3 = numberListType;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$inflateErrorBannerWithButtons$8$CallerDetailsFragment(this.arg$2, this.arg$3, view);
            }
        });
        inflate.findViewById(C1566R.C1569id.error_banner_two_no).setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$10
            private final CallerDetailsFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$inflateErrorBannerWithButtons$9$CallerDetailsFragment(view);
            }
        });
        this.alertBannerLocation.removeAllViews();
        this.alertBannerLocation.addView(inflate);
    }

    private void setApproveButtonValue(boolean z) {
        if (this.infoApproveTv != null) {
            this.infoApproveTv.setText(z ? C1566R.string.general_text_unapprove : C1566R.string.general_text_approve);
        }
        if (this.infoApproveIcon != null && CallerDetailsManagerImpl.INSTANCE.shouldShowUnBlockRemoveIcon()) {
            this.infoApproveIcon.setColorFilter(ContextCompat.getColor(getContext(), z ? C1566R.color.ps3_grey_400 : 2131099979));
        }
    }

    private void setBlockButtonValue(boolean z) {
        if (this.infoBlockTv != null) {
            this.infoBlockTv.setText(z ? C1566R.string.caller_details_info_unblock : C1566R.string.general_text_block);
        }
        if (this.infoBlockIcon != null && CallerDetailsManagerImpl.INSTANCE.shouldShowUnBlockRemoveIcon()) {
            this.infoBlockIcon.setColorFilter(ContextCompat.getColor(getContext(), z ? C1566R.color.ps3_grey_400 : 2131099979));
        }
        if (this.optionsMenu != null && getContext().getResources().getBoolean(C1566R.bool.caller_details_context_block)) {
            this.optionsMenu.getMenu().findItem(C1566R.C1569id.block_list_context_menu_block).setVisible(!z);
            this.optionsMenu.getMenu().findItem(C1566R.C1569id.block_list_context_menu_unblock).setVisible(z);
        }
    }

    private void setButtonBackgroundDeselected(CallerDetailsTagButton callerDetailsTagButton) {
        Timber.m28v("Setting %s button deselected", callerDetailsTagButton.getText());
        callerDetailsTagButton.setBackground(getResources().getDrawable(C1566R.C1568drawable.button_gradient_inactive));
        callerDetailsTagButton.setTextColor(ContextCompat.getColor(getActivity(), C1566R.color.selectable_button_inactive_text_color));
    }

    private void setButtonBackgroundSelected(CallerDetailsTagButton callerDetailsTagButton) {
        Timber.m28v("Setting %s button selected", callerDetailsTagButton.getText());
        callerDetailsTagButton.setBackground(getResources().getDrawable(ThemeUtil.getThemeButtonGradient(getContext())));
        callerDetailsTagButton.setTextColor(ThemeUtil.resolveAttributeColor(getContext(), C1566R.C1567attr.colorPrimaryLabel));
        this.presenter.onButtonBackgroundSelected(callerDetailsTagButton.getText().toString());
    }

    private void showAlertWithText(String str) {
        new AlertDialog.Builder(getActivity(), 16974393).setTitle(C1566R.string.detail_activity_alert_title).setMessage(str).setCancelable(false).setIcon(C1566R.C1568drawable.caller_icon_badge).setPositiveButton(C1566R.string.detail_activity_alert_positive, CallerDetailsFragment$$Lambda$11.$instance).show();
    }

    private void showListAddedDialog(@NonNull NumberListType numberListType) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        InformationDialog newAddedToNumberListInstance = StaticDialogs.INSTANCE.newAddedToNumberListInstance(getContext(), null, numberListType);
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.add(newAddedToNumberListInstance, "blocked_type_explanation_fragment");
        beginTransaction.commitAllowingStateLoss();
    }

    public void addButtonsFromResource(@ArrayRes int i, ViewGroup viewGroup) {
        String[] stringArray = getResources().getStringArray(i);
        this.tagButtons = new CallerDetailsTagButton[stringArray.length];
        for (int i2 = 0; i2 < stringArray.length; i2++) {
            final String str = stringArray[i2];
            CallerDetailsTagButton callerDetailsTagButton = new CallerDetailsTagButton(getContext());
            callerDetailsTagButton.setAllCaps(false);
            callerDetailsTagButton.setText(str);
            setButtonBackgroundDeselected(callerDetailsTagButton);
            callerDetailsTagButton.setOnClickListener(new View.OnClickListener(this, str) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$4
                private final CallerDetailsFragment arg$1;
                private final String arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                    this.arg$2 = str;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.arg$1.lambda$addButtonsFromResource$3$CallerDetailsFragment(this.arg$2, view);
                }
            });
            this.tagButtons[i2] = callerDetailsTagButton;
            viewGroup.addView(callerDetailsTagButton, getButtonLayoutParams());
        }
        this.presenter.afterTagButtonsAdded();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void addContactListener() {
        this.menuButtonLayout.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$2
            private final CallerDetailsFragment arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$addContactListener$1$CallerDetailsFragment(view);
            }
        });
    }

    @OnClick({C1566R.C1569id.caller_details_back_button})
    public void backButton() {
        getActivity().dispatchKeyEvent(new KeyEvent(0, 4));
        getActivity().dispatchKeyEvent(new KeyEvent(1, 4));
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void blockNumber(@NotNull String str) {
        BlockingUtil.blockNumber(getRealm(), str);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void callDataCollectionVisibility(boolean z) {
        if (z) {
            this.callDataCollectionLayout.setVisibility(0);
        } else {
            this.callDataCollectionLayout.setVisibility(8);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void collapseCategoryTags() {
        AnimationUtil.collapse(this.categoryTagsRL, getContext().getResources().getInteger(C1566R.integer.button_collapse_ms));
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void collapseRoboCallBanner() {
        AnimationUtil.collapse(this.robocallCollectionLayout);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void configureContextMenu() {
        buildContextMenu(getMenuResId(), this.menuButtonLayout);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean couldBlockAsScam(@NonNull Caller caller) {
        return FeatureUtil.couldBlockAsScam(getRealm(), caller);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void enableFAB() {
        this.activity.enableFab(true);
        this.activity.setFabIcon(C1566R.C1568drawable.ic_mode_edit_white_24dp);
        this.activity.setFabContentDesc(getString(C1566R.string.con_desc_caller_details_edit));
        Timber.m37d("Enabling and binding FAB.", new Object[0]);
        this.activity.enableFab(false);
    }

    public FlowLayout.LayoutParams getButtonLayoutParams() {
        int dpToPx = DensityUtil.dpToPx(getActivity(), 3);
        FlowLayout.LayoutParams layoutParams = new FlowLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(dpToPx, dpToPx, dpToPx, dpToPx);
        layoutParams.setWeight(1.0f);
        return layoutParams;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.caller_details_fragment_coordinator;
    }

    protected int getMenuResId() {
        return C1566R.C1572menu.discrete_entity_context_menu;
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    @NotNull
    public String[] getTags() {
        return getResources().getStringArray(C1566R.array.caller_detail_tag_options);
    }

    public boolean handleMenuTouch(MenuItem menuItem) {
        String string = getResources().getString(C1566R.string.block_list_context_menu_block);
        String string2 = getResources().getString(C1566R.string.block_list_context_menu_unblock);
        String string3 = getResources().getString(C1566R.string.block_list_context_menu_report);
        if (menuItem.getTitle().equals(string) || menuItem.getTitle().equals(string2)) {
            if (this.optionsMenu != null) {
                this.optionsMenu.dismiss();
            }
            onBlockClick();
            return true;
        } else if (menuItem.getTitle().equals(string3)) {
            startReport();
            return true;
        } else if (menuItem.getItemId() == 2131296434) {
            this.presenter.onContactButtonClicked();
            return true;
        } else if (menuItem.getItemId() == 2131296436) {
            this.presenter.onSendCallClicked();
            return true;
        } else if (menuItem.getItemId() != 2131296438) {
            return true;
        } else {
            this.presenter.onSendMessageClicked();
            return true;
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean isApprovingFeatureEnabled() {
        return LicenseFeatureRealm.isFeatureAvailable(getRealm(), Feature.APPROVE_LIST);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean isBlockingFeatureEnabled() {
        return LicenseFeatureRealm.isFeatureAvailable(getRealm(), Feature.CALL_BLOCKING);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean isCallerApproved(@NotNull Caller caller) {
        return ApprovedListRealm.isCallerApproved(getRealm(), caller);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean isCallerBlocked(@NotNull Caller caller) {
        return BlockListRealm.isCallerBlocked(getRealm(), caller);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public boolean isQuestionnaireRecordedForNumber(@NotNull String str) {
        return CategoryQuestionnaireRealm.questionnaireRecorded(getRealm(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$addButtonsFromResource$3$CallerDetailsFragment(String str, View view) {
        this.presenter.onCallTypedTitleClicked(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$addContactListener$1$CallerDetailsFragment(View view) {
        this.presenter.onContactButtonClicked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$buildContextMenu$5$CallerDetailsFragment(View view) {
        try {
            Field declaredField = PopupMenu.class.getDeclaredField("mPopup");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this.optionsMenu);
            obj.getClass().getDeclaredMethod("setForceShowIcon", Boolean.TYPE).invoke(obj, true);
            this.optionsMenu.show();
        } catch (Exception e) {
            Timber.m32e(e, "Error forcing menu icons to show", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$inflateErrorBannerWithButtons$8$CallerDetailsFragment(String str, NumberListType numberListType, View view) {
        NumberListUtil.INSTANCE.swapBetweenLists(str, numberListType, getRealm());
        this.alertBannerLocation.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$inflateErrorBannerWithButtons$9$CallerDetailsFragment(View view) {
        this.alertBannerLocation.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$4$CallerDetailsFragment(DialogInterface dialogInterface, int i) {
        if (this.reportSubmissionDialog != null) {
            this.reportSubmissionDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onViewCreated$0$CallerDetailsFragment() {
        if (this.scrollView != null) {
            this.scrollView.fullScroll(33);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showTypeBlockedMessage$6$CallerDetailsFragment(String str, View view) {
        NumberListUtil.INSTANCE.swapBetweenLists(str, NumberListType.APPROVED, getRealm());
        this.alertBannerLocation.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showTypeBlockedMessage$7$CallerDetailsFragment(View view) {
        this.alertBannerLocation.removeAllViews();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void launchSubscriptionFragment() {
        Timber.m28v("Must be subscribed to perform this action. Opening subscription view.", new Object[0]);
        startActivity(DetailActivity.subscriptionIntent(getContext()));
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public CallerDetailsFragment newInstance() {
        return new CallerDetailsFragment();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.presenter.onActivityCreated();
    }

    @OnClick({C1566R.C1569id.caller_details_info_button_approve_cl})
    public void onApproveClick() {
        this.presenter.onApproveButtonClicked();
    }

    @OnClick({C1566R.C1569id.caller_details_info_button_block_cl})
    public void onBlockClick() {
        this.presenter.onBlockButtonClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @OnClick({C1566R.C1569id.caller_details_info_call_rl})
    public void onCallClick() {
        AnalyticsManager.INSTANCE.fire(Event.NumberDetailsCall.INSTANCE);
        this.presenter.onSendCallClicked();
    }

    @Override // android.support.p001v4.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (CallerDetailsManagerImpl.INSTANCE.shouldShowContextMenu() && this.presenter.isCallerUnknown()) {
            this.activity.getMenuInflater().inflate(getMenuResId(), contextMenu);
            if (!getContext().getResources().getBoolean(C1566R.bool.caller_details_context_block)) {
                contextMenu.removeItem(C1566R.C1569id.block_list_context_menu_block);
                contextMenu.removeItem(C1566R.C1569id.block_list_context_menu_unblock);
            } else if (this.presenter.isCallerInBlockList()) {
                contextMenu.removeItem(C1566R.C1569id.block_list_context_menu_block);
            } else {
                contextMenu.removeItem(C1566R.C1569id.block_list_context_menu_unblock);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        this.unbinder = ButterKnife.bind(this, inflate);
        Timber.m37d("Inflating %s", toString());
        this.presenter.onCreateView(this.activity.getPayload());
        this.scrollView.setNestedScrollingEnabled(false);
        this.recyclerView.setNestedScrollingEnabled(false);
        outputNameAccessibility(C1566R.string.con_desc_caller_details_title);
        return inflate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        this.presenter.onDestroyView();
        super.onDestroyView();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
        this.presenter.onFabClicked();
        Timber.m37d("FAB clicked, not editing anything yet.", new Object[0]);
        if (this.activity != null && this.activity.getCurrentFocus() != null) {
            Snackbar.make(this.activity.getCurrentFocus(), " FAB action behavior is not defined here.", 0).setAction(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_KEY, (View.OnClickListener) null).show();
        }
    }

    @OnClick({C1566R.C1569id.caller_details_header_title})
    public void onHeaderTitleClick() {
        this.presenter.onHeaderClicked(getResources().getBoolean(C1566R.bool.subscription_enabled));
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(MenuItem menuItem) {
        return false;
    }

    @OnClick({C1566R.C1569id.caller_details_info_message_rl})
    public void onMessageClick() {
        AnalyticsManager.INSTANCE.fire(Event.NumberDetailsText.INSTANCE);
        this.presenter.onSendMessageClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.presenter.onResume();
    }

    @OnClick({C1566R.C1569id.caller_details_yn_button_no})
    public void onRobocallAnswerNo() {
        this.presenter.onRoboCallAnswerNo();
    }

    @OnClick({C1566R.C1569id.caller_details_yn_button_yes})
    public void onRobocallAnswerYes() {
        this.presenter.onRoboCallAnswerYes();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.unbinder = ButterKnife.bind(this, view);
        this.presenter.onViewCreated();
        if (this.recyclerView != null) {
            this.recyclerView.setVisibility(4);
        }
        if (this.noItemsLayout != null) {
            this.noItemsLayout.setVisibility(0);
        }
        if (this.scrollView != null) {
            this.scrollView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$1
                private final CallerDetailsFragment arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    this.arg$1.lambda$onViewCreated$0$CallerDetailsFragment();
                }
            });
            this.scrollView.setOverScrollMode(0);
            this.scrollView.setSmoothScrollingEnabled(true);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void openAddContactScreen(@NotNull String str, @NotNull String str2) {
        ContactUtil.openAddContactScreen(getContext(), str, str2);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void openReportScreen(@NonNull Caller caller) {
        NavigationUtil.launchReport(getActivity(), caller, false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void openSendCallScreen(@NotNull String str) {
        SystemUtil.INSTANCE.sendCall(getContext(), str);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void openSendMessageScreen(@NotNull String str) {
        SystemUtil.INSTANCE.sendMessage(getContext(), str);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void populateRecycler(Caller caller) {
        if (caller != null) {
            List<LogItem> mergeCallAndBlockedLists = LogItem.mergeCallAndBlockedLists(CallHistoryHelper.getInstance(this.activity.getApplicationContext()).getCallHistory(caller, CallHistoryHelper.HistoryFilter.ALL, 15), PhoneActivityHelper.getBlockHistoryFromNumber(getRealm(), caller.getNumber()));
            CallHistoryAdapter callHistoryAdapter = new CallHistoryAdapter(mergeCallAndBlockedLists.subList(0, Math.min(mergeCallAndBlockedLists.size(), 14)));
            this.recyclerView.setLayoutManager(new LinearLayoutManager(this.recyclerView.getContext()));
            this.recyclerView.setAdapter(callHistoryAdapter);
            boolean z = true;
            this.recyclerView.setHasFixedSize(true);
            if (callHistoryAdapter.getItemCount() <= 0) {
                z = false;
            }
            if (z) {
                this.noItemsLayout.setVisibility(8);
                this.recyclerView.setVisibility(0);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void selectButtonWithTitle(@NotNull String str) {
        CallerDetailsTagButton[] callerDetailsTagButtonArr;
        for (CallerDetailsTagButton callerDetailsTagButton : this.tagButtons) {
            if (callerDetailsTagButton.getText().toString().equals(str)) {
                setButtonBackgroundSelected(callerDetailsTagButton);
            } else {
                setButtonBackgroundDeselected(callerDetailsTagButton);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setAddContactMenuVisible(boolean z) {
        if (this.optionsMenu != null) {
            this.optionsMenu.getMenu().findItem(C1566R.C1569id.block_list_context_menu_add).setVisible(z);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setApproved(@NotNull String str, boolean z) {
        ApprovedListRealm.setApproved(getRealm(), str, z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setToolbarVisibility(boolean z) {
        if (z) {
            ((DetailActivity) getActivity()).showToolbar();
        } else {
            ((DetailActivity) getActivity()).hideToolbar();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setYNQuestion() {
        showYNQuestion(true);
        this.yNQuestionTv.setText(getResources().getString(C1566R.string.caller_details_fragment_YNQuestion_robocall));
        this.yNQuestionLayout.setVisibility(0);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setupApproveButton() {
        int i = 0;
        if (!isAdded()) {
            Timber.m37d("Can't setup approve button - fragment not attached to activity.", new Object[0]);
            return;
        }
        boolean z = !getResources().getBoolean(C1566R.bool.approved_list_enabled) || this.presenter.isCallerUnknown() || !BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(getContext(), getRealm());
        if (!z) {
            setApproveButtonValue(this.presenter.callerIsApproved());
        }
        ConstraintLayout constraintLayout = this.approveButtonCl;
        if (z) {
            i = 8;
        }
        constraintLayout.setVisibility(i);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void setupBlockButton(Caller caller) {
        int i = 0;
        if (!isAdded()) {
            Timber.m37d("Can't setup block button - fragment not attached to activity.", new Object[0]);
            return;
        }
        boolean z = (getResources().getBoolean(C1566R.bool.approved_list_enabled) && this.presenter.callerIsApproved() && FeatureUtil.couldBlockGeneral(getRealm(), caller)) || !BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(getContext(), getRealm());
        ConstraintLayout constraintLayout = this.blockButtonRl;
        if (z) {
            i = 8;
        }
        constraintLayout.setVisibility(i);
        setBlockButtonValue(this.presenter.callerIsBlocked());
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01eb  */
    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    @hugo.weaving.DebugLog
    /* renamed from: setupViewData */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$update$2$CallerDetailsFragment(com.privacystar.core.data.call.caller.Caller r5) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment.lambda$update$2$CallerDetailsFragment(com.privacystar.core.data.call.caller.Caller):void");
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showBlockApproveSwitchDialog(@NonNull NumberListType numberListType, @NonNull String str, boolean z) {
        if (z) {
            inflateErrorBannerWithButtons(numberListType, str);
        } else {
            StaticDialogs.INSTANCE.newAlreadyInOtherListInstance(getContext(), getRealm(), str, numberListType).show(getActivity().getSupportFragmentManager(), "in_other_list_explanation_fragment");
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showCategoryTags() {
        addButtonsFromResource(C1566R.array.caller_detail_tag_options, this.callLabelsLayout);
        AnimationUtil.expand(this.callDataCollectionLayout);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showHideFieldsIfUnknownNumber(boolean z) {
        int i = 0;
        this.menuButtonLayout.setVisibility(z ? 4 : 0);
        this.reportButtonCl.setVisibility(z ? 8 : 0);
        RelativeLayout relativeLayout = this.infoRl;
        if (z) {
            i = 8;
        }
        relativeLayout.setVisibility(i);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showNumberApprovedMessage(boolean z) {
        if (z) {
            PSSnackBars.INSTANCE.getTopToBottomNoActionSnack(this.snackbarLocation, this.activity, C1566R.string.info_dialog_approved_title, false, true).show();
        } else {
            showListAddedDialog(NumberListType.APPROVED);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showNumberBlockedMessage(boolean z) {
        if (z) {
            PSSnackBars.INSTANCE.getTopToBottomNoActionSnack(this.snackbarLocation, this.activity, C1566R.string.info_dialog_block_title, false, true).show();
        } else {
            showListAddedDialog(NumberListType.BLOCK);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showReportConfirmationDialog(@NonNull final String str) {
        if (this.reportSubmissionDialog != null) {
            this.reportSubmissionDialog.dismiss();
        }
        this.reportSubmissionDialog = new AlertDialog.Builder(getActivity(), C1566R.C1574style.AlertDialogStyle).setTitle(C1566R.string.report_number_by_tags_alert_title).setMessage(getString(C1566R.string.report_number_by_tags_alert_message, str)).setPositiveButton(C1566R.string.report_number_by_tags_alert_positive, new DialogInterface.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment.1
            private String categoryType;

            {
                this.categoryType = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CallerDetailsFragment.this.presenter.onButtonSelectedByUser(this.categoryType);
                if (CallerDetailsFragment.this.reportSubmissionDialog != null) {
                    CallerDetailsFragment.this.reportSubmissionDialog.dismiss();
                }
            }
        }).setNegativeButton(C1566R.string.report_number_by_tags_alert_negative, this.cancelReport).create();
        this.reportSubmissionDialog.show();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showReportSubmittedMessage(boolean z) {
        try {
            if (z) {
                Timber.m37d("Showing report successfully submitted message", new Object[0]);
                PSSnackBars.INSTANCE.getTopToBottomNoActionSnack(this.snackbarLocation, getContext(), C1566R.string.report_submission_successful, false, true).show();
            } else {
                Timber.m37d("Showing report was NOT successfully submitted message", new Object[0]);
                PSSnackBars.INSTANCE.getTopToBottomNoActionSnack(this.snackbarLocation, getContext(), C1566R.string.report_submission_not_successful, true, true).show();
            }
        } catch (NullPointerException e) {
            Timber.m34e(e.getMessage(), new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showThankYouText() {
        AnimationUtil.expand(this.thankYouMessageTv, getContext().getResources().getInteger(C1566R.integer.button_collapse_ms));
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showTypeBlockedMessage(@NotNull final String str, boolean z, int i) {
        if (z) {
            View inflate = this.activity.getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_two_actions, (ViewGroup) null);
            ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_title)).setText(getString(C1566R.string.info_dialog_already_blocked_by_category_explanation));
            inflate.findViewById(C1566R.C1569id.error_banner_two_yes).setOnClickListener(new View.OnClickListener(this, str) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$7
                private final CallerDetailsFragment arg$1;
                private final String arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                    this.arg$2 = str;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.arg$1.lambda$showTypeBlockedMessage$6$CallerDetailsFragment(this.arg$2, view);
                }
            });
            inflate.findViewById(C1566R.C1569id.error_banner_two_no).setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$8
                private final CallerDetailsFragment arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.arg$1.lambda$showTypeBlockedMessage$7$CallerDetailsFragment(view);
                }
            });
            this.alertBannerLocation.removeAllViews();
            this.alertBannerLocation.addView(inflate);
            return;
        }
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        InformationDialog newBlockedTypeInstance = StaticDialogs.INSTANCE.newBlockedTypeInstance(getContext(), i);
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.add(newBlockedTypeInstance, "blocked_type_explanation_fragment");
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showUnknownBlockedDialog(boolean z) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        InformationDialog newUnknownBlockingInstance = StaticDialogs.INSTANCE.newUnknownBlockingInstance(getContext(), z);
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.add(newUnknownBlockingInstance, "unknown_blocking_explanation_fragment");
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void showYNQuestion(boolean z) {
        if (z) {
            this.robocallCollectionLayout.setVisibility(0);
        } else {
            this.robocallCollectionLayout.setVisibility(8);
        }
    }

    @OnClick({C1566R.C1569id.caller_details_info_button_report_cl})
    public void startReport() {
        AnalyticsManager.INSTANCE.fire(Event.NumberDetailsReport.INSTANCE);
        this.presenter.onStartReportClicked();
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void storeQuestionnaireResponse(@NotNull String str, @NotNull String str2) {
        CategoryQuestionnaireRealm.storeResponse(getRealm(), str, str2);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void unBlockNumber(@NotNull String str) {
        BlockingUtil.unblockNumber(getActivity(), getRealm(), str);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void unblockEntryBanner(@NonNull String str) {
        View unblockNumber = BlockingUtil.unblockNumber(this.activity, getRealm(), str, new ConfirmDialog.OnConfirmListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment.2
            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onCancel() {
                CallerDetailsFragment.this.alertBannerLocation.removeAllViews();
            }

            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onConfirm() {
                CallerDetailsFragment.this.alertBannerLocation.removeAllViews();
            }
        });
        this.alertBannerLocation.removeAllViews();
        this.alertBannerLocation.addView(unblockNumber);
    }

    @Override // com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsContract.View
    public void update(final Caller caller) {
        Timber.m37d("Observed update to bound Caller object.", new Object[0]);
        new Handler(Looper.getMainLooper()).post(new Runnable(this, caller) { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment$$Lambda$3
            private final CallerDetailsFragment arg$1;
            private final Caller arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = caller;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$update$2$CallerDetailsFragment(this.arg$2);
            }
        });
    }
}
