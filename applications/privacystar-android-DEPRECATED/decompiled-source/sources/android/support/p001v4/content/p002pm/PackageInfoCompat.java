package android.support.p001v4.content.p002pm;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.content.pm.PackageInfoCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/PackageInfoCompat.class */
public final class PackageInfoCompat {
    private PackageInfoCompat() {
    }

    public static long getLongVersionCode(@NonNull PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }
}
