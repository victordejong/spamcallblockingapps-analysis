package com.google.android.gms.common.util;

import android.app.AppOpsManager;
import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/UidVerifier.class */
public final class UidVerifier {
    private UidVerifier() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        if (com.google.android.gms.common.GooglePlayServicesUtilLight.honorsDebugCertificates(r0.f5679a) != false) goto L12;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m38771a(android.content.Context r4, int r5) {
        /*
            r0 = r4
            r1 = r5
            java.lang.String r2 = "com.google.android.gms"
            boolean r0 = m38770b(r0, r1, r2)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "com.google.android.gms"
            r2 = 64
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5f
            r8 = r0
            r0 = r4
            com.google.android.gms.common.GoogleSignatureVerifier r0 = com.google.android.gms.common.GoogleSignatureVerifier.m39061a(r0)
            r4 = r0
            r0 = r4
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r8
            if (r0 != 0) goto L35
            r0 = r7
            r6 = r0
            goto L5d
        L35:
            r0 = r8
            r1 = 0
            boolean r0 = com.google.android.gms.common.GoogleSignatureVerifier.m39058d(r0, r1)
            if (r0 == 0) goto L43
        L3e:
            r0 = 1
            r6 = r0
            goto L5d
        L43:
            r0 = r7
            r6 = r0
            r0 = r8
            r1 = 1
            boolean r0 = com.google.android.gms.common.GoogleSignatureVerifier.m39058d(r0, r1)
            if (r0 == 0) goto L5d
            r0 = r7
            r6 = r0
            r0 = r4
            android.content.Context r0 = r0.f5679a
            boolean r0 = com.google.android.gms.common.GooglePlayServicesUtilLight.honorsDebugCertificates(r0)
            if (r0 == 0) goto L5d
            goto L3e
        L5d:
            r0 = r6
            return r0
        L5f:
            r4 = move-exception
            java.lang.String r0 = "UidVerifier"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.UidVerifier.m38771a(android.content.Context, int):boolean");
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m38770b(Context context, int i, String str) {
        boolean z;
        AppOpsManager appOpsManager;
        PackageManagerWrapper m38764a = Wrappers.m38764a(context);
        Objects.requireNonNull(m38764a);
        try {
            appOpsManager = (AppOpsManager) m38764a.f6151a.getSystemService("appops");
        } catch (SecurityException e) {
            z = false;
        }
        if (appOpsManager != null) {
            appOpsManager.checkPackage(i, str);
            z = true;
            return z;
        }
        throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
    }
}
