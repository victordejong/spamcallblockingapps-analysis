package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider.class */
class InstallerPackageNameProvider {
    private static final String NO_INSTALLER_PACKAGE_NAME = "";
    private String installerPackageName;

    private static String loadInstallerPackageName(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        String str = installerPackageName;
        if (installerPackageName == null) {
            str = "";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getInstallerPackageName(Context context) {
        synchronized (this) {
            if (this.installerPackageName == null) {
                this.installerPackageName = loadInstallerPackageName(context);
            }
            if ("".equals(this.installerPackageName)) {
                return null;
            }
            return this.installerPackageName;
        }
    }
}
