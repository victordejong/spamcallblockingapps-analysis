package androidx.core.content.p003pm;

import android.content.pm.PackageInfo;
import android.os.Build;
/* renamed from: androidx.core.content.pm.PackageInfoCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/content/pm/PackageInfoCompat.class */
public final class PackageInfoCompat {
    private PackageInfoCompat() {
    }

    public static long getLongVersionCode(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }
}
