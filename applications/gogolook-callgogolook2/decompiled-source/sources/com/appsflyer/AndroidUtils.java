package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AndroidUtils.class */
public class AndroidUtils {
    public static boolean isPermissionAvailable(Context context, String str) {
        if (str != null) {
            int checkPermission = context.checkPermission(str, Process.myPid(), Process.myUid());
            StringBuilder sb = new StringBuilder("is Permission Available: ");
            sb.append(str);
            sb.append("; res: ");
            sb.append(checkPermission);
            AFLogger.afRDLog(sb.toString());
            return checkPermission == 0;
        }
        throw new IllegalArgumentException("permission is null");
    }

    public static String signature(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException, CertificateException, NoSuchAlgorithmException {
        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageManager.getPackageInfo(str, 64).signatures[0].toByteArray()));
        MessageDigest instance = MessageDigest.getInstance("SHA256");
        instance.update(x509Certificate.getEncoded());
        return String.format("%032X", new BigInteger(1, instance.digest()));
    }

    /* renamed from: ɩ */
    public static boolean m36273() {
        return Build.BRAND.equals("OPPO");
    }

    /* renamed from: ɩ */
    public static boolean m36272(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:2|(16:4|(2:5|(7:7|(1:9)(1:10)|11|(3:13|(1:15)(2:16|(1:18)(2:19|(1:21)))|22)|23|(2:28|57)(2:27|58)|29)(0))|31|(1:33)|36|(1:40)|41|(1:43)|44|(1:46)|47|(1:49)|50|(1:52)|53|54)(1:30)|55|31|(0)|36|(2:38|40)|41|(0)|44|(0)|47|(0)|50|(0)|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0135, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0136, code lost:
        com.appsflyer.AFLogger.afErrorLog("Could not fetch install time. ", r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ec A[Catch: Exception -> 0x0135, TRY_LEAVE, TryCatch #0 {Exception -> 0x0135, blocks: (B:31:0x00e1, B:33:0x00ec), top: B:55:0x00e1 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x019f  */
    /* renamed from: ι */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m36271(android.content.Context r5, java.util.Map<java.lang.String, java.lang.String> r6, android.net.Uri r7) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AndroidUtils.m36271(android.content.Context, java.util.Map, android.net.Uri):java.util.Map");
    }
}
