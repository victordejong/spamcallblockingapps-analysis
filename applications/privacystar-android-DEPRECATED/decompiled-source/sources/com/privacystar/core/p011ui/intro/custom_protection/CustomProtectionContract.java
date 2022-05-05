package com.privacystar.core.p011ui.intro.custom_protection;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionContract.class */
public final class CustomProtectionContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$Manager;", "", "isNuisanceTogglable", "", "isTogglePaywalled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$Manager.class */
    public interface Manager {
        boolean isNuisanceTogglable();

        boolean isTogglePaywalled();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$View;", "", "finishView", "", "setAccountServices", "enabled", "", "setCharity", "setClickListeners", "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "showUpgradePage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$View.class */
    public interface View {
        void finishView();

        void setAccountServices(boolean z);

        void setCharity(boolean z);

        void setClickListeners();

        void setNuisance(boolean z);

        void setPolitical(boolean z);

        void setPrison(boolean z);

        void setScam(boolean z);

        void setSurvey(boolean z);

        void setTelemarketing(boolean z);

        void setupCategories();

        void showUpgradePage();
    }
}
