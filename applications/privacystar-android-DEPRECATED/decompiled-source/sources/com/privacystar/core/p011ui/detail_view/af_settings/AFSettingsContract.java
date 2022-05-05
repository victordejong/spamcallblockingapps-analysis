package com.privacystar.core.p011ui.detail_view.af_settings;

import com.privacystar.core.data.model.BlockHistoryFields;
import com.privacystar.core.data.model.LogItemFields;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_settings.AFSettingsContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_settings/AFSettingsContract.class */
public final class AFSettingsContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010��\n��\bf\u0018��2\u00020\u0001¨\u0006\u0002"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$Manager;", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.af_settings.AFSettingsContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$Manager.class */
    public interface Manager {
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000f\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\t\u001a\u00020\u0003H&J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\fH&J\b\u0010\u0019\u001a\u00020\u0003H&J\b\u0010\u001a\u001a\u00020\u0003H&¨\u0006\u001b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$View;", "", "attemptUpgrade", "", "rateApp", "setAccountServices", "enabled", "", "setCharity", "setClickListeners", "setLastUpdateTime", LogItemFields.DATE, "", BlockHistoryFields.TIME, "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "setupToolbar", "shareApp", "subject", "body", "showAbout", "showHelp", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.af_settings.AFSettingsContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$View.class */
    public interface View {
        void attemptUpgrade();

        void rateApp();

        void setAccountServices(boolean z);

        void setCharity(boolean z);

        void setClickListeners();

        void setLastUpdateTime(@NotNull String str, @NotNull String str2);

        void setNuisance(boolean z);

        void setPolitical(boolean z);

        void setPrison(boolean z);

        void setScam(boolean z);

        void setSurvey(boolean z);

        void setTelemarketing(boolean z);

        void setupCategories();

        void setupToolbar();

        void shareApp(@NotNull String str, @NotNull String str2);

        void showAbout();

        void showHelp();
    }
}
