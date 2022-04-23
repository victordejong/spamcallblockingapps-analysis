package com.privacystar.core.p011ui.home;

import com.privacystar.core.p011ui.home.HomeContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u0004H\u0016¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeManagerImpl;", "Lcom/privacystar/core/ui/home/HomeContract$Manager;", "()V", "nonBlockedCallHistoryIsColored", "", "shouldExpandListItems", "shouldShowContextDialog", "shouldShowErrorAsDialog", "shouldShowPaywall", "shouldShowPostPurchaseDialog", "shouldShowSearchSuggestion", "shouldShowUpgradeToPremium", "shouldShowVerifyAndPermissionBanner", "shouldShowWelcomeSubscriberMessage", "shouldUseFullScreenOverlayPermissionsDialog", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeManagerImpl.class */
public final class HomeManagerImpl implements HomeContract.Manager {
    public static final HomeManagerImpl INSTANCE = new HomeManagerImpl();

    private HomeManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean nonBlockedCallHistoryIsColored() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldExpandListItems() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowContextDialog() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowErrorAsDialog() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowPaywall() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowPostPurchaseDialog() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowSearchSuggestion() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowUpgradeToPremium() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowVerifyAndPermissionBanner() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldShowWelcomeSubscriberMessage() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.Manager
    public boolean shouldUseFullScreenOverlayPermissionsDialog() {
        return false;
    }
}
