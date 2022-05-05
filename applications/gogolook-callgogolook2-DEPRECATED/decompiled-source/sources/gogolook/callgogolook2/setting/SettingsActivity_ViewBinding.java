package gogolook.callgogolook2.setting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.DescriptionCheckedTextView;
import gogolook.callgogolook2.view.SizedTextView;
import gogolook.callgogolook2.view.ToggleButton;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/SettingsActivity_ViewBinding.class */
public class SettingsActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SettingsActivity f12877a;

    @UiThread
    public SettingsActivity_ViewBinding(SettingsActivity settingsActivity, View view) {
        this.f12877a = settingsActivity;
        settingsActivity.mScrlvWhole = (ScrollView) Utils.findRequiredViewAsType(view, R$id.scrlv_whole, "field 'mScrlvWhole'", ScrollView.class);
        settingsActivity.mLlSuggestedSettings = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_suggest_settings, "field 'mLlSuggestedSettings'", LinearLayout.class);
        settingsActivity.mTopDivider = Utils.findRequiredView(view, R$id.v_top_divider, "field 'mTopDivider'");
        settingsActivity.mTopShadow = Utils.findRequiredView(view, R$id.v_top_shadow, "field 'mTopShadow'");
        settingsActivity.mLnrLayoutFontSize = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_font_size, "field 'mLnrLayoutFontSize'", LinearLayout.class);
        settingsActivity.mTxvFontSize = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_font_size, "field 'mTxvFontSize'", TextView.class);
        settingsActivity.mLnrLayoutRoaming = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_roaming, "field 'mLnrLayoutRoaming'", LinearLayout.class);
        settingsActivity.mTxvRoamingChoose = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_roaming_choose, "field 'mTxvRoamingChoose'", TextView.class);
        settingsActivity.mDividerPhone = Utils.findRequiredView(view, R$id.divider_phone, "field 'mDividerPhone'");
        settingsActivity.mSectionTitlePhone = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.setting_phone, "field 'mSectionTitlePhone'", SizedTextView.class);
        settingsActivity.mLnrLayoutDefaultCallerId = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_default_caller_id, "field 'mLnrLayoutDefaultCallerId'", LinearLayout.class);
        settingsActivity.mTxvDefaultCallerIdTitle = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_default_caller_id_title, "field 'mTxvDefaultCallerIdTitle'", SizedTextView.class);
        settingsActivity.mTxvDefaultCallerIdDesc = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_default_caller_id_desc, "field 'mTxvDefaultCallerIdDesc'", SizedTextView.class);
        settingsActivity.mLnrLayoutDefaultPhone = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_default_phone, "field 'mLnrLayoutDefaultPhone'", LinearLayout.class);
        settingsActivity.mTxvDefaultPhoneTitle = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_default_phone_title, "field 'mTxvDefaultPhoneTitle'", SizedTextView.class);
        settingsActivity.mTxvDefaultPhoneDesc = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_default_phone_desc, "field 'mTxvDefaultPhoneDesc'", SizedTextView.class);
        settingsActivity.mLlInCallScreen = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_incall_screen, "field 'mLlInCallScreen'", LinearLayout.class);
        settingsActivity.mTvInCallScreen = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_incall_screen, "field 'mTvInCallScreen'", TextView.class);
        settingsActivity.mCbInCallScreen = (CheckBox) Utils.findRequiredViewAsType(view, R$id.cb_incall_screen, "field 'mCbInCallScreen'", CheckBox.class);
        settingsActivity.mLnrLayoutDialerShortcut = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_dialer_shortcut, "field 'mLnrLayoutDialerShortcut'", LinearLayout.class);
        settingsActivity.mTxvDialerShortcut = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_dialer_shortcut, "field 'mTxvDialerShortcut'", TextView.class);
        settingsActivity.mLnrLayoutDdd = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_ddd, "field 'mLnrLayoutDdd'", LinearLayout.class);
        settingsActivity.mTxvDdd = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_ddd, "field 'mTxvDdd'", TextView.class);
        settingsActivity.mTxvDddChoose = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_ddd_choose, "field 'mTxvDddChoose'", TextView.class);
        settingsActivity.mCkTxvMissingCallBadge = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_missing_call_badge, "field 'mCkTxvMissingCallBadge'", CheckedTextView.class);
        settingsActivity.mTxvCallConfirm = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_call_confirm, "field 'mTxvCallConfirm'", TextView.class);
        settingsActivity.mCkTxvNewsCenterNotification = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_newscenter_notification, "field 'mCkTxvNewsCenterNotification'", CheckedTextView.class);
        settingsActivity.mCkTxvBlockNotification = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_block_notification, "field 'mCkTxvBlockNotification'", CheckedTextView.class);
        settingsActivity.mCkTxvBlockCallWaiting = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_block_call_waiting, "field 'mCkTxvBlockCallWaiting'", CheckedTextView.class);
        settingsActivity.mTxvGoToBlock = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_go_to_block, "field 'mTxvGoToBlock'", TextView.class);
        settingsActivity.mLnrLayoutInAppDisclosure = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_inapp_disclosure, "field 'mLnrLayoutInAppDisclosure'", LinearLayout.class);
        settingsActivity.mLnrLayoutCallDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_setting_calldialog, "field 'mLnrLayoutCallDialog'", LinearLayout.class);
        settingsActivity.mLnrLayoutStrangerDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_stranger_dialog, "field 'mLnrLayoutStrangerDialog'", LinearLayout.class);
        settingsActivity.mImgvStrangerDialog = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_stranger_dialog, "field 'mImgvStrangerDialog'", ImageView.class);
        settingsActivity.mLnrLayoutContactDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_contact_dialog, "field 'mLnrLayoutContactDialog'", LinearLayout.class);
        settingsActivity.mLnrCtcDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_ctc_dialog, "field 'mLnrCtcDialog'", LinearLayout.class);
        settingsActivity.mImgvContactDialog = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_contact_dialog, "field 'mImgvContactDialog'", ImageView.class);
        settingsActivity.mImgvCtcDialog = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_ctc_dialog, "field 'mImgvCtcDialog'", ImageView.class);
        settingsActivity.mLnrLayoutCallDialogPosition = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_calldialog_position, "field 'mLnrLayoutCallDialogPosition'", LinearLayout.class);
        settingsActivity.mTvCallDialogPosition = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_calldialog_position, "field 'mTvCallDialogPosition'", TextView.class);
        settingsActivity.mTvCallDialogPositionChoose = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_calldialog_position_choose, "field 'mTvCallDialogPositionChoose'", TextView.class);
        settingsActivity.mTextViewDoNotDisturbWhenDriving = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_do_not_disturb_when_driving, "field 'mTextViewDoNotDisturbWhenDriving'", TextView.class);
        settingsActivity.mLlSettingDefaultSmsApp = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnr_settings_default_sms_app, "field 'mLlSettingDefaultSmsApp'", LinearLayout.class);
        settingsActivity.mTxvSmsFeatureTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sms_title, "field 'mTxvSmsFeatureTitle'", TextView.class);
        settingsActivity.mLnrLayoutSmsFeature = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnrlayout_sms_feature, "field 'mLnrLayoutSmsFeature'", LinearLayout.class);
        settingsActivity.mTxvSmsFeatureStatus = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sms_feature_status, "field 'mTxvSmsFeatureStatus'", TextView.class);
        settingsActivity.mTxvAutoFetchMmsImage = (DescriptionCheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_auto_fetch_mms_image, "field 'mTxvAutoFetchMmsImage'", DescriptionCheckedTextView.class);
        settingsActivity.mTxvAutoFetchMmsImageWhenRoaming = (DescriptionCheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_auto_fetch_mms_image_when_roaming, "field 'mTxvAutoFetchMmsImageWhenRoaming'", DescriptionCheckedTextView.class);
        settingsActivity.mLnrLayoutSmsDialog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnr_settings_sms_popup, "field 'mLnrLayoutSmsDialog'", LinearLayout.class);
        settingsActivity.mCkTxvStrangerSms = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_stranger_sms, "field 'mCkTxvStrangerSms'", CheckedTextView.class);
        settingsActivity.mVasSms = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.tv_vas_sms, "field 'mVasSms'", CheckedTextView.class);
        settingsActivity.mCkTxvContactSms = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.cktxv_contact_sms, "field 'mCkTxvContactSms'", CheckedTextView.class);
        settingsActivity.mCkTxvSmsPopupDirectly = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.tv_smsdialog_popup_directly, "field 'mCkTxvSmsPopupDirectly'", CheckedTextView.class);
        settingsActivity.mCkTxvSmsUrlScan = (CheckedTextView) Utils.findRequiredViewAsType(view, R$id.txv_sms_urlscan, "field 'mCkTxvSmsUrlScan'", CheckedTextView.class);
        settingsActivity.mLnrLayoutSmsFilter = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnr_settings_sms_filter, "field 'mLnrLayoutSmsFilter'", LinearLayout.class);
        settingsActivity.mTxvSmsFilter = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sms_filter_title, "field 'mTxvSmsFilter'", TextView.class);
        settingsActivity.mTbSmsFilter = (ToggleButton) Utils.findRequiredViewAsType(view, R$id.tb_enable_sms_filter, "field 'mTbSmsFilter'", ToggleButton.class);
        settingsActivity.mLnrLayoutSyncAndDelete = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.lnr_sync_and_delete, "field 'mLnrLayoutSyncAndDelete'", LinearLayout.class);
        settingsActivity.mTxvSyncTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sync_title, "field 'mTxvSyncTitle'", TextView.class);
        settingsActivity.mTxvSyncSettings = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sync_settings, "field 'mTxvSyncSettings'", TextView.class);
        settingsActivity.mTxvSyncStatus = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_sync_status, "field 'mTxvSyncStatus'", TextView.class);
        settingsActivity.mImgvSyncStatus = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_sync_status, "field 'mImgvSyncStatus'", ImageView.class);
        settingsActivity.mPgwWaiting = (ProgressWheel) Utils.findRequiredViewAsType(view, R$id.pgw_waiting, "field 'mPgwWaiting'", ProgressWheel.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SettingsActivity settingsActivity = this.f12877a;
        if (settingsActivity != null) {
            this.f12877a = null;
            settingsActivity.mScrlvWhole = null;
            settingsActivity.mLlSuggestedSettings = null;
            settingsActivity.mTopDivider = null;
            settingsActivity.mTopShadow = null;
            settingsActivity.mLnrLayoutFontSize = null;
            settingsActivity.mTxvFontSize = null;
            settingsActivity.mLnrLayoutRoaming = null;
            settingsActivity.mTxvRoamingChoose = null;
            settingsActivity.mDividerPhone = null;
            settingsActivity.mSectionTitlePhone = null;
            settingsActivity.mLnrLayoutDefaultCallerId = null;
            settingsActivity.mTxvDefaultCallerIdTitle = null;
            settingsActivity.mTxvDefaultCallerIdDesc = null;
            settingsActivity.mLnrLayoutDefaultPhone = null;
            settingsActivity.mTxvDefaultPhoneTitle = null;
            settingsActivity.mTxvDefaultPhoneDesc = null;
            settingsActivity.mLlInCallScreen = null;
            settingsActivity.mTvInCallScreen = null;
            settingsActivity.mCbInCallScreen = null;
            settingsActivity.mLnrLayoutDialerShortcut = null;
            settingsActivity.mTxvDialerShortcut = null;
            settingsActivity.mLnrLayoutDdd = null;
            settingsActivity.mTxvDdd = null;
            settingsActivity.mTxvDddChoose = null;
            settingsActivity.mCkTxvMissingCallBadge = null;
            settingsActivity.mTxvCallConfirm = null;
            settingsActivity.mCkTxvNewsCenterNotification = null;
            settingsActivity.mCkTxvBlockNotification = null;
            settingsActivity.mCkTxvBlockCallWaiting = null;
            settingsActivity.mTxvGoToBlock = null;
            settingsActivity.mLnrLayoutInAppDisclosure = null;
            settingsActivity.mLnrLayoutCallDialog = null;
            settingsActivity.mLnrLayoutStrangerDialog = null;
            settingsActivity.mImgvStrangerDialog = null;
            settingsActivity.mLnrLayoutContactDialog = null;
            settingsActivity.mLnrCtcDialog = null;
            settingsActivity.mImgvContactDialog = null;
            settingsActivity.mImgvCtcDialog = null;
            settingsActivity.mLnrLayoutCallDialogPosition = null;
            settingsActivity.mTvCallDialogPosition = null;
            settingsActivity.mTvCallDialogPositionChoose = null;
            settingsActivity.mTextViewDoNotDisturbWhenDriving = null;
            settingsActivity.mLlSettingDefaultSmsApp = null;
            settingsActivity.mTxvSmsFeatureTitle = null;
            settingsActivity.mLnrLayoutSmsFeature = null;
            settingsActivity.mTxvSmsFeatureStatus = null;
            settingsActivity.mTxvAutoFetchMmsImage = null;
            settingsActivity.mTxvAutoFetchMmsImageWhenRoaming = null;
            settingsActivity.mLnrLayoutSmsDialog = null;
            settingsActivity.mCkTxvStrangerSms = null;
            settingsActivity.mVasSms = null;
            settingsActivity.mCkTxvContactSms = null;
            settingsActivity.mCkTxvSmsPopupDirectly = null;
            settingsActivity.mCkTxvSmsUrlScan = null;
            settingsActivity.mLnrLayoutSmsFilter = null;
            settingsActivity.mTxvSmsFilter = null;
            settingsActivity.mTbSmsFilter = null;
            settingsActivity.mLnrLayoutSyncAndDelete = null;
            settingsActivity.mTxvSyncTitle = null;
            settingsActivity.mTxvSyncSettings = null;
            settingsActivity.mTxvSyncStatus = null;
            settingsActivity.mImgvSyncStatus = null;
            settingsActivity.mPgwWaiting = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
