package com.privacystar.core.p011ui.detail_view.settings;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\t\u0018��2\u00020\u0001:\u0007\u0003\u0004\u0005\u0006\u0007\b\tB\u0005¢\u0006\u0002\u0010\u0002¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract;", "", "()V", "Manager", "Model", "OnAddBlockGroupCompleteListener", "OnAddBlockGroupListener", "OnUnblockClickListener", "Switches", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract.class */
public final class BasicSettingsContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Manager;", "", "doesContainProtectionLevels", "", "shouldShowOptionVoicemail", "shouldShowSettingSavedSnackbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Manager.class */
    public interface Manager {
        boolean doesContainProtectionLevels();

        boolean shouldShowOptionVoicemail();

        boolean shouldShowSettingSavedSnackbar();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u0003H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0003H&J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\b\u0010$\u001a\u00020\u0015H&J\u0010\u0010%\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010&\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010'\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\b\u0010(\u001a\u00020\u0015H&J\u0010\u0010)\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0003H&J\b\u0010*\u001a\u00020\u0003H&J\b\u0010+\u001a\u00020\u0003H&J\b\u0010,\u001a\u00020\u0003H&J\b\u0010-\u001a\u00020\u0003H&J\b\u0010.\u001a\u00020\u0003H&J\b\u0010/\u001a\u00020\u0003H&J\b\u00100\u001a\u00020\u0003H&J\b\u00101\u001a\u00020\u0003H&J\u0010\u00102\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u00103\u001a\u00020\u0003H&J\b\u00104\u001a\u00020\u0003H&J\b\u00105\u001a\u00020\u0003H&¨\u00066"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model;", "", "canUseProtectionLevel", "", FirebaseAnalytics.Param.LEVEL, "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "getGroupBlockingList", "", "Lcom/privacystar/core/data/model/GroupBlock;", "getProtectionLevel", "", "isFeatureCallCenterAvailable", "isFeatureGroupBlockingAvailable", "isFeaturePostCallNotificationsAvailable", "isFeatureSpoofingAvailable", "isFeatureUnknownBlockingAvailable", "isFeatureVoicemailAvailable", "isNumberVerified", "isProtectionLevelSetup", "isSubscriptionOnGoing", "removeBlockingGroup", "", "blockGroup", "", "saveApplicationEnabled", "isEnabled", "saveBlockingGroup", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupCompleteListener;", "saveCallCenterEnabled", "saveDashboardNotificationsEnabled", "saveGroupBlockingEnabled", "saveNumberVerification", "isVerifying", "isSkipped", "savePostCallNotificationsEnabled", "saveProtectionLevelSetting", "saveSendToVoicemailEnabled", "saveShouldShowSavedSnack", "saveSpoofBlockingEnabled", "saveSpoofSettingShowed", "saveUnknownBlockingEnabled", "savedFeatureCallCenter", "savedFeatureDashboardNotification", "savedFeatureGroupBlocking", "savedFeaturePSService", "savedFeaturePostCallNotification", "savedFeatureSendToVoicemail", "savedFeatureSpoofing", "savedFeatureUnknownBlocking", "setProtectionLevel", "shouldJumpToSpoofingSetting", "shouldShowFullUX", "shouldShowSavedSnack", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$Model */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model.class */
    public interface Model {
        boolean canUseProtectionLevel(@NotNull ProtectionLevel protectionLevel);

        @NotNull
        List<GroupBlock> getGroupBlockingList();

        int getProtectionLevel();

        boolean isFeatureCallCenterAvailable();

        boolean isFeatureGroupBlockingAvailable();

        boolean isFeaturePostCallNotificationsAvailable();

        boolean isFeatureSpoofingAvailable();

        boolean isFeatureUnknownBlockingAvailable();

        boolean isFeatureVoicemailAvailable();

        boolean isNumberVerified();

        boolean isProtectionLevelSetup();

        boolean isSubscriptionOnGoing();

        void removeBlockingGroup(@NotNull String str);

        void saveApplicationEnabled(boolean z);

        void saveBlockingGroup(@NotNull String str, @NotNull OnAddBlockGroupCompleteListener onAddBlockGroupCompleteListener);

        void saveCallCenterEnabled(boolean z);

        void saveDashboardNotificationsEnabled(boolean z);

        void saveGroupBlockingEnabled(boolean z);

        void saveNumberVerification(boolean z, boolean z2);

        void savePostCallNotificationsEnabled(boolean z);

        void saveProtectionLevelSetting();

        void saveSendToVoicemailEnabled(boolean z);

        void saveShouldShowSavedSnack(boolean z);

        void saveSpoofBlockingEnabled(boolean z);

        void saveSpoofSettingShowed();

        void saveUnknownBlockingEnabled(boolean z);

        boolean savedFeatureCallCenter();

        boolean savedFeatureDashboardNotification();

        boolean savedFeatureGroupBlocking();

        boolean savedFeaturePSService();

        boolean savedFeaturePostCallNotification();

        boolean savedFeatureSendToVoicemail();

        boolean savedFeatureSpoofing();

        boolean savedFeatureUnknownBlocking();

        void setProtectionLevel(@NotNull ProtectionLevel protectionLevel);

        boolean shouldJumpToSpoofingSetting();

        boolean shouldShowFullUX();

        boolean shouldShowSavedSnack();
    }

    @FunctionalInterface
    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bg\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupCompleteListener;", "", "onAddBlockGroupComplete", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$OnAddBlockGroupCompleteListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupCompleteListener.class */
    public interface OnAddBlockGroupCompleteListener {
        void onAddBlockGroupComplete();
    }

    @FunctionalInterface
    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\bg\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupListener;", "", "onAddBlockGroup", "", "blockGroup", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$OnAddBlockGroupListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupListener.class */
    public interface OnAddBlockGroupListener {
        void onAddBlockGroup(@NotNull String str);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener;", "", "onUnblock", "", "number", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$OnUnblockClickListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener.class */
    public interface OnUnblockClickListener {
        void onUnblock(@NotNull String str);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Switches;", "", "(Ljava/lang/String;I)V", "CALL_CENTER_SWITCH", "POST_CALL_NOTIFICATION_SWITCH", "UNKNOWN_NUMBER_SWITCH", "SPOOFING_SWITCH", "SEND_TO_VOICEMAIL_SWITCH", "DASHBOARD_SWITCH", "GROUP_BLOCKING", "NONE", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$Switches */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Switches.class */
    public enum Switches {
        CALL_CENTER_SWITCH,
        POST_CALL_NOTIFICATION_SWITCH,
        UNKNOWN_NUMBER_SWITCH,
        SPOOFING_SWITCH,
        SEND_TO_VOICEMAIL_SWITCH,
        DASHBOARD_SWITCH,
        GROUP_BLOCKING,
        NONE
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&J\b\u0010\u000f\u001a\u00020\u0005H&J\b\u0010\u0010\u001a\u00020\u0003H&J\b\u0010\u0011\u001a\u00020\u0003H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0003H&J\b\u0010\u0017\u001a\u00020\u0003H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0016\u0010\u001b\u001a\u00020\u00032\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH&J\b\u0010\u001f\u001a\u00020\u0003H&J\b\u0010 \u001a\u00020\u0003H&J\b\u0010!\u001a\u00020\u0003H&J\b\u0010\"\u001a\u00020\u0003H&J\b\u0010#\u001a\u00020\u0003H&J\b\u0010$\u001a\u00020\u0003H&J\b\u0010%\u001a\u00020\u0003H&J\b\u0010&\u001a\u00020\u0003H&J\b\u0010'\u001a\u00020\u0003H&J\b\u0010(\u001a\u00020\u0003H&J\b\u0010)\u001a\u00020\u0003H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010+\u001a\u00020\u0003H&J\b\u0010,\u001a\u00020\u0003H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0005H&J\u0012\u0010/\u001a\u00020\u00032\b\b\u0002\u00100\u001a\u000201H&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0005H&J\u0018\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0005H&¨\u00066"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View;", "", "addSendToVoiceMailOption", "", "isChecked", "", "enableFeatureCallCenter", "isEnabled", "enableFeatureDashboardNotification", "enableFeatureGroupBlocking", "enableFeatureNeighborhoodSpoofing", "enableFeaturePostCallNotifications", "enableFeatureSendToVoicemail", "enableFeatureUnknownBlocking", "enableGroupBlockingUI", "hasOverlayPermission", "hideNonActiveUxViews", "jumpToNeighborhoodSpoofingSetting", "launchAddGroupBlockingDialog", "launchCustomSettings", "launchOverlayPermissionSettings", "launchStateSettings", "launchSubscribe", "refreshGroupBlockList", "selectRadioButton", FirebaseAnalytics.Param.LEVEL, "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "setupGroupBlockingList", "list", "", "Lcom/privacystar/core/data/model/GroupBlock;", "setupHeaderForNumberVerification", "setupHeaderForPermissions", "setupHeaderHide", "setupListenerCallCenter", "setupListenerDashboardNotification", "setupListenerGroupBlocking", "setupListenerPostCallNotification", "setupListenerPsService", "setupListenerSendToVoicemail", "setupListenerSpoofing", "setupListenerUnknownNumber", "setupPsServiceSelection", "setupToolbar", "showCustomProtectionLevelAsRadioButton", "showPsServicesDisableDialog", "snackBar", "showSettingsSavedSnackbar", "callBackForSwitch", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Switches;", "togglePSServiceSwitchAndShowSnackbar", "toggleSwitchWithListeners", "switch", BlockingOptionsContract.BlockingOptionsEntry.COLUMN_CHECKED, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View.class */
    public interface View {

        @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
        /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsContract$View$DefaultImpls */
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View$DefaultImpls.class */
        public static final class DefaultImpls {
            public static /* synthetic */ void showSettingsSavedSnackbar$default(View view, Switches switches, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showSettingsSavedSnackbar");
                }
                if ((i & 1) != 0) {
                    switches = Switches.NONE;
                }
                view.showSettingsSavedSnackbar(switches);
            }
        }

        void addSendToVoiceMailOption(boolean z);

        void enableFeatureCallCenter(boolean z);

        void enableFeatureDashboardNotification(boolean z);

        void enableFeatureGroupBlocking(boolean z);

        void enableFeatureNeighborhoodSpoofing(boolean z);

        void enableFeaturePostCallNotifications(boolean z);

        void enableFeatureSendToVoicemail(boolean z);

        void enableFeatureUnknownBlocking(boolean z);

        void enableGroupBlockingUI(boolean z);

        boolean hasOverlayPermission();

        void hideNonActiveUxViews();

        void jumpToNeighborhoodSpoofingSetting();

        void launchAddGroupBlockingDialog();

        void launchCustomSettings();

        void launchOverlayPermissionSettings();

        void launchStateSettings();

        void launchSubscribe();

        void refreshGroupBlockList();

        void selectRadioButton(@NotNull ProtectionLevel protectionLevel);

        void setupGroupBlockingList(@NotNull List<? extends GroupBlock> list);

        void setupHeaderForNumberVerification();

        void setupHeaderForPermissions();

        void setupHeaderHide();

        void setupListenerCallCenter();

        void setupListenerDashboardNotification();

        void setupListenerGroupBlocking();

        void setupListenerPostCallNotification();

        void setupListenerPsService();

        void setupListenerSendToVoicemail();

        void setupListenerSpoofing();

        void setupListenerUnknownNumber();

        void setupPsServiceSelection(boolean z);

        void setupToolbar();

        void showCustomProtectionLevelAsRadioButton();

        void showPsServicesDisableDialog(boolean z);

        void showSettingsSavedSnackbar(@NotNull Switches switches);

        void togglePSServiceSwitchAndShowSnackbar(boolean z);

        void toggleSwitchWithListeners(@NotNull Switches switches, boolean z);
    }
}
