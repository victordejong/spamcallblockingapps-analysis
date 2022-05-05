package com.privacystar.core.p011ui.detail_view.settings;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.text.HtmlCompat;
import android.support.p001v4.widget.NestedScrollView;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.Toolbar;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsFragment;
import com.privacystar.core.p011ui.widgets.GroupBlockingAddDialog;
import com.privacystar.core.p011ui.widgets.OverlayPermissionDialog;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.p011ui.widgets.UntogglableSwitch;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.Device;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import com.rey.material.widget.RadioButton;
import com.rey.material.widget.Switch;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��É\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001b*\u0001\u000e\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020>2\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010D\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010F\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010G\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010H\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010I\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010J\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010K\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\u0010\u0010L\u001a\u00020>2\u0006\u0010E\u001a\u00020@H\u0016J\b\u0010M\u001a\u00020NH\u0014J\u0012\u0010O\u001a\u0004\u0018\u00010\f2\u0006\u0010P\u001a\u00020QH\u0002J\u0016\u0010R\u001a\b\u0012\u0004\u0012\u00020>0S2\u0006\u0010P\u001a\u00020QH\u0002J\u0012\u0010T\u001a\u0004\u0018\u00010\n2\u0006\u0010P\u001a\u00020QH\u0002J\b\u0010U\u001a\u00020@H\u0016J\b\u0010V\u001a\u00020>H\u0016J\b\u0010W\u001a\u00020>H\u0016J\b\u0010X\u001a\u00020>H\u0016J\b\u0010Y\u001a\u00020>H\u0016J\b\u0010Z\u001a\u00020>H\u0016J\b\u0010[\u001a\u00020>H\u0016J\b\u0010\\\u001a\u00020>H\u0016J\b\u0010]\u001a\u00020\u0001H\u0016J\u0012\u0010^\u001a\u00020>2\b\u0010_\u001a\u0004\u0018\u00010`H\u0016J&\u0010a\u001a\u0004\u0018\u00010C2\u0006\u0010b\u001a\u00020c2\b\u0010d\u001a\u0004\u0018\u00010e2\b\u0010_\u001a\u0004\u0018\u00010`H\u0016J\b\u0010f\u001a\u00020>H\u0016J\u0010\u0010g\u001a\u00020>2\u0006\u0010B\u001a\u00020CH\u0002J\b\u0010h\u001a\u00020>H\u0002J\b\u0010i\u001a\u00020>H\u0016J\b\u0010j\u001a\u00020>H\u0016J\u0018\u0010k\u001a\u00020>2\u0006\u0010l\u001a\u00020*2\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010m\u001a\u00020>2\u0006\u0010n\u001a\u00020oH\u0016J\u0006\u0010p\u001a\u00020>J\u0016\u0010q\u001a\u00020>2\f\u0010r\u001a\b\u0012\u0004\u0012\u00020t0sH\u0016J\b\u0010u\u001a\u00020>H\u0016J\b\u0010v\u001a\u00020>H\u0016J\b\u0010w\u001a\u00020>H\u0016J\b\u0010x\u001a\u00020>H\u0016J\b\u0010y\u001a\u00020>H\u0016J\b\u0010z\u001a\u00020>H\u0016J\b\u0010{\u001a\u00020>H\u0016J\b\u0010|\u001a\u00020>H\u0016J\b\u0010}\u001a\u00020>H\u0016J\b\u0010~\u001a\u00020>H\u0016J\b\u0010\u007f\u001a\u00020>H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0016J\t\u0010\u0081\u0001\u001a\u00020>H\u0002J\t\u0010\u0082\u0001\u001a\u00020>H\u0016J\t\u0010\u0083\u0001\u001a\u00020>H\u0016J\t\u0010\u0084\u0001\u001a\u00020>H\u0002J\u0012\u0010\u0085\u0001\u001a\u00020>2\u0007\u0010\u0086\u0001\u001a\u00020@H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020>2\u0007\u0010\u0088\u0001\u001a\u00020QH\u0016J\u0012\u0010\u0089\u0001\u001a\u00020>2\u0007\u0010\u0086\u0001\u001a\u00020@H\u0016J$\u0010\u008a\u0001\u001a\u00020>2\u0007\u0010\u008b\u0001\u001a\u00020\n2\u0007\u0010\u008c\u0001\u001a\u00020@2\u0007\u0010\u008d\u0001\u001a\u00020@H\u0002J\u001b\u0010\u008e\u0001\u001a\u00020>2\u0007\u0010\u008b\u0001\u001a\u00020Q2\u0007\u0010\u008c\u0001\u001a\u00020@H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082.¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020#X\u0082.¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070&X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020*X\u0082.¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u000e\u0010/\u001a\u000200X\u0082.¢\u0006\u0002\n��R\u000e\u00101\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u000e\u00106\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020\nX\u0082.¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010;\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��R\u000e\u0010<\u001a\u00020\nX\u0082.¢\u0006\u0002\n��¨\u0006\u008f\u0001"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View;", "()V", "basicContainer", "Landroid/widget/LinearLayout;", "basicRadio", "Lcom/rey/material/widget/RadioButton;", "callCenterContainer", "callCenterSwitch", "Lcom/rey/material/widget/Switch;", "clickSwitches", "Landroid/view/View$OnClickListener;", "controlClickListener", "com/privacystar/core/ui/detail_view/settings/BasicSettingsFragment$controlClickListener$1", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsFragment$controlClickListener$1;", "customButton", "Landroid/widget/TextView;", "customContainer", "customProtectionWithRadioButtonContainer", "customPrtRadio", "cydButton", "Landroid/widget/Button;", "cydContainer", "Landroid/widget/RelativeLayout;", "cydMessage", "dashboardNotifContainer", "dashboardNotifSwitch", "enhancedContainer", "enhancedRadio", "groupBlockingAddButton", "groupBlockingContainer", "groupBlockingList", "Landroid/support/v7/widget/RecyclerView;", "groupBlockingListAdapter", "Lcom/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter;", "groupBlockingSwitch", "listOfRadioButtons", "", "maxContainer", "maxRadio", "nestedScrollView", "Landroid/support/v4/widget/NestedScrollView;", "notificationContainer", "onCydResponseClick", "onPsServiceSwitchClick", "postCallNotificationsSwitch", "presenter", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter;", "psServiceSwitch", "Lcom/privacystar/core/ui/widgets/UntogglableSwitch;", "sendToVoicemailContainer", "sendToVoicemailDivider", "sendToVoicemailSwitch", "serviceContainer", "spoofProtectionContainer", "spoofingSwitch", "stateButtonContainer", "suppressibleUx", "unknownContainer", "unknownSwitch", "addSendToVoiceMailOption", "", "isChecked", "", "blinkAnimateView", Promotion.ACTION_VIEW, "Landroid/view/View;", "enableFeatureCallCenter", "isEnabled", "enableFeatureDashboardNotification", "enableFeatureGroupBlocking", "enableFeatureNeighborhoodSpoofing", "enableFeaturePostCallNotifications", "enableFeatureSendToVoicemail", "enableFeatureUnknownBlocking", "enableGroupBlockingUI", "getLayoutResId", "", "getSwitchCallBack", "forSwitch", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Switches;", "getSwitchListenerSetup", "Lkotlin/Function0;", "getSwitchView", "hasOverlayPermission", "hideNonActiveUxViews", "jumpToNeighborhoodSpoofingSetting", "launchAddGroupBlockingDialog", "launchCustomSettings", "launchOverlayPermissionSettings", "launchStateSettings", "launchSubscribe", "newInstance", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onPause", "onProtectionLevelClick", "onPsServiceClick", "onResume", "refreshGroupBlockList", "scrollAnimation", "scrollViewParent", "selectRadioButton", FirebaseAnalytics.Param.LEVEL, "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "setupFeatureClickListeners", "setupGroupBlockingList", "list", "", "Lcom/privacystar/core/data/model/GroupBlock;", "setupHeaderForNumberVerification", "setupHeaderForPermissions", "setupHeaderHide", "setupListenerCallCenter", "setupListenerDashboardNotification", "setupListenerGroupBlocking", "setupListenerPostCallNotification", "setupListenerPsService", "setupListenerSendToVoicemail", "setupListenerSpoofing", "setupListenerUnknownNumber", "setupPsServiceSelection", "setupRadioButtonsAndListeners", "setupToolbar", "showCustomProtectionLevelAsRadioButton", "showPSServiceSavedSnackbar", "showPsServicesDisableDialog", "snackBar", "showSettingsSavedSnackbar", "callBackForSwitch", "togglePSServiceSwitchAndShowSnackbar", "toggleSwitch", "switch", BlockingOptionsContract.BlockingOptionsEntry.COLUMN_CHECKED, "immediate", "toggleSwitchWithListeners", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsFragment.class */
public final class BasicSettingsFragment extends DetailFragment implements BasicSettingsContract.View {
    private HashMap _$_findViewCache;
    private LinearLayout basicContainer;
    private RadioButton basicRadio;
    private LinearLayout callCenterContainer;
    private Switch callCenterSwitch;
    private TextView customButton;
    private LinearLayout customContainer;
    private LinearLayout customProtectionWithRadioButtonContainer;
    private RadioButton customPrtRadio;
    private Button cydButton;
    private RelativeLayout cydContainer;
    private TextView cydMessage;
    private LinearLayout dashboardNotifContainer;
    private Switch dashboardNotifSwitch;
    private LinearLayout enhancedContainer;
    private RadioButton enhancedRadio;
    private Button groupBlockingAddButton;
    private LinearLayout groupBlockingContainer;
    private RecyclerView groupBlockingList;
    private GroupBlockingListAdapter groupBlockingListAdapter;
    private Switch groupBlockingSwitch;
    private LinearLayout maxContainer;
    private RadioButton maxRadio;
    private NestedScrollView nestedScrollView;
    private LinearLayout notificationContainer;
    private Switch postCallNotificationsSwitch;
    private BasicSettingsPresenter presenter;
    private UntogglableSwitch psServiceSwitch;
    private LinearLayout sendToVoicemailContainer;
    private LinearLayout sendToVoicemailDivider;
    private Switch sendToVoicemailSwitch;
    private LinearLayout serviceContainer;
    private LinearLayout spoofProtectionContainer;
    private Switch spoofingSwitch;
    private LinearLayout stateButtonContainer;
    private LinearLayout suppressibleUx;
    private LinearLayout unknownContainer;
    private Switch unknownSwitch;
    private List<RadioButton> listOfRadioButtons = new ArrayList();
    private final BasicSettingsFragment$controlClickListener$1 controlClickListener = new View.OnTouchListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$controlClickListener$1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(event, "event");
            boolean z = true;
            if (event.getAction() != 1) {
                z = false;
            } else {
                v.callOnClick();
            }
            return z;
        }
    };
    private final View.OnClickListener onCydResponseClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$onCydResponseClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onCydResponseClicked();
        }
    };
    private final View.OnClickListener clickSwitches = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$clickSwitches$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            switch (view.getId()) {
                case C1566R.C1569id.protection_setup_call_center_container /* 2131297064 */:
                    BasicSettingsFragment.access$getCallCenterSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.protection_setup_notifications_container /* 2131297090 */:
                    BasicSettingsFragment.access$getPostCallNotificationsSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.protection_setup_service_container /* 2131297092 */:
                    BasicSettingsFragment.this.onPsServiceClick();
                    return;
                case C1566R.C1569id.protection_setup_spoofing_container /* 2131297093 */:
                    BasicSettingsFragment.access$getSpoofingSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.protection_setup_unknown_container /* 2131297100 */:
                    BasicSettingsFragment.access$getUnknownSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.send_to_voicemail_container /* 2131297229 */:
                    BasicSettingsFragment.access$getSendToVoicemailSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.settings_dashboard_notif_container /* 2131297240 */:
                    BasicSettingsFragment.access$getDashboardNotifSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                case C1566R.C1569id.settings_fragment_group_blocking_container /* 2131297249 */:
                    BasicSettingsFragment.access$getGroupBlockingSwitch$p(BasicSettingsFragment.this).toggle();
                    return;
                default:
                    return;
            }
        }
    };
    private final View.OnClickListener onPsServiceSwitchClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$onPsServiceSwitchClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            BasicSettingsFragment.this.onPsServiceClick();
        }
    };

    @NotNull
    public static final /* synthetic */ Switch access$getCallCenterSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.callCenterSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callCenterSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getDashboardNotifSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.dashboardNotifSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getGroupBlockingSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.groupBlockingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ NestedScrollView access$getNestedScrollView$p(BasicSettingsFragment basicSettingsFragment) {
        NestedScrollView nestedScrollView = basicSettingsFragment.nestedScrollView;
        if (nestedScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nestedScrollView");
        }
        return nestedScrollView;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getPostCallNotificationsSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.postCallNotificationsSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postCallNotificationsSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ BasicSettingsPresenter access$getPresenter$p(BasicSettingsFragment basicSettingsFragment) {
        BasicSettingsPresenter basicSettingsPresenter = basicSettingsFragment.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        return basicSettingsPresenter;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getSendToVoicemailSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.sendToVoicemailSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ LinearLayout access$getSpoofProtectionContainer$p(BasicSettingsFragment basicSettingsFragment) {
        LinearLayout linearLayout = basicSettingsFragment.spoofProtectionContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofProtectionContainer");
        }
        return linearLayout;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getSpoofingSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.spoofingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofingSwitch");
        }
        return r0;
    }

    @NotNull
    public static final /* synthetic */ Switch access$getUnknownSwitch$p(BasicSettingsFragment basicSettingsFragment) {
        Switch r0 = basicSettingsFragment.unknownSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unknownSwitch");
        }
        return r0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void blinkAnimateView(View view) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(750L);
        alphaAnimation.setInterpolator(new LinearInterpolator());
        alphaAnimation.setRepeatCount(4);
        alphaAnimation.setRepeatMode(2);
        view.startAnimation(alphaAnimation);
    }

    private final View.OnClickListener getSwitchCallBack(BasicSettingsContract.Switches switches) {
        final Switch switchView = getSwitchView(switches);
        return switchView != null ? new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$getSwitchCallBack$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Switch.this.toggle();
            }
        } : null;
    }

    private final Function0<Unit> getSwitchListenerSetup(BasicSettingsContract.Switches switches) {
        BasicSettingsFragment$getSwitchListenerSetup$1 basicSettingsFragment$getSwitchListenerSetup$1;
        switch (switches) {
            case CALL_CENTER_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$1(this);
                break;
            case POST_CALL_NOTIFICATION_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$2(this);
                break;
            case UNKNOWN_NUMBER_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$3(this);
                break;
            case SPOOFING_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$4(this);
                break;
            case SEND_TO_VOICEMAIL_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$5(this);
                break;
            case DASHBOARD_SWITCH:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$6(this);
                break;
            case GROUP_BLOCKING:
                basicSettingsFragment$getSwitchListenerSetup$1 = new BasicSettingsFragment$getSwitchListenerSetup$7(this);
                break;
            case NONE:
                basicSettingsFragment$getSwitchListenerSetup$1 = BasicSettingsFragment$getSwitchListenerSetup$8.INSTANCE;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return basicSettingsFragment$getSwitchListenerSetup$1;
    }

    private final Switch getSwitchView(BasicSettingsContract.Switches switches) {
        Switch r4;
        switch (switches) {
            case CALL_CENTER_SWITCH:
                Switch r0 = this.callCenterSwitch;
                r4 = r0;
                if (r0 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callCenterSwitch");
                    r4 = r0;
                    break;
                }
                break;
            case POST_CALL_NOTIFICATION_SWITCH:
                Switch r02 = this.postCallNotificationsSwitch;
                r4 = r02;
                if (r02 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("postCallNotificationsSwitch");
                    r4 = r02;
                    break;
                }
                break;
            case UNKNOWN_NUMBER_SWITCH:
                Switch r03 = this.unknownSwitch;
                r4 = r03;
                if (r03 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("unknownSwitch");
                    r4 = r03;
                    break;
                }
                break;
            case SPOOFING_SWITCH:
                Switch r04 = this.spoofingSwitch;
                r4 = r04;
                if (r04 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("spoofingSwitch");
                    r4 = r04;
                    break;
                }
                break;
            case SEND_TO_VOICEMAIL_SWITCH:
                Switch r05 = this.sendToVoicemailSwitch;
                r4 = r05;
                if (r05 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailSwitch");
                    r4 = r05;
                    break;
                }
                break;
            case DASHBOARD_SWITCH:
                Switch r06 = this.dashboardNotifSwitch;
                r4 = r06;
                if (r06 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifSwitch");
                    r4 = r06;
                    break;
                }
                break;
            case GROUP_BLOCKING:
                Switch r07 = this.groupBlockingSwitch;
                r4 = r07;
                if (r07 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("groupBlockingSwitch");
                    r4 = r07;
                    break;
                }
                break;
            case NONE:
                r4 = null;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return r4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onProtectionLevelClick(View view) {
        RadioButton radioButton = this.basicRadio;
        if (radioButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        if (!Intrinsics.areEqual(view, radioButton)) {
            LinearLayout linearLayout = this.basicContainer;
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("basicContainer");
            }
            if (!Intrinsics.areEqual(view, linearLayout)) {
                RadioButton radioButton2 = this.enhancedRadio;
                if (radioButton2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
                }
                if (!Intrinsics.areEqual(view, radioButton2)) {
                    LinearLayout linearLayout2 = this.enhancedContainer;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("enhancedContainer");
                    }
                    if (!Intrinsics.areEqual(view, linearLayout2)) {
                        RadioButton radioButton3 = this.maxRadio;
                        if (radioButton3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
                        }
                        if (!Intrinsics.areEqual(view, radioButton3)) {
                            LinearLayout linearLayout3 = this.maxContainer;
                            if (linearLayout3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("maxContainer");
                            }
                            if (!Intrinsics.areEqual(view, linearLayout3)) {
                                RadioButton radioButton4 = this.customPrtRadio;
                                if (radioButton4 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("customPrtRadio");
                                }
                                if (!Intrinsics.areEqual(view, radioButton4)) {
                                    LinearLayout linearLayout4 = this.customProtectionWithRadioButtonContainer;
                                    if (linearLayout4 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("customProtectionWithRadioButtonContainer");
                                    }
                                    if (!Intrinsics.areEqual(view, linearLayout4)) {
                                        return;
                                    }
                                }
                                BasicSettingsPresenter basicSettingsPresenter = this.presenter;
                                if (basicSettingsPresenter == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                                }
                                basicSettingsPresenter.onProtectionLevelSelected(ProtectionLevel.CUSTOM);
                                return;
                            }
                        }
                        BasicSettingsPresenter basicSettingsPresenter2 = this.presenter;
                        if (basicSettingsPresenter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("presenter");
                        }
                        basicSettingsPresenter2.onProtectionLevelSelected(ProtectionLevel.MAXIMUM);
                        return;
                    }
                }
                BasicSettingsPresenter basicSettingsPresenter3 = this.presenter;
                if (basicSettingsPresenter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("presenter");
                }
                basicSettingsPresenter3.onProtectionLevelSelected(ProtectionLevel.ENHANCED);
                return;
            }
        }
        BasicSettingsPresenter basicSettingsPresenter4 = this.presenter;
        if (basicSettingsPresenter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        basicSettingsPresenter4.onProtectionLevelSelected(ProtectionLevel.BASIC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPsServiceClick() {
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        UntogglableSwitch untogglableSwitch = this.psServiceSwitch;
        if (untogglableSwitch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("psServiceSwitch");
        }
        basicSettingsPresenter.onAllServicesClicked(untogglableSwitch.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scrollAnimation(NestedScrollView nestedScrollView, View view) {
        DetailActivity detailActivity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(detailActivity, "this.activity");
        WindowManager windowManager = detailActivity.getWindowManager();
        Intrinsics.checkExpressionValueIsNotNull(windowManager, "this.activity.windowManager");
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Intrinsics.checkExpressionValueIsNotNull(defaultDisplay, "this.activity.windowManager.defaultDisplay");
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i = point.y;
        int top = view.getTop();
        int i2 = i / 2;
        int height = view.getHeight() / 2;
        DetailActivity detailActivity2 = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(detailActivity2, "this.activity");
        Toolbar toolbar = (Toolbar) detailActivity2.findViewById(C1566R.C1569id.toolbar);
        Intrinsics.checkExpressionValueIsNotNull(toolbar, "this.activity.toolbar");
        int height2 = (top - i2) + height + toolbar.getHeight();
        Timber.m37d("Scrolling to y=" + height2, new Object[0]);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(nestedScrollView, "scrollY", height2);
        Intrinsics.checkExpressionValueIsNotNull(ofInt, "ObjectAnimator.ofInt(scr…rent, \"scrollY\", scrollY)");
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(1000L);
        animatorSet.play(ofInt);
        animatorSet.start();
    }

    private final void setupRadioButtonsAndListeners() {
        List<RadioButton> list = this.listOfRadioButtons;
        RadioButton radioButton = this.basicRadio;
        if (radioButton == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        list.add(radioButton);
        List<RadioButton> list2 = this.listOfRadioButtons;
        RadioButton radioButton2 = this.enhancedRadio;
        if (radioButton2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        list2.add(radioButton2);
        List<RadioButton> list3 = this.listOfRadioButtons;
        RadioButton radioButton3 = this.maxRadio;
        if (radioButton3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
        }
        list3.add(radioButton3);
        List<RadioButton> list4 = this.listOfRadioButtons;
        RadioButton radioButton4 = this.customPrtRadio;
        if (radioButton4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customPrtRadio");
        }
        list4.add(radioButton4);
        RadioButton radioButton5 = this.basicRadio;
        if (radioButton5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        radioButton5.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout = this.basicContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicContainer");
        }
        linearLayout.setOnTouchListener(this.controlClickListener);
        RadioButton radioButton6 = this.enhancedRadio;
        if (radioButton6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        radioButton6.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout2 = this.enhancedContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedContainer");
        }
        linearLayout2.setOnTouchListener(this.controlClickListener);
        RadioButton radioButton7 = this.maxRadio;
        if (radioButton7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
        }
        radioButton7.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout3 = this.maxContainer;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxContainer");
        }
        linearLayout3.setOnTouchListener(this.controlClickListener);
        RadioButton radioButton8 = this.customPrtRadio;
        if (radioButton8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customPrtRadio");
        }
        radioButton8.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout4 = this.customProtectionWithRadioButtonContainer;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customProtectionWithRadioButtonContainer");
        }
        linearLayout4.setOnTouchListener(this.controlClickListener);
        RadioButton radioButton9 = this.basicRadio;
        if (radioButton9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
        }
        radioButton9.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout5 = this.basicContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("basicContainer");
        }
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        RadioButton radioButton10 = this.enhancedRadio;
        if (radioButton10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
        }
        radioButton10.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout6 = this.enhancedContainer;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("enhancedContainer");
        }
        linearLayout6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        RadioButton radioButton11 = this.maxRadio;
        if (radioButton11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
        }
        radioButton11.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout7 = this.maxContainer;
        if (linearLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("maxContainer");
        }
        linearLayout7.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        RadioButton radioButton12 = this.customPrtRadio;
        if (radioButton12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customPrtRadio");
        }
        radioButton12.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$7
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
        LinearLayout linearLayout8 = this.customProtectionWithRadioButtonContainer;
        if (linearLayout8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customProtectionWithRadioButtonContainer");
        }
        linearLayout8.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupRadioButtonsAndListeners$8
            @Override // android.view.View.OnClickListener
            public final void onClick(View v) {
                BasicSettingsFragment basicSettingsFragment = BasicSettingsFragment.this;
                Intrinsics.checkExpressionValueIsNotNull(v, "v");
                basicSettingsFragment.onProtectionLevelClick(v);
            }
        });
    }

    private final void showPSServiceSavedSnackbar() {
        if (getContext() != null) {
            PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
            NestedScrollView basic_settings_nested_sv = (NestedScrollView) _$_findCachedViewById(C1566R.C1569id.basic_settings_nested_sv);
            Intrinsics.checkExpressionValueIsNotNull(basic_settings_nested_sv, "basic_settings_nested_sv");
            NestedScrollView nestedScrollView = basic_settings_nested_sv;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            pSSnackBars.getSettingsSnackBar(nestedScrollView, context, new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$showPSServiceSavedSnackbar$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BasicSettingsFragment.this.onPsServiceClick();
                }
            }).show();
        }
    }

    private final void toggleSwitch(Switch r4, boolean z, boolean z2) {
        if (z2) {
            r4.setCheckedImmediately(z);
        } else {
            r4.setChecked(z);
        }
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

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void addSendToVoiceMailOption(boolean z) {
        LinearLayout linearLayout = this.sendToVoicemailContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailContainer");
        }
        linearLayout.setVisibility(0);
        LinearLayout linearLayout2 = this.sendToVoicemailDivider;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailDivider");
        }
        linearLayout2.setVisibility(0);
        Switch r0 = this.sendToVoicemailSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailSwitch");
        }
        r0.setChecked(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureCallCenter(boolean z) {
        Timber.m37d("is Call Center enabled?: " + z, new Object[0]);
        Switch r0 = this.callCenterSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callCenterSwitch");
        }
        r0.setChecked(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureDashboardNotification(boolean z) {
        Timber.m37d("is Dashboard Notification enabled?: " + z, new Object[0]);
        Switch r0 = this.dashboardNotifSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifSwitch");
        }
        r0.setChecked(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureGroupBlocking(boolean z) {
        Timber.m37d("is Group Blocking enabled?: " + z, new Object[0]);
        Switch r0 = this.groupBlockingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingSwitch");
        }
        toggleSwitch(r0, z, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureNeighborhoodSpoofing(boolean z) {
        Timber.m37d("is Neighborhood Spoofing enabled?: " + z, new Object[0]);
        Switch r0 = this.spoofingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofingSwitch");
        }
        toggleSwitch(r0, z, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeaturePostCallNotifications(boolean z) {
        Timber.m37d("is Post Call Notification enabled?: " + z, new Object[0]);
        Switch r0 = this.postCallNotificationsSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postCallNotificationsSwitch");
        }
        r0.setChecked(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureSendToVoicemail(boolean z) {
        Timber.m37d("is Send To Voice Mail enabled?: " + z, new Object[0]);
        Switch r0 = this.sendToVoicemailSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailSwitch");
        }
        toggleSwitch(r0, z, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableFeatureUnknownBlocking(boolean z) {
        Timber.m37d("is Unknown Number enabled?: " + z, new Object[0]);
        Switch r0 = this.unknownSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unknownSwitch");
        }
        toggleSwitch(r0, z, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void enableGroupBlockingUI(boolean z) {
        if (z) {
            Button button = this.groupBlockingAddButton;
            if (button == null) {
                Intrinsics.throwUninitializedPropertyAccessException("groupBlockingAddButton");
            }
            button.setVisibility(0);
            RecyclerView recyclerView = this.groupBlockingList;
            if (recyclerView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
            }
            recyclerView.setVisibility(0);
            return;
        }
        Button button2 = this.groupBlockingAddButton;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingAddButton");
        }
        button2.setVisibility(8);
        RecyclerView recyclerView2 = this.groupBlockingList;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
        }
        recyclerView2.setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.settings_basic_fragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public boolean hasOverlayPermission() {
        return !Device.lacksOverlayPermissions(getContext());
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void hideNonActiveUxViews() {
        LinearLayout linearLayout = this.suppressibleUx;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suppressibleUx");
        }
        ViewExtensionsKt.gone(linearLayout);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void jumpToNeighborhoodSpoofingSetting() {
        NestedScrollView nestedScrollView = this.nestedScrollView;
        if (nestedScrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nestedScrollView");
        }
        nestedScrollView.post(new Runnable() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$jumpToNeighborhoodSpoofingSetting$1
            @Override // java.lang.Runnable
            public final void run() {
                BasicSettingsFragment.this.scrollAnimation(BasicSettingsFragment.access$getNestedScrollView$p(BasicSettingsFragment.this), BasicSettingsFragment.access$getSpoofProtectionContainer$p(BasicSettingsFragment.this));
                BasicSettingsFragment.this.blinkAnimateView(BasicSettingsFragment.access$getSpoofProtectionContainer$p(BasicSettingsFragment.this));
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void launchAddGroupBlockingDialog() {
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        GroupBlockingAddDialog newInstance = GroupBlockingAddDialog.newInstance();
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        newInstance.setOnAddGroupBlockListener(basicSettingsPresenter.getOnAddBlockGroupListener());
        newInstance.show(supportFragmentManager, "group_block_add_dialog");
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void launchCustomSettings() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.swapFragment(AdvancedSettingsFragment.class, null);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void launchOverlayPermissionSettings() {
        Timber.m37d("Launching native settings for granting overlay permissions.", new Object[0]);
        if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(getContext())) {
            Timber.m31i("Did not need to ask for overlay permissions.", new Object[0]);
            return;
        }
        Intent overlaySystemIntent = OverlayPermissionDialog.INSTANCE.getOverlaySystemIntent();
        PreferenceUtil.putIsOverlayPermissionPending(true);
        Context context = getContext();
        if (context != null) {
            context.startActivity(overlaySystemIntent);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void launchStateSettings() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.swapFragment(StateOfResidenceFragment.class, null);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void launchSubscribe() {
        startActivity(DetailActivity.subscriptionIntent(getContext()));
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new CallerDetailsFragment();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        BasicSettingsFragment basicSettingsFragment = this;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        this.presenter = new BasicSettingsPresenter(basicSettingsFragment, new BasicSettingsModel(context, realm));
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Timber.m37d("OnCreateView", new Object[0]);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        NestedScrollView nestedScrollView = (NestedScrollView) view.findViewById(C1566R.C1569id.basic_settings_nested_sv);
        Intrinsics.checkExpressionValueIsNotNull(nestedScrollView, "view.basic_settings_nested_sv");
        this.nestedScrollView = nestedScrollView;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(C1566R.C1569id.settings_suppressible_ux_ll);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout, "view.settings_suppressible_ux_ll");
        this.suppressibleUx = linearLayout;
        UntogglableSwitch untogglableSwitch = (UntogglableSwitch) view.findViewById(C1566R.C1569id.settings_fragment_service_sw);
        Intrinsics.checkExpressionValueIsNotNull(untogglableSwitch, "view.settings_fragment_service_sw");
        this.psServiceSwitch = untogglableSwitch;
        Switch r0 = (Switch) view.findViewById(C1566R.C1569id.settings_fragment_call_center_sw);
        Intrinsics.checkExpressionValueIsNotNull(r0, "view.settings_fragment_call_center_sw");
        this.callCenterSwitch = r0;
        Switch r02 = (Switch) view.findViewById(C1566R.C1569id.settings_fragment_post_call_sw);
        Intrinsics.checkExpressionValueIsNotNull(r02, "view.settings_fragment_post_call_sw");
        this.postCallNotificationsSwitch = r02;
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_custom_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout2, "view.protection_setup_custom_container");
        this.customContainer = linearLayout2;
        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(C1566R.C1569id.settings_fragment_group_blocking_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout3, "view.settings_fragment_group_blocking_container");
        this.groupBlockingContainer = linearLayout3;
        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_spoofing_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout4, "view.protection_setup_spoofing_container");
        this.spoofProtectionContainer = linearLayout4;
        Button button = (Button) view.findViewById(C1566R.C1569id.settings_fragment_group_blocking_add_button);
        Intrinsics.checkExpressionValueIsNotNull(button, "view.settings_fragment_group_blocking_add_button");
        this.groupBlockingAddButton = button;
        Switch r03 = (Switch) view.findViewById(C1566R.C1569id.settings_fragment_group_blocking_switch);
        Intrinsics.checkExpressionValueIsNotNull(r03, "view.settings_fragment_group_blocking_switch");
        this.groupBlockingSwitch = r03;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C1566R.C1569id.settings_fragment_group_blocking_list);
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "view.settings_fragment_group_blocking_list");
        this.groupBlockingList = recyclerView;
        Switch r04 = (Switch) view.findViewById(C1566R.C1569id.settings_fragment_spoofing_sw);
        Intrinsics.checkExpressionValueIsNotNull(r04, "view.settings_fragment_spoofing_sw");
        this.spoofingSwitch = r04;
        Switch r05 = (Switch) view.findViewById(C1566R.C1569id.settings_fragment_unknown_sw);
        Intrinsics.checkExpressionValueIsNotNull(r05, "view.settings_fragment_unknown_sw");
        this.unknownSwitch = r05;
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.protection_setup_custom_settings_tv);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.protection_setup_custom_settings_tv");
        this.customButton = textView;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(C1566R.C1569id.settings_cyd_verification_rl);
        Intrinsics.checkExpressionValueIsNotNull(relativeLayout, "view.settings_cyd_verification_rl");
        this.cydContainer = relativeLayout;
        TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.settings_cyd_verification_prompt);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "view.settings_cyd_verification_prompt");
        this.cydMessage = textView2;
        Button button2 = (Button) view.findViewById(C1566R.C1569id.settings_cyd_verification_button);
        Intrinsics.checkExpressionValueIsNotNull(button2, "view.settings_cyd_verification_button");
        this.cydButton = button2;
        LinearLayout linearLayout5 = (LinearLayout) view.findViewById(C1566R.C1569id.settings_dashboard_notif_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout5, "view.settings_dashboard_notif_container");
        this.dashboardNotifContainer = linearLayout5;
        Switch r06 = (Switch) view.findViewById(C1566R.C1569id.settings_dashboard_notif_switch);
        Intrinsics.checkExpressionValueIsNotNull(r06, "view.settings_dashboard_notif_switch");
        this.dashboardNotifSwitch = r06;
        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(C1566R.C1569id.send_to_voicemail_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout6, "view.send_to_voicemail_container");
        this.sendToVoicemailContainer = linearLayout6;
        Switch r07 = (Switch) view.findViewById(C1566R.C1569id.send_to_voicemail_sw);
        Intrinsics.checkExpressionValueIsNotNull(r07, "view.send_to_voicemail_sw");
        this.sendToVoicemailSwitch = r07;
        LinearLayout linearLayout7 = (LinearLayout) view.findViewById(C1566R.C1569id.send_to_voicemail_divider);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout7, "view.send_to_voicemail_divider");
        this.sendToVoicemailDivider = linearLayout7;
        LinearLayout linearLayout8 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_notifications_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout8, "view.protection_setup_notifications_container");
        this.notificationContainer = linearLayout8;
        LinearLayout linearLayout9 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_service_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout9, "view.protection_setup_service_container");
        this.serviceContainer = linearLayout9;
        LinearLayout linearLayout10 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_call_center_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout10, "view.protection_setup_call_center_container");
        this.callCenterContainer = linearLayout10;
        LinearLayout linearLayout11 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_unknown_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout11, "view.protection_setup_unknown_container");
        this.unknownContainer = linearLayout11;
        LinearLayout linearLayout12 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_state_button_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout12, "view.protection_setup_state_button_container");
        this.stateButtonContainer = linearLayout12;
        LinearLayout linearLayout13 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_basic_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout13, "view.protection_setup_basic_container");
        this.basicContainer = linearLayout13;
        LinearLayout linearLayout14 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_enhanced_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout14, "view.protection_setup_enhanced_container");
        this.enhancedContainer = linearLayout14;
        LinearLayout linearLayout15 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_maximum_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout15, "view.protection_setup_maximum_container");
        this.maxContainer = linearLayout15;
        LinearLayout linearLayout16 = (LinearLayout) view.findViewById(C1566R.C1569id.protection_setup_custom_prt_container);
        Intrinsics.checkExpressionValueIsNotNull(linearLayout16, "view.protection_setup_custom_prt_container");
        this.customProtectionWithRadioButtonContainer = linearLayout16;
        RadioButton radioButton = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_basic_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton, "view.protection_setup_basic_rb");
        this.basicRadio = radioButton;
        RadioButton radioButton2 = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_enhanced_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton2, "view.protection_setup_enhanced_rb");
        this.enhancedRadio = radioButton2;
        RadioButton radioButton3 = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_maximum_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton3, "view.protection_setup_maximum_rb");
        this.maxRadio = radioButton3;
        RadioButton radioButton4 = (RadioButton) view.findViewById(C1566R.C1569id.protection_setup_custom_prt_rb);
        Intrinsics.checkExpressionValueIsNotNull(radioButton4, "view.protection_setup_custom_prt_rb");
        this.customPrtRadio = radioButton4;
        setupFeatureClickListeners();
        setupRadioButtonsAndListeners();
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        basicSettingsPresenter.onCreateView();
        return view;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        super.onPause();
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        basicSettingsPresenter.onPause();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.m37d("onResume", new Object[0]);
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        basicSettingsPresenter.onResume();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void refreshGroupBlockList() {
        Timber.m28v("Refreshing group block list.", new Object[0]);
        GroupBlockingListAdapter groupBlockingListAdapter = this.groupBlockingListAdapter;
        if (groupBlockingListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingListAdapter");
        }
        groupBlockingListAdapter.notifyDataSetChanged();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void selectRadioButton(@NotNull ProtectionLevel level) {
        Intrinsics.checkParameterIsNotNull(level, "level");
        for (RadioButton radioButton : this.listOfRadioButtons) {
            radioButton.setChecked(false);
        }
        switch (level) {
            case BASIC:
                RadioButton radioButton2 = this.basicRadio;
                if (radioButton2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("basicRadio");
                }
                radioButton2.setChecked(true);
                return;
            case ENHANCED:
                RadioButton radioButton3 = this.enhancedRadio;
                if (radioButton3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("enhancedRadio");
                }
                radioButton3.setChecked(true);
                return;
            case MAXIMUM:
                RadioButton radioButton4 = this.maxRadio;
                if (radioButton4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("maxRadio");
                }
                radioButton4.setChecked(true);
                return;
            case CUSTOM:
                RadioButton radioButton5 = this.customPrtRadio;
                if (radioButton5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("customPrtRadio");
                }
                radioButton5.setChecked(true);
                return;
            default:
                return;
        }
    }

    public final void setupFeatureClickListeners() {
        Button button = this.cydButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydButton");
        }
        button.setOnClickListener(this.onCydResponseClick);
        LinearLayout linearLayout = this.spoofProtectionContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofProtectionContainer");
        }
        linearLayout.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout2 = this.dashboardNotifContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifContainer");
        }
        linearLayout2.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout3 = this.sendToVoicemailContainer;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailContainer");
        }
        linearLayout3.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout4 = this.groupBlockingContainer;
        if (linearLayout4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingContainer");
        }
        linearLayout4.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout5 = this.notificationContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationContainer");
        }
        linearLayout5.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout6 = this.serviceContainer;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serviceContainer");
        }
        linearLayout6.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout7 = this.callCenterContainer;
        if (linearLayout7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callCenterContainer");
        }
        linearLayout7.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout8 = this.unknownContainer;
        if (linearLayout8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unknownContainer");
        }
        linearLayout8.setOnClickListener(this.clickSwitches);
        LinearLayout linearLayout9 = this.spoofProtectionContainer;
        if (linearLayout9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofProtectionContainer");
        }
        linearLayout9.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout10 = this.dashboardNotifContainer;
        if (linearLayout10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifContainer");
        }
        linearLayout10.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout11 = this.sendToVoicemailContainer;
        if (linearLayout11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailContainer");
        }
        linearLayout11.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout12 = this.groupBlockingContainer;
        if (linearLayout12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingContainer");
        }
        linearLayout12.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout13 = this.notificationContainer;
        if (linearLayout13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("notificationContainer");
        }
        linearLayout13.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout14 = this.serviceContainer;
        if (linearLayout14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("serviceContainer");
        }
        linearLayout14.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout15 = this.callCenterContainer;
        if (linearLayout15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callCenterContainer");
        }
        linearLayout15.setOnTouchListener(this.controlClickListener);
        LinearLayout linearLayout16 = this.unknownContainer;
        if (linearLayout16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unknownContainer");
        }
        linearLayout16.setOnTouchListener(this.controlClickListener);
        UntogglableSwitch untogglableSwitch = this.psServiceSwitch;
        if (untogglableSwitch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("psServiceSwitch");
        }
        untogglableSwitch.setOnClickListener(this.onPsServiceSwitchClick);
        TextView textView = this.customButton;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customButton");
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupFeatureClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onOpenCustomSettings();
            }
        });
        Button button2 = this.groupBlockingAddButton;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingAddButton");
        }
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupFeatureClickListeners$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onAddGroupBlockingButton();
            }
        });
        LinearLayout linearLayout17 = this.stateButtonContainer;
        if (linearLayout17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("stateButtonContainer");
        }
        linearLayout17.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupFeatureClickListeners$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onOpenStateSettings();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupGroupBlockingList(@NotNull List<? extends GroupBlock> list) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        RecyclerView recyclerView = this.groupBlockingList;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        BasicSettingsPresenter basicSettingsPresenter = this.presenter;
        if (basicSettingsPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        this.groupBlockingListAdapter = new GroupBlockingListAdapter(list, basicSettingsPresenter.getOnUnblockClickListener());
        RecyclerView recyclerView2 = this.groupBlockingList;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
        }
        GroupBlockingListAdapter groupBlockingListAdapter = this.groupBlockingListAdapter;
        if (groupBlockingListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingListAdapter");
        }
        recyclerView2.setAdapter(groupBlockingListAdapter);
        RecyclerView recyclerView3 = this.groupBlockingList;
        if (recyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
        }
        recyclerView3.setHasFixedSize(true);
        RecyclerView recyclerView4 = this.groupBlockingList;
        if (recyclerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingList");
        }
        recyclerView4.setNestedScrollingEnabled(false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupHeaderForNumberVerification() {
        RelativeLayout relativeLayout = this.cydContainer;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydContainer");
        }
        relativeLayout.setVisibility(0);
        TextView textView = this.cydMessage;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydMessage");
        }
        textView.setText(HtmlCompat.fromHtml(getString(C1566R.string.settings_cyd_verification_prompt), 0));
        Button button = this.cydButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydButton");
        }
        button.setText(getText(C1566R.string.settings_cyd_verification_button));
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupHeaderForPermissions() {
        RelativeLayout relativeLayout = this.cydContainer;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydContainer");
        }
        relativeLayout.setVisibility(0);
        TextView textView = this.cydMessage;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydMessage");
        }
        textView.setText(HtmlCompat.fromHtml(getString(C1566R.string.settings_cyd_overlay_prompt), 0));
        Button button = this.cydButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydButton");
        }
        button.setText(getText(C1566R.string.settings_cyd_overlay_button));
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupHeaderHide() {
        RelativeLayout relativeLayout = this.cydContainer;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cydContainer");
        }
        relativeLayout.setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerCallCenter() {
        Switch r0 = this.callCenterSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("callCenterSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerCallCenter$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedCallCenter(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerDashboardNotification() {
        Switch r0 = this.dashboardNotifSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dashboardNotifSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerDashboardNotification$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedDashboardNotification(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerGroupBlocking() {
        Switch r0 = this.groupBlockingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupBlockingSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerGroupBlocking$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedGroupBlocking(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerPostCallNotification() {
        Switch r0 = this.postCallNotificationsSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("postCallNotificationsSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerPostCallNotification$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedPostCallNotification(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerPsService() {
        UntogglableSwitch untogglableSwitch = this.psServiceSwitch;
        if (untogglableSwitch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("psServiceSwitch");
        }
        untogglableSwitch.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerPsService$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedPsService(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerSendToVoicemail() {
        Switch r0 = this.sendToVoicemailSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sendToVoicemailSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerSendToVoicemail$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedSendToVoicemail(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerSpoofing() {
        Switch r0 = this.spoofingSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("spoofingSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerSpoofing$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedSpoofing(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupListenerUnknownNumber() {
        Switch r0 = this.unknownSwitch;
        if (r0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unknownSwitch");
        }
        r0.setOnCheckedChangeListener(new Switch.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$setupListenerUnknownNumber$1
            @Override // com.rey.material.widget.Switch.OnCheckedChangeListener
            public final void onCheckedChanged(Switch r4, boolean z) {
                BasicSettingsFragment.access$getPresenter$p(BasicSettingsFragment.this).onSwitchChangedUnknownNumber(z);
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupPsServiceSelection(boolean z) {
        UntogglableSwitch untogglableSwitch = this.psServiceSwitch;
        if (untogglableSwitch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("psServiceSwitch");
        }
        untogglableSwitch.setCheckedImmediately(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.settings_fragment_title);
        outputNameAccessibility(C1566R.string.con_desc_settings_fragment);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void showCustomProtectionLevelAsRadioButton() {
        LinearLayout linearLayout = this.customProtectionWithRadioButtonContainer;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customProtectionWithRadioButtonContainer");
        }
        linearLayout.setVisibility(0);
        LinearLayout linearLayout2 = this.customContainer;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("customContainer");
        }
        linearLayout2.setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void showPsServicesDisableDialog(final boolean z) {
        FragmentActivity activity = getActivity();
        new InformationDialog.Builder(DialogType.INFORMATION).withTitle(getString(C1566R.string.info_dialog_ps_services_disable_title)).withBody(getString(C1566R.string.info_dialog_ps_services_disable_explanation)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_ps_services_disable_yes), new ButtonAction() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsFragment$showPsServicesDisableDialog$yesBtn$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context) {
                BasicSettingsFragment.this.togglePSServiceSwitchAndShowSnackbar(z);
            }
        }), new DialogButton(getString(C1566R.string.info_dialog_ps_services_disable_no))).build().show(activity != null ? activity.getSupportFragmentManager() : null, "ps_services_disabling_fragment");
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void showSettingsSavedSnackbar(@NotNull BasicSettingsContract.Switches callBackForSwitch) {
        Intrinsics.checkParameterIsNotNull(callBackForSwitch, "callBackForSwitch");
        if (getContext() != null) {
            View.OnClickListener switchCallBack = getSwitchCallBack(callBackForSwitch);
            PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
            NestedScrollView basic_settings_nested_sv = (NestedScrollView) _$_findCachedViewById(C1566R.C1569id.basic_settings_nested_sv);
            Intrinsics.checkExpressionValueIsNotNull(basic_settings_nested_sv, "basic_settings_nested_sv");
            NestedScrollView nestedScrollView = basic_settings_nested_sv;
            DetailActivity activity = this.activity;
            Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
            pSSnackBars.getSettingsSnackBar(nestedScrollView, activity, switchCallBack).show();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void togglePSServiceSwitchAndShowSnackbar(boolean z) {
        UntogglableSwitch untogglableSwitch = this.psServiceSwitch;
        if (untogglableSwitch == null) {
            Intrinsics.throwUninitializedPropertyAccessException("psServiceSwitch");
        }
        untogglableSwitch.forceToggle();
        if (z) {
            showPSServiceSavedSnackbar();
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.View
    public void toggleSwitchWithListeners(@NotNull BasicSettingsContract.Switches switches, boolean z) {
        Intrinsics.checkParameterIsNotNull(switches, "switch");
        Switch switchView = getSwitchView(switches);
        if (switchView != null) {
            switchView.setOnCheckedChangeListener(null);
            switchView.setChecked(z);
            getSwitchListenerSetup(switches).invoke();
        }
    }
}
