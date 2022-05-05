package com.privacystar.core.p011ui.intro.environment_check;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheck;
import com.privacystar.core.util.Text;
import com.privacystar.core.util.model.BasicApplication;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00130\fH\u0002J\u0006\u0010\u001a\u001a\u00020\u0017J\u0006\u0010\u001b\u001a\u00020\u0017J\u0006\u0010\u001c\u001a\u00020\u0017J\u0006\u0010\u001d\u001a\u00020\u0017J\u0006\u0010\u001e\u001a\u00020\u0017J\u0006\u0010\u001f\u001a\u00020\u0017R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\f8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000fR\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u0015X\u0082\u0004¢\u0006\u0002\n��¨\u0006 "}, m254d2 = {"Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheckPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$View;", "(Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheck$View;)V", "dialogWasClosed", "", "getDialogWasClosed", "()Z", "setDialogWasClosed", "(Z)V", "installedApplications", "", "Lcom/privacystar/core/util/model/BasicApplication;", "getInstalledApplications", "()Ljava/util/List;", "manager", "Lcom/privacystar/core/ui/intro/environment_check/EnvironmentCheckManagerImpl;", "psPackages", "", "getPsPackages", "Ljava/lang/ref/WeakReference;", "clearApplicationCache", "", "isOtherPsApplicationInstalled", "packageNames", "onAppClose", "onApplicationsUninstall", "viewCreated", "viewDestroyed", "viewResumed", "viewStopped", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.environment_check.EnvironmentCheckPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/environment_check/EnvironmentCheckPresenter.class */
public final class EnvironmentCheckPresenter {
    private boolean dialogWasClosed;
    private List<? extends BasicApplication> installedApplications;
    private final EnvironmentCheckManagerImpl manager = EnvironmentCheckManagerImpl.INSTANCE;
    private List<String> psPackages;
    private final WeakReference<EnvironmentCheck.View> view;

    public EnvironmentCheckPresenter(@NotNull EnvironmentCheck.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final List<BasicApplication> getInstalledApplications() {
        EnvironmentCheck.View view = this.view.get();
        return view != null ? view.getInstalledPsApplications() : null;
    }

    private final List<String> getPsPackages() {
        EnvironmentCheck.View view = this.view.get();
        return view != null ? view.getOtherPsPackages() : null;
    }

    private final boolean isOtherPsApplicationInstalled(List<String> list) {
        getInstalledApplications();
        for (String str : list) {
            List<BasicApplication> installedApplications = getInstalledApplications();
            if (installedApplications == null) {
                Intrinsics.throwNpe();
            }
            for (BasicApplication basicApplication : installedApplications) {
                if (Text.equals(basicApplication.getPackageName(), str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void clearApplicationCache() {
        List<String> list = null;
        this.psPackages = list;
        this.installedApplications = list;
    }

    public final boolean getDialogWasClosed() {
        return this.dialogWasClosed;
    }

    public final void onAppClose() {
        this.dialogWasClosed = true;
        EnvironmentCheck.View view = this.view.get();
        if (view != null) {
            view.close();
        }
    }

    public final void onApplicationsUninstall() {
        this.dialogWasClosed = true;
        EnvironmentCheck.View view = this.view.get();
        if (view != null) {
            view.uninstall(view.getInstalledPsApplications());
        }
    }

    public final void setDialogWasClosed(boolean z) {
        this.dialogWasClosed = z;
    }

    public final void viewCreated() {
        clearApplicationCache();
        List<BasicApplication> list = null;
        if (getPsPackages() == null) {
            EnvironmentCheck.View view = this.view.get();
            this.psPackages = view != null ? view.getOtherPsPackages() : null;
        }
        if (getInstalledApplications() == null) {
            EnvironmentCheck.View view2 = this.view.get();
            if (view2 != null) {
                list = view2.getInstalledPsApplications();
            }
            this.installedApplications = list;
        }
        List<String> psPackages = getPsPackages();
        if (psPackages == null) {
            Intrinsics.throwNpe();
        }
        if (!isOtherPsApplicationInstalled(psPackages)) {
            return;
        }
        if (this.manager.shouldAlertTwice()) {
            EnvironmentCheck.View view3 = this.view.get();
            if (view3 != null) {
                view3.showUninstallAlert();
                return;
            }
            return;
        }
        EnvironmentCheck.View view4 = this.view.get();
        if (view4 != null) {
            view4.showAppClosingAlert();
        }
    }

    public final void viewDestroyed() {
        EnvironmentCheck.View view = this.view.get();
        if (view != null && view.isDialogShowing()) {
            view.dismissDialog();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void viewResumed() {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.intro.environment_check.EnvironmentCheckPresenter.viewResumed():void");
    }

    public final void viewStopped() {
        EnvironmentCheck.View view = this.view.get();
        if (view != null && view.isDialogShowing()) {
            view.dismissDialog();
        }
    }
}
