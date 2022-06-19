package androidx.core.content.p034a;

import android.content.pm.PackageInfo;
import android.os.Build;
/* renamed from: androidx.core.content.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/a.class */
public final class C0789a {
    private C0789a() {
    }

    /* renamed from: a */
    public static long m44504a(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }
}
