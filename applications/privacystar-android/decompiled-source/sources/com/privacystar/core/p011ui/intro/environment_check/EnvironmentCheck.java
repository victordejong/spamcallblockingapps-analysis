package com.privacystar.core.p011ui.intro.environment_check;

import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.privacystar.core.util.model.BasicApplication;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheck */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheck.class */
public final class EnvironmentCheck {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$Manager;", "", "shouldAlertTwice", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheck$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheck$Manager.class */
    public interface Manager {
        boolean shouldAlertTwice();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u000f\u001a\u00020\u00032\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0011H&¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$View;", "", MessageCenterInteraction.EVENT_NAME_CLOSE, "", "dismissDialog", "getInstalledPsApplications", "", "Lcom/privacystar/core/util/model/BasicApplication;", "getOtherPsPackages", "", "isDialogShowing", "", "showAppClosingAlert", "showUninstallAlert", "transition", "uninstall", "applications", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheck$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheck$View.class */
    public interface View {
        void close();

        void dismissDialog();

        @NotNull
        List<BasicApplication> getInstalledPsApplications();

        @NotNull
        List<String> getOtherPsPackages();

        boolean isDialogShowing();

        void showAppClosingAlert();

        void showUninstallAlert();

        void transition();

        void uninstall(@Nullable List<? extends BasicApplication> list);
    }
}
