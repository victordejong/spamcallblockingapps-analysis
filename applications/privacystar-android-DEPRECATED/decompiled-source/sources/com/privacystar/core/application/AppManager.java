package com.privacystar.core.application;

import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u000bH&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0010H&¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\u0003H&¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/application/AppManager;", "", "flavorUsesGuidID", "", "flavorUsesThemes", "getDebugLicenseType", "Lcom/privacystar/core/data/model/types/SubscriptionType;", "getOfflineLicenseFeatures", "", "getOfflineLicenseType", "getSubscriptionFragment", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "isZendeskSDKEnabled", "permissionsReqForIAB", "permissionsRequiredForRegistration", "", "()[Ljava/lang/String;", "registrationRequiresNumber", "shouldShowNotification", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/AppManager.class */
public interface AppManager {

    @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/AppManager$DefaultImpls.class */
    public static final class DefaultImpls {
        public static boolean registrationRequiresNumber(AppManager appManager) {
            return false;
        }
    }

    boolean flavorUsesGuidID();

    boolean flavorUsesThemes();

    @NotNull
    SubscriptionType getDebugLicenseType();

    @NotNull
    String getOfflineLicenseFeatures();

    @NotNull
    SubscriptionType getOfflineLicenseType();

    @NotNull
    Class<? extends DetailFragment> getSubscriptionFragment();

    boolean isZendeskSDKEnabled();

    boolean permissionsReqForIAB();

    @NotNull
    String[] permissionsRequiredForRegistration();

    boolean registrationRequiresNumber();

    boolean shouldShowNotification();
}
