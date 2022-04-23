package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/UidVerifier.class */
public final class UidVerifier {
    private UidVerifier() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14308a(Context context, int i) {
        if (!m14307b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return GoogleSignatureVerifier.m15040a(context).m15039b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException e) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    @KeepForSdk
    @TargetApi(19)
    /* renamed from: b */
    public static boolean m14307b(Context context, int i, String str) {
        return Wrappers.m14278a(context).m14279i(i, str);
    }
}
