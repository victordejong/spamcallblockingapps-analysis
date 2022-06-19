package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.C11956e;
import com.google.android.gms.common.p352d.C11946c;
/* renamed from: com.google.android.gms.common.util.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/s.class */
public final class C12115s {
    private C12115s() {
    }

    /* renamed from: a */
    public static boolean m19006a(Context context, int i) {
        if (!m19005a(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
            C11956e m19247a = C11956e.m19247a(context);
            if (packageInfo == null) {
                return false;
            }
            if (C11956e.m19246a(packageInfo, false)) {
                return true;
            }
            if (!C11956e.m19246a(packageInfo, true)) {
                return false;
            }
            if (C11943d.honorsDebugCertificates(m19247a.f39447a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m19005a(Context context, int i, String str) {
        return C11946c.m19258a(context).m19264a(i, str);
    }
}
