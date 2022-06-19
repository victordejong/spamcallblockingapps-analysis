package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider.class */
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

    public String getInstallerPackageName(Context context) {
        String str;
        synchronized (this) {
            if (this.installerPackageName == null) {
                this.installerPackageName = loadInstallerPackageName(context);
            }
            str = "".equals(this.installerPackageName) ? null : this.installerPackageName;
        }
        return str;
    }
}
