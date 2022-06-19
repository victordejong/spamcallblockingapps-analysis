package com.huawei.hms.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.AndroidException;
import com.huawei.hms.support.log.HMSLog;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/PackageManagerHelper.class */
public class PackageManagerHelper {

    /* renamed from: a */
    public final PackageManager f7871a;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/PackageManagerHelper$PackageStates.class */
    public enum PackageStates {
        ENABLED,
        DISABLED,
        NOT_INSTALLED,
        SPOOF
    }

    public PackageManagerHelper(Context context) {
        this.f7871a = context.getPackageManager();
    }

    /* renamed from: a */
    public final byte[] m37137a(String str) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0) {
                return signatureArr[0].toByteArray();
            }
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to get application signature certificate fingerprint.");
            m8728C.append(e.getMessage());
            HMSLog.m37195e("PackageManagerHelper", m8728C.toString());
        } catch (RuntimeException e2) {
            HMSLog.m37194e("PackageManagerHelper", "Failed to get application signature certificate fingerprint.", e2);
        }
        HMSLog.m37195e("PackageManagerHelper", "Failed to get application signature certificate fingerprint.");
        return new byte[0];
    }

    public String getApplicationName(String str) {
        try {
            return this.f7871a.getApplicationLabel(this.f7871a.getApplicationInfo(str, 128)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("PackageManagerHelper", "Failed to get application name for " + str);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public long getPackageFirstInstallTime(String str) {
        char c;
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 128);
            c = 0;
            if (packageInfo != null) {
                c = packageInfo.firstInstallTime;
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException e) {
            c = 0;
        }
        return c;
    }

    public String getPackageSignature(String str) {
        byte[] m37137a = m37137a(str);
        if (m37137a == null || m37137a.length == 0) {
            return null;
        }
        return HEX.encodeHexString(SHA256.digest(m37137a), true);
    }

    public PackageStates getPackageStates(String str) {
        if (TextUtils.isEmpty(str)) {
            return PackageStates.NOT_INSTALLED;
        }
        try {
            return this.f7871a.getApplicationInfo(str, 128).enabled ? PackageStates.ENABLED : PackageStates.DISABLED;
        } catch (PackageManager.NameNotFoundException e) {
            return PackageStates.NOT_INSTALLED;
        }
    }

    public int getPackageVersionCode(String str) {
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 16);
            if (packageInfo == null) {
                return 0;
            }
            return packageInfo.versionCode;
        } catch (AndroidException e) {
            HMSLog.m37195e("PackageManagerHelper", "get PackageVersionCode failed " + e);
            return 0;
        } catch (RuntimeException e2) {
            HMSLog.m37194e("PackageManagerHelper", "get PackageVersionCode failed", e2);
            return 0;
        }
    }

    public String getPackageVersionName(String str) {
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 16);
            if (packageInfo == null) {
                return "";
            }
            String str2 = packageInfo.versionName;
            return str2 != null ? str2 : "";
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        } catch (RuntimeException e2) {
            HMSLog.m37194e("PackageManagerHelper", "get getPackageVersionName failed", e2);
            return "";
        }
    }

    public boolean hasProvider(String str, String str2) {
        ProviderInfo[] providerInfoArr;
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 8);
            if (packageInfo == null || (providerInfoArr = packageInfo.providers) == null) {
                return false;
            }
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (str2.equals(providerInfo.authority)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException | RuntimeException e) {
            return false;
        }
    }

    public boolean isPackageFreshInstall(String str) {
        boolean z;
        try {
            PackageInfo packageInfo = this.f7871a.getPackageInfo(str, 128);
            z = false;
            if (packageInfo != null) {
                z = false;
                if (packageInfo.firstInstallTime == packageInfo.lastUpdateTime) {
                    z = true;
                }
            }
        } catch (PackageManager.NameNotFoundException | RuntimeException e) {
            z = false;
        }
        return z;
    }

    public boolean verifyPackageArchive(String str, String str2, String str3) {
        Exception e;
        PackageInfo packageArchiveInfo = this.f7871a.getPackageArchiveInfo(str, 64);
        if (packageArchiveInfo == null || packageArchiveInfo.signatures.length <= 0 || !str2.equals(packageArchiveInfo.packageName)) {
            return false;
        }
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            try {
                inputStream3 = IOUtils.toInputStream(packageArchiveInfo.signatures[0].toByteArray());
                inputStream = inputStream3;
                inputStream2 = inputStream3;
                return str3.equalsIgnoreCase(HEX.encodeHexString(SHA256.digest(CertificateFactory.getInstance("X.509").generateCertificate(inputStream3).getEncoded()), true));
            } finally {
                IOUtils.closeQuietly(inputStream3);
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = inputStream2;
            InputStream inputStream4 = inputStream;
            StringBuilder sb = new StringBuilder();
            InputStream inputStream5 = inputStream;
            sb.append("Failed to get application signature certificate fingerprint.");
            InputStream inputStream6 = inputStream;
            sb.append(e.getMessage());
            InputStream inputStream7 = inputStream;
            HMSLog.m37195e("PackageManagerHelper", sb.toString());
            inputStream3 = inputStream;
            return false;
        } catch (CertificateException e3) {
            e = e3;
            InputStream inputStream42 = inputStream;
            StringBuilder sb2 = new StringBuilder();
            InputStream inputStream52 = inputStream;
            sb2.append("Failed to get application signature certificate fingerprint.");
            InputStream inputStream62 = inputStream;
            sb2.append(e.getMessage());
            InputStream inputStream72 = inputStream;
            HMSLog.m37195e("PackageManagerHelper", sb2.toString());
            inputStream3 = inputStream;
            return false;
        }
    }
}
