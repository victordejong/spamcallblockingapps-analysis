package com.privacystar.core.application;

import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragmentLegacy;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.enums.CarrierMobileCode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\fH\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u0011H\u0016¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016¨\u0006\u0015"}, m254d2 = {"Lcom/privacystar/core/application/AppManagerImpl;", "Lcom/privacystar/core/application/AppManager;", "()V", "flavorUsesGuidID", "", "flavorUsesThemes", "getDebugLicenseType", "Lcom/privacystar/core/data/model/types/SubscriptionType;", "getOfflineLicenseFeatures", "", "getOfflineLicenseType", "getSubscriptionFragment", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "isZendeskSDKEnabled", "permissionsReqForIAB", "permissionsRequiredForRegistration", "", "()[Ljava/lang/String;", "registrationRequiresNumber", "shouldShowNotification", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/AppManagerImpl.class */
public final class AppManagerImpl implements AppManager {
    public static final AppManagerImpl INSTANCE = new AppManagerImpl();

    private AppManagerImpl() {
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean flavorUsesGuidID() {
        return false;
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean flavorUsesThemes() {
        return true;
    }

    @Override // com.privacystar.core.application.AppManager
    @NotNull
    public SubscriptionType getDebugLicenseType() {
        return SubscriptionType.TRIAL;
    }

    @Override // com.privacystar.core.application.AppManager
    @NotNull
    public String getOfflineLicenseFeatures() {
        return "1,3,4,6,7,10,12,13,14,17,18,21,28,30,31,33,34";
    }

    @Override // com.privacystar.core.application.AppManager
    @NotNull
    public SubscriptionType getOfflineLicenseType() {
        return SubscriptionType.OFFLINE;
    }

    @Override // com.privacystar.core.application.AppManager
    @NotNull
    public Class<? extends DetailFragment> getSubscriptionFragment() {
        return SubscriptionFragmentLegacy.class;
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean isZendeskSDKEnabled() {
        return false;
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean permissionsReqForIAB() {
        return true;
    }

    @Override // com.privacystar.core.application.AppManager
    @NotNull
    public String[] permissionsRequiredForRegistration() {
        String[] generalPermissions = PermissionUtils.getGeneralPermissions();
        Intrinsics.checkExpressionValueIsNotNull(generalPermissions, "getGeneralPermissions()");
        return generalPermissions;
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean registrationRequiresNumber() {
        return true;
    }

    @Override // com.privacystar.core.application.AppManager
    public boolean shouldShowNotification() {
        return PreferenceUtil.getEulaAccepted() && CarrierMobileCode.Companion.fromId(PreferenceUtil.getCarrierId()).isSpgCarrier();
    }
}
