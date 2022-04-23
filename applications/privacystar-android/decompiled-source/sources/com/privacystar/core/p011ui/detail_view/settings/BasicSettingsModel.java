package com.privacystar.core.p011ui.detail_view.settings;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.helper.GroupBlockRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import com.privacystar.core.util.BuildUtil;
import io.realm.Realm;
import io.realm.RealmResults;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J,\u0010\u0012\u001a&\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00140\u0014 \b*\u0012\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00140\u0014\u0018\u00010\u00130\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\b\u0010\u0019\u001a\u00020\u0010H\u0016J\b\u0010\u001a\u001a\u00020\u0010H\u0016J\b\u0010\u001b\u001a\u00020\u0010H\u0016J\b\u0010\u001c\u001a\u00020\u0010H\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0016J\b\u0010\u001e\u001a\u00020\u0010H\u0016J\b\u0010\u001f\u001a\u00020\u0010H\u0016J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0010\u0010*\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0010\u0010+\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0018\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020\u0010H\u0016J\u0010\u0010/\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\b\u00100\u001a\u00020!H\u0016J\u0010\u00101\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0010\u00102\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\u0010\u00103\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\b\u00104\u001a\u00020!H\u0016J\u0010\u00105\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0016J\b\u00106\u001a\u00020\u0010H\u0016J\b\u00107\u001a\u00020\u0010H\u0016J\b\u00108\u001a\u00020\u0010H\u0016J\b\u00109\u001a\u00020\u0010H\u0016J\b\u0010:\u001a\u00020\u0010H\u0016J\b\u0010;\u001a\u00020\u0010H\u0016J\b\u0010<\u001a\u00020\u0010H\u0016J\b\u0010=\u001a\u00020\u0010H\u0016J\u0010\u0010>\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\b\u0010?\u001a\u00020\u0010H\u0016J\b\u0010@\u001a\u00020\u0010H\u0016J\b\u0010A\u001a\u00020\u0010H\u0016R\u001f\u0010\u0002\u001a\u0010\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00030\u00030\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��¨\u0006B"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsModel;", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model;", "context", "Landroid/content/Context;", "realm", "Lio/realm/Realm;", "(Landroid/content/Context;Lio/realm/Realm;)V", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "getContext", "()Ljava/lang/ref/WeakReference;", "getRealm", "()Lio/realm/Realm;", "selectedProtectionLevel", "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "canUseProtectionLevel", "", FirebaseAnalytics.Param.LEVEL, "getGroupBlockingList", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/GroupBlock;", "getProtectionLevel", "", "isFeatureCallCenterAvailable", "isFeatureGroupBlockingAvailable", "isFeaturePostCallNotificationsAvailable", "isFeatureSpoofingAvailable", "isFeatureUnknownBlockingAvailable", "isFeatureVoicemailAvailable", "isNumberVerified", "isProtectionLevelSetup", "isSubscriptionOnGoing", "removeBlockingGroup", "", "blockGroup", "", "saveApplicationEnabled", "isEnabled", "saveBlockingGroup", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupCompleteListener;", "saveCallCenterEnabled", "saveDashboardNotificationsEnabled", "saveGroupBlockingEnabled", "saveNumberVerification", "isVerifying", "isSkipped", "savePostCallNotificationsEnabled", "saveProtectionLevelSetting", "saveSendToVoicemailEnabled", "saveShouldShowSavedSnack", "saveSpoofBlockingEnabled", "saveSpoofSettingShowed", "saveUnknownBlockingEnabled", "savedFeatureCallCenter", "savedFeatureDashboardNotification", "savedFeatureGroupBlocking", "savedFeaturePSService", "savedFeaturePostCallNotification", "savedFeatureSendToVoicemail", "savedFeatureSpoofing", "savedFeatureUnknownBlocking", "setProtectionLevel", "shouldJumpToSpoofingSetting", "shouldShowFullUX", "shouldShowSavedSnack", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsModel.class */
public final class BasicSettingsModel implements BasicSettingsContract.Model {
    @NotNull
    private final WeakReference<Context> context;
    @NotNull
    private final Realm realm;
    private ProtectionLevel selectedProtectionLevel;

    public BasicSettingsModel(@NotNull Context context, @NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        this.realm = realm;
        this.context = new WeakReference<>(context);
    }

    @NotNull
    public static final /* synthetic */ ProtectionLevel access$getSelectedProtectionLevel$p(BasicSettingsModel basicSettingsModel) {
        ProtectionLevel protectionLevel = basicSettingsModel.selectedProtectionLevel;
        if (protectionLevel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectedProtectionLevel");
        }
        return protectionLevel;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean canUseProtectionLevel(@NotNull ProtectionLevel level) {
        Intrinsics.checkParameterIsNotNull(level, "level");
        if (isSubscriptionOnGoing()) {
            return true;
        }
        boolean z = true;
        switch (level) {
            case ENHANCED:
            case MAXIMUM:
            case CUSTOM:
                z = false;
                break;
            case BASIC:
                break;
            default:
                z = true;
                break;
        }
        return z;
    }

    @NotNull
    public final WeakReference<Context> getContext() {
        return this.context;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public RealmResults<GroupBlock> getGroupBlockingList() {
        return GroupBlockRealm.getAllBlockedGroups(this.realm);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public int getProtectionLevel() {
        return PreferenceUtil.getProtectionLevel();
    }

    @NotNull
    public final Realm getRealm() {
        return this.realm;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeatureCallCenterAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_GREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_NONGREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_SCAM);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeatureGroupBlockingAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.GROUP_BLOCKING);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeaturePostCallNotificationsAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.POST_CC_GREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.POST_CC_NONGREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.POST_CC_SCAM) || LicenseFeatureRealm.isFeatureAvailable(Feature.MISSED_CALL_NOTIFICATIONS_GREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.MISSED_CALL_NOTIFICATIONS_NONGREEN) || LicenseFeatureRealm.isFeatureAvailable(Feature.BLOCKED_CALL_NOTIFICATIONS_NONOFFENDERS) || LicenseFeatureRealm.isFeatureAvailable(Feature.BLOCKED_CALL_NOTIFICATIONS_OFFENDERS);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeatureSpoofingAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.NEIGHBORHOOD_SPOOFING);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeatureUnknownBlockingAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.UNKNOWN_BLOCKING);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isFeatureVoicemailAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(Feature.SEND_TO_VOICEMAIL);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isNumberVerified() {
        return PreferenceUtil.getIsNumberVerified();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isProtectionLevelSetup() {
        return PreferenceUtil.getProtectionSetup();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean isSubscriptionOnGoing() {
        return SubscriptionRealm.isSubscriptionOngoing(this.realm);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void removeBlockingGroup(@NotNull String blockGroup) {
        Intrinsics.checkParameterIsNotNull(blockGroup, "blockGroup");
        GroupBlockRealm.setBlockDisabled(this.realm, blockGroup);
        Context context = this.context.get();
        if (context != null) {
            CallBlockingUtil.setDataChanged(context);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveApplicationEnabled(boolean z) {
        PreferenceUtil.putApplicationEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveBlockingGroup(@NotNull String blockGroup, @NotNull BasicSettingsContract.OnAddBlockGroupCompleteListener listener) {
        Intrinsics.checkParameterIsNotNull(blockGroup, "blockGroup");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        GroupBlockRealm.addGroupBlocking(this.realm, blockGroup, listener);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveCallCenterEnabled(boolean z) {
        PreferenceUtil.putIsCallCenterEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveDashboardNotificationsEnabled(boolean z) {
        PreferenceUtil.putDashboardNotifEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveGroupBlockingEnabled(boolean z) {
        PreferenceUtil.putGroupBlockingEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveNumberVerification(boolean z, boolean z2) {
        PreferenceUtil.putIsNumberVerifying(z);
        PreferenceUtil.putIsNumberVerificationSkipped(z2);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void savePostCallNotificationsEnabled(boolean z) {
        PreferenceUtil.putIsPostCallCenterEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveProtectionLevelSetting() {
        if (this.selectedProtectionLevel != null) {
            PreferenceUtil.putProtectionSetup(true);
            ProtectionLevel protectionLevel = this.selectedProtectionLevel;
            if (protectionLevel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("selectedProtectionLevel");
            }
            PreferenceUtil.putProtectionLevel(protectionLevel.getValue());
            ProtectionLevel protectionLevel2 = this.selectedProtectionLevel;
            if (protectionLevel2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("selectedProtectionLevel");
            }
            PreferenceUtil.updateTypeBlockingBasedOnProtection(protectionLevel2);
            PreferenceUtil.putCustomProtectionEnabled(false);
            ProtectionLevel protectionLevel3 = this.selectedProtectionLevel;
            if (protectionLevel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("selectedProtectionLevel");
            }
            if (protectionLevel3 != ProtectionLevel.ENHANCED) {
                ProtectionLevel protectionLevel4 = this.selectedProtectionLevel;
                if (protectionLevel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("selectedProtectionLevel");
                }
                if (protectionLevel4 != ProtectionLevel.MAXIMUM) {
                    return;
                }
            }
            PreferenceUtil.putIsUnknownBlockingEnabled(true);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveSendToVoicemailEnabled(boolean z) {
        PreferenceUtil.putSendToVoicemailSetting(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveShouldShowSavedSnack(boolean z) {
        PreferenceUtil.putShowCallTypesSavedSnack(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveSpoofBlockingEnabled(boolean z) {
        PreferenceUtil.putIsSpoofBlockingEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveSpoofSettingShowed() {
        PreferenceUtil.putNewFeatureExplained(true);
        PreferenceUtil.putJumpToSpoofingSetting(false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void saveUnknownBlockingEnabled(boolean z) {
        PreferenceUtil.putIsUnknownBlockingEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureCallCenter() {
        return isFeatureCallCenterAvailable() ? PreferenceUtil.getIsCallCenterEnabled() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureDashboardNotification() {
        return PreferenceUtil.getDashboardNotifEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureGroupBlocking() {
        return isFeatureGroupBlockingAvailable() ? PreferenceUtil.getGroupBlockingEnabled() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeaturePSService() {
        return PreferenceUtil.getApplicationEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeaturePostCallNotification() {
        return isFeaturePostCallNotificationsAvailable() ? PreferenceUtil.getIsPostCallCenterEnabled() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureSendToVoicemail() {
        return isFeatureVoicemailAvailable() ? PreferenceUtil.getSendToVoicemailSetting() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureSpoofing() {
        return isFeatureSpoofingAvailable() ? PreferenceUtil.getIsSpoofBlockingEnabled() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean savedFeatureUnknownBlocking() {
        return isFeatureUnknownBlockingAvailable() ? PreferenceUtil.getIsUnknownBlockingEnabled() : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public void setProtectionLevel(@NotNull ProtectionLevel level) {
        Intrinsics.checkParameterIsNotNull(level, "level");
        this.selectedProtectionLevel = level;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean shouldJumpToSpoofingSetting() {
        return PreferenceUtil.getJumpToSpoofingSetting();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean shouldShowFullUX() {
        Context context = this.context.get();
        return context != null ? BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(context, this.realm) : false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Model
    public boolean shouldShowSavedSnack() {
        return PreferenceUtil.getShowCallTypeSavedSnack();
    }
}
