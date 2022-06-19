package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Process;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1433a.p1434a.C22086n;
/* renamed from: com.appsflyer.internal.ac */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ac.class */
public final class C0714ac {
    @Nullable
    public final Map<String, String> AFInAppEventParameterName;
    @NonNull
    public final List<C22086n> AFInAppEventType;
    private final boolean valueOf;
    private final boolean values;

    public C0714ac() {
    }

    public C0714ac(boolean z, boolean z2, List<C22086n> list, Map<String, String> map) {
        this.valueOf = z;
        this.values = z2;
        this.AFInAppEventType = list;
        this.AFInAppEventParameterName = map;
    }

    public static boolean AFInAppEventParameterName() {
        return Build.BRAND.equals("OPPO");
    }

    public static boolean AFKeystoreWrapper(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    public static boolean AFKeystoreWrapper(Context context, String str) {
        if (str != null) {
            int checkPermission = context.checkPermission(str, Process.myPid(), Process.myUid());
            StringBuilder sb = new StringBuilder("is Permission Available: ");
            sb.append(str);
            sb.append("; res: ");
            sb.append(checkPermission);
            AFLogger.AFInAppEventParameterName(sb.toString());
            return checkPermission == 0;
        }
        throw new IllegalArgumentException("permission is null");
    }

    public static long valueOf(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return 0L;
        }
    }

    public static String values(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return "";
        }
    }

    public static String values(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException, CertificateException, NoSuchAlgorithmException {
        Signature[] signatureArr = packageManager.getPackageInfo(str, 64).signatures;
        if (signatureArr == null) {
            return null;
        }
        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()));
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        messageDigest.update(x509Certificate.getEncoded());
        return String.format("%032X", new BigInteger(1, messageDigest.digest()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0072, code lost:
        if (r0.equals(com.huawei.hms.opendevice.AbstractC2405c.f7629a) != false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> values(android.content.Context r5, java.util.Map<java.lang.String, java.lang.String> r6, android.net.Uri r7) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0714ac.values(android.content.Context, java.util.Map, android.net.Uri):java.util.Map");
    }

    public final boolean AFInAppEventType() {
        return this.values;
    }

    public final boolean AFKeystoreWrapper() {
        return this.valueOf;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0714ac.class != obj.getClass()) {
            return false;
        }
        C0714ac c0714ac = (C0714ac) obj;
        if (this.valueOf != c0714ac.valueOf || this.values != c0714ac.values || !this.AFInAppEventType.equals(c0714ac.AFInAppEventType)) {
            return false;
        }
        Map<String, String> map = this.AFInAppEventParameterName;
        Map<String, String> map2 = c0714ac.AFInAppEventParameterName;
        return map != null ? map.equals(map2) : map2 == null;
    }

    public final int hashCode() {
        boolean z = this.valueOf;
        boolean z2 = this.values;
        int hashCode = this.AFInAppEventType.hashCode();
        Map<String, String> map = this.AFInAppEventParameterName;
        return ((hashCode + ((((z ? 1 : 0) * 31) + (z2 ? 1 : 0)) * 31)) * 31) + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArsValidateRequestData{isSandbox=");
        sb.append(this.valueOf);
        sb.append(", isHistory=");
        sb.append(this.values);
        sb.append(", subscriptions=");
        sb.append(this.AFInAppEventType);
        sb.append(", additionalParams=");
        sb.append(this.AFInAppEventParameterName);
        sb.append('}');
        return sb.toString();
    }
}
