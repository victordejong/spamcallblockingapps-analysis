package androidx.core.content.a;

import android.content.pm.PackageInfo;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/a.class */
public final class a {
    private a() {
    }

    public static long a(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }
}
