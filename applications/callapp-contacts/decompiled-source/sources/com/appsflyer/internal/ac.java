package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import io.objectbox.model.PropertyFlags;
import java.security.MessageDigest;
import java.util.Formatter;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ac.class */
public final class ac {
    ac() {
    }

    /* renamed from: ı  reason: contains not printable characters */
    private static String m928(byte[] bArr) {
        Formatter formatter = new Formatter();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            formatter.format("%02x", Byte.valueOf(bArr[i]));
        }
        String obj = formatter.toString();
        formatter.close();
        return obj;
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public static String m929(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        sb.append(j);
        return m930(sb.toString());
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    public static String m930(String str) {
        String str2;
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.reset();
            instance.update(str.getBytes("UTF-8"));
            str2 = m928(instance.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA1");
            AFLogger.afErrorLog(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: Ι  reason: contains not printable characters */
    public static String m931(String str) {
        String str2;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(str.getBytes("UTF-8"));
            str2 = m928(instance.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to MD5");
            AFLogger.afErrorLog(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: ι  reason: contains not printable characters */
    public static String m932(String str) {
        String str2;
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toString((b2 & 255) + PropertyFlags.INDEX_PARTIAL_SKIP_NULL, 16).substring(1));
            }
            str2 = sb.toString();
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder("Error turning ");
            sb2.append(str.substring(0, 6));
            sb2.append(".. to SHA-256");
            AFLogger.afErrorLog(sb2.toString(), e);
            str2 = null;
        }
        return str2;
    }
}
