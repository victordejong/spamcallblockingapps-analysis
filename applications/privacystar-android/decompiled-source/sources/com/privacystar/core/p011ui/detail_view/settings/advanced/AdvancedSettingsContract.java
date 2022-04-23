package com.privacystar.core.p011ui.detail_view.settings.advanced;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract;", "", "()V", "Manager", "Model", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract.class */
public final class AdvancedSettingsContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Manager;", "", "shouldShowSaveButton", "", "shouldShowSettingSavedSnackbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Manager.class */
    public interface Manager {
        boolean shouldShowSaveButton();

        boolean shouldShowSettingSavedSnackbar();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\f\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0003H&J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0003H&¨\u0006\u001b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model;", "", "getAccountServicesProtectionEnabled", "", "getCharityProtectionEnabled", "getNuisanceProtectionEnabled", "getPoliticalProtectionEnabled", "getPrisonProtectionEnabled", "getScamProtectionEnabled", "getSurveyProtectionEnabled", "getTelemarketingProtectionEnabled", "isCategoryBlockingAvailable", "isNuisanceBlockingAvailable", "isScamBlockingAvailable", "putAccountServicesProtectionEnabled", "", "enabled", "putCharityProtectionEnabled", "putCustomProtectionEnabled", "putNuisanceProtectionEnabled", "putPoliticalProtectionEnabled", "putPrisonProtectionEnabled", "putScamProtectionEnabled", "putShowCallTypesSavedSnack", "show", "putSurveyProtectionEnabled", "putTelemarketingProtectionEnabled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsContract$Model */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model.class */
    public interface Model {
        boolean getAccountServicesProtectionEnabled();

        boolean getCharityProtectionEnabled();

        boolean getNuisanceProtectionEnabled();

        boolean getPoliticalProtectionEnabled();

        boolean getPrisonProtectionEnabled();

        boolean getScamProtectionEnabled();

        boolean getSurveyProtectionEnabled();

        boolean getTelemarketingProtectionEnabled();

        boolean isCategoryBlockingAvailable();

        boolean isNuisanceBlockingAvailable();

        boolean isScamBlockingAvailable();

        void putAccountServicesProtectionEnabled(boolean z);

        void putCharityProtectionEnabled(boolean z);

        void putCustomProtectionEnabled(boolean z);

        void putNuisanceProtectionEnabled(boolean z);

        void putPoliticalProtectionEnabled(boolean z);

        void putPrisonProtectionEnabled(boolean z);

        void putScamProtectionEnabled(boolean z);

        void putShowCallTypesSavedSnack(boolean z);

        void putSurveyProtectionEnabled(boolean z);

        void putTelemarketingProtectionEnabled(boolean z);
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0006H&J\b\u0010\u0012\u001a\u00020\u0003H&J\b\u0010\u0013\u001a\u00020\u0003H&¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$View;", "", "closeSettings", "", "setAccountServices", "enabled", "", "setCharity", "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "setupClickListeners", "setupSaveButton", "buttonEnabled", "setupToolbar", "showSubscriptionPage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$View.class */
    public interface View {
        void closeSettings();

        void setAccountServices(boolean z);

        void setCharity(boolean z);

        void setNuisance(boolean z);

        void setPolitical(boolean z);

        void setPrison(boolean z);

        void setScam(boolean z);

        void setSurvey(boolean z);

        void setTelemarketing(boolean z);

        void setupCategories();

        void setupClickListeners();

        void setupSaveButton(boolean z);

        void setupToolbar();

        void showSubscriptionPage();
    }
}
