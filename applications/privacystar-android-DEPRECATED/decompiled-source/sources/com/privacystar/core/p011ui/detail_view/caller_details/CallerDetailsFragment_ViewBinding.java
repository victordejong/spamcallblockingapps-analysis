package com.privacystar.core.p011ui.detail_view.caller_details;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.constraint.ConstraintLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.widget.NestedScrollView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
import org.apmem.tools.layouts.FlowLayout;
/* renamed from: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/caller_details/CallerDetailsFragment_ViewBinding.class */
public class CallerDetailsFragment_ViewBinding implements Unbinder {
    private CallerDetailsFragment target;
    private View view2131296484;
    private View view2131296488;
    private View view2131296493;
    private View view2131296496;
    private View view2131296499;
    private View view2131296503;
    private View view2131296506;
    private View view2131296516;
    private View view2131296517;

    @UiThread
    public CallerDetailsFragment_ViewBinding(final CallerDetailsFragment callerDetailsFragment, View view) {
        this.target = callerDetailsFragment;
        callerDetailsFragment.callerIcon = (CallerIconView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_caller_icon, "field 'callerIcon'", CallerIconView.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.caller_details_header_title, "field 'headerTitleTv' and method 'onHeaderTitleClick'");
        callerDetailsFragment.headerTitleTv = (TextView) Utils.castView(findRequiredView, C1566R.C1569id.caller_details_header_title, "field 'headerTitleTv'", TextView.class);
        this.view2131296488 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onHeaderTitleClick();
            }
        });
        callerDetailsFragment.menuButtonLayout = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.options_button, "field 'menuButtonLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_info_button_block_cl, "field 'blockButtonRl' and method 'onBlockClick'");
        callerDetailsFragment.blockButtonRl = (ConstraintLayout) Utils.castView(findRequiredView2, C1566R.C1569id.caller_details_info_button_block_cl, "field 'blockButtonRl'", ConstraintLayout.class);
        this.view2131296496 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onBlockClick();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_info_button_approve_cl, "field 'approveButtonCl' and method 'onApproveClick'");
        callerDetailsFragment.approveButtonCl = (ConstraintLayout) Utils.castView(findRequiredView3, C1566R.C1569id.caller_details_info_button_approve_cl, "field 'approveButtonCl'", ConstraintLayout.class);
        this.view2131296493 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onApproveClick();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_info_button_report_cl, "field 'reportButtonCl' and method 'startReport'");
        callerDetailsFragment.reportButtonCl = (ConstraintLayout) Utils.castView(findRequiredView4, C1566R.C1569id.caller_details_info_button_report_cl, "field 'reportButtonCl'", ConstraintLayout.class);
        this.view2131296499 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.startReport();
            }
        });
        callerDetailsFragment.infoRl = (RelativeLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_rl, "field 'infoRl'", RelativeLayout.class);
        callerDetailsFragment.infoNumberTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_number, "field 'infoNumberTv'", TextView.class);
        callerDetailsFragment.infoLocationTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_location, "field 'infoLocationTv'", TextView.class);
        callerDetailsFragment.infoBlockIcon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_button_block_iv, "field 'infoBlockIcon'", ImageView.class);
        callerDetailsFragment.infoBlockTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_button_block_tv, "field 'infoBlockTv'", TextView.class);
        callerDetailsFragment.infoApproveIcon = (ImageView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_button_approve_iv, "field 'infoApproveIcon'", ImageView.class);
        callerDetailsFragment.infoApproveTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_info_button_approve_tv, "field 'infoApproveTv'", TextView.class);
        callerDetailsFragment.callLabelsLayout = (FlowLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_tags_rl, "field 'callLabelsLayout'", FlowLayout.class);
        callerDetailsFragment.scrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_scroll_view, "field 'scrollView'", NestedScrollView.class);
        callerDetailsFragment.callerCategoryTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_caller_category_string, "field 'callerCategoryTv'", TextView.class);
        callerDetailsFragment.noItemsLayout = (FrameLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.no_items_placeholder, "field 'noItemsLayout'", FrameLayout.class);
        callerDetailsFragment.robocallCollectionLayout = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_data_collection_robocall, "field 'robocallCollectionLayout'", LinearLayout.class);
        callerDetailsFragment.callDataCollectionLayout = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_data_collection_center, "field 'callDataCollectionLayout'", LinearLayout.class);
        callerDetailsFragment.yNQuestionLayout = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_details_is_caller_type_card, "field 'yNQuestionLayout'", LinearLayout.class);
        callerDetailsFragment.yNQuestionTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_yn_question_text, "field 'yNQuestionTv'", TextView.class);
        callerDetailsFragment.recyclerView = (ContextMenuRecyclerView) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_rv, "field 'recyclerView'", ContextMenuRecyclerView.class);
        View findRequiredView5 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_back_button, "field 'upBackButton' and method 'backButton'");
        callerDetailsFragment.upBackButton = (LinearLayout) Utils.castView(findRequiredView5, C1566R.C1569id.caller_details_back_button, "field 'upBackButton'", LinearLayout.class);
        this.view2131296484 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.backButton();
            }
        });
        callerDetailsFragment.snackbarLocation = (CoordinatorLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_coordinator, "field 'snackbarLocation'", CoordinatorLayout.class);
        callerDetailsFragment.thankYouMessageTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.call_data_collection_center_thank_you, "field 'thankYouMessageTv'", TextView.class);
        callerDetailsFragment.categoryTagsRL = (RelativeLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_details_tags_cv, "field 'categoryTagsRL'", RelativeLayout.class);
        callerDetailsFragment.alertBannerLocation = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.caller_detail_alert_banner_location, "field 'alertBannerLocation'", LinearLayout.class);
        View findRequiredView6 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_yn_button_no, "method 'onRobocallAnswerNo'");
        this.view2131296516 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onRobocallAnswerNo();
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_yn_button_yes, "method 'onRobocallAnswerYes'");
        this.view2131296517 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onRobocallAnswerYes();
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_info_call_rl, "method 'onCallClick'");
        this.view2131296503 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.8
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onCallClick();
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, C1566R.C1569id.caller_details_info_message_rl, "method 'onMessageClick'");
        this.view2131296506 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.caller_details.CallerDetailsFragment_ViewBinding.9
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                callerDetailsFragment.onMessageClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallerDetailsFragment callerDetailsFragment = this.target;
        if (callerDetailsFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        callerDetailsFragment.callerIcon = null;
        callerDetailsFragment.headerTitleTv = null;
        callerDetailsFragment.menuButtonLayout = null;
        callerDetailsFragment.blockButtonRl = null;
        callerDetailsFragment.approveButtonCl = null;
        callerDetailsFragment.reportButtonCl = null;
        callerDetailsFragment.infoRl = null;
        callerDetailsFragment.infoNumberTv = null;
        callerDetailsFragment.infoLocationTv = null;
        callerDetailsFragment.infoBlockIcon = null;
        callerDetailsFragment.infoBlockTv = null;
        callerDetailsFragment.infoApproveIcon = null;
        callerDetailsFragment.infoApproveTv = null;
        callerDetailsFragment.callLabelsLayout = null;
        callerDetailsFragment.scrollView = null;
        callerDetailsFragment.callerCategoryTv = null;
        callerDetailsFragment.noItemsLayout = null;
        callerDetailsFragment.robocallCollectionLayout = null;
        callerDetailsFragment.callDataCollectionLayout = null;
        callerDetailsFragment.yNQuestionLayout = null;
        callerDetailsFragment.yNQuestionTv = null;
        callerDetailsFragment.recyclerView = null;
        callerDetailsFragment.upBackButton = null;
        callerDetailsFragment.snackbarLocation = null;
        callerDetailsFragment.thankYouMessageTv = null;
        callerDetailsFragment.categoryTagsRL = null;
        callerDetailsFragment.alertBannerLocation = null;
        this.view2131296488.setOnClickListener(null);
        this.view2131296488 = null;
        this.view2131296496.setOnClickListener(null);
        this.view2131296496 = null;
        this.view2131296493.setOnClickListener(null);
        this.view2131296493 = null;
        this.view2131296499.setOnClickListener(null);
        this.view2131296499 = null;
        this.view2131296484.setOnClickListener(null);
        this.view2131296484 = null;
        this.view2131296516.setOnClickListener(null);
        this.view2131296516 = null;
        this.view2131296517.setOnClickListener(null);
        this.view2131296517 = null;
        this.view2131296503.setOnClickListener(null);
        this.view2131296503 = null;
        this.view2131296506.setOnClickListener(null);
        this.view2131296506 = null;
    }
}
