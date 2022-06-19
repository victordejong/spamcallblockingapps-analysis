package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.tenor.android.core.constant.StringConstant;
import java.net.HttpURLConnection;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.appsflyer.internal.ah */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah.class */
public class RunnableC0725ah implements Runnable {
    private final AbstractC0783bu values;

    public RunnableC0725ah() {
    }

    public RunnableC0725ah(AbstractC0783bu abstractC0783bu) {
        this.values = abstractC0783bu;
    }

    public static String AFInAppEventParameterName(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            str2 = values(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA-256");
            AFLogger.valueOf(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    private static String AFInAppEventParameterName(byte[] bArr) {
        Formatter formatter = new Formatter();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            formatter.format("%02x", Byte.valueOf(bArr[i]));
        }
        String obj = formatter.toString();
        formatter.close();
        return obj;
    }

    public static String AFInAppEventType(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes(StringConstant.UTF8));
            str2 = AFInAppEventParameterName(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to MD5");
            AFLogger.valueOf(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    public static String AFKeystoreWrapper(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            messageDigest.update(str.getBytes(StringConstant.UTF8));
            str2 = AFInAppEventParameterName(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA1");
            AFLogger.valueOf(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    public static String valueOf(String str, String str2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes(), "HmacSHA256"));
            return values(mac.doFinal(str.getBytes())).toLowerCase();
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            AFLogger.values(e.getMessage(), e);
            return e.getMessage();
        }
    }

    private static String values(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.net.HttpURLConnection AFInAppEventParameterName() {
        /*
            Method dump skipped, instructions count: 747
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.RunnableC0725ah.AFInAppEventParameterName():java.net.HttpURLConnection");
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpURLConnection AFInAppEventParameterName = AFInAppEventParameterName();
        if (AFInAppEventParameterName != null) {
            AFInAppEventParameterName.disconnect();
        }
    }
}
