package com.appsflyer.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
/* renamed from: com.appsflyer.internal.z */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/z.class */
public final class C3451z {

    /* renamed from: ɩ */
    private static String f13019;

    C3451z() {
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m37939(java.io.File r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r5
            r8 = r0
            java.io.RandomAccessFile r0 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L63
            r9 = r0
            r0 = r5
            r8 = r0
            r0 = r9
            r1 = r4
            java.lang.String r2 = "r"
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L5f java.io.IOException -> L63
            r0 = r7
            r4 = r0
            r0 = r9
            long r0 = r0.length()     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L57
            int r0 = (int) r0     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L57
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L57
            r8 = r0
            r0 = r8
            r4 = r0
            r0 = r9
            r1 = r8
            r0.readFully(r1)     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L57
            r0 = r8
            r4 = r0
            r0 = r9
            r0.close()     // Catch: java.lang.Throwable -> L4f java.io.IOException -> L57
            r0 = r9
            r0.close()     // Catch: java.io.IOException -> L42
            r0 = r8
            r4 = r0
            goto L89
        L42:
            r4 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r4
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
            r0 = r8
            r4 = r0
            goto L89
        L4f:
            r4 = move-exception
            r0 = r9
            r8 = r0
            goto L9d
        L57:
            r8 = move-exception
            r0 = r8
            r7 = r0
            goto L69
        L5f:
            r4 = move-exception
            goto L9d
        L63:
            r7 = move-exception
            r0 = 0
            r4 = r0
            r0 = r6
            r9 = r0
        L69:
            r0 = r9
            r8 = r0
            java.lang.String r0 = "Exception while reading InstallationFile: "
            r1 = r7
            com.appsflyer.AFLogger.afErrorLog(r0, r1)     // Catch: java.lang.Throwable -> L5f
            r0 = r9
            if (r0 == 0) goto L89
            r0 = r9
            r0.close()     // Catch: java.io.IOException -> L80
            goto L89
        L80:
            r8 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r8
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
        L89:
            r0 = r4
            if (r0 == 0) goto L90
            goto L94
        L90:
            r0 = 0
            byte[] r0 = new byte[r0]
            r4 = r0
        L94:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            return r0
        L9d:
            r0 = r8
            if (r0 == 0) goto Lb3
            r0 = r8
            r0.close()     // Catch: java.io.IOException -> Laa
            goto Lb3
        Laa:
            r8 = move-exception
            java.lang.String r0 = "Exception while trying to close the InstallationFile"
            r1 = r8
            com.appsflyer.AFLogger.afErrorLog(r0, r1)
        Lb3:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C3451z.m37939(java.io.File):java.lang.String");
    }

    /* renamed from: Ι */
    public static String m37938(WeakReference<Context> weakReference) {
        synchronized (C3451z.class) {
            try {
                if (weakReference.get() == null) {
                    return f13019;
                }
                if (f13019 == null) {
                    String str = null;
                    if (weakReference.get() != null) {
                        str = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).getString("AF_INSTALLATION", null);
                    }
                    if (str != null) {
                        f13019 = str;
                    } else {
                        try {
                            File file = new File(weakReference.get().getFilesDir(), "AF_INSTALLATION");
                            if (!file.exists()) {
                                long currentTimeMillis = System.currentTimeMillis();
                                StringBuilder sb = new StringBuilder();
                                sb.append(currentTimeMillis);
                                sb.append(VerificationLanguage.REGION_PREFIX);
                                sb.append(Math.abs(new SecureRandom().nextLong()));
                                f13019 = sb.toString();
                            } else {
                                f13019 = m37939(file);
                                file.delete();
                            }
                            String str2 = f13019;
                            SharedPreferences.Editor edit = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).edit();
                            edit.putString("AF_INSTALLATION", str2);
                            edit.apply();
                        } catch (Exception e) {
                            AFLogger.afErrorLog("Error getting AF unique ID", e);
                        }
                    }
                    if (f13019 != null) {
                        AppsFlyerProperties.getInstance().set("uid", f13019);
                    }
                }
                return f13019;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
