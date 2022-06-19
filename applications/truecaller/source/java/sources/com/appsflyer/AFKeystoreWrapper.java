package com.appsflyer;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Calendar;
import javax.security.auth.x500.X500Principal;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFKeystoreWrapper.class */
public class AFKeystoreWrapper {
    private Context AFInAppEventType;
    public KeyStore AFKeystoreWrapper;
    public final Object AFInAppEventParameterName = new Object();
    public String valueOf = "";
    public int values = 0;

    public AFKeystoreWrapper(Context context) {
        this.AFInAppEventType = context;
        AFLogger.valueOf("Initialising KeyStore..");
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.AFKeystoreWrapper = keyStore;
            keyStore.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.valueOf("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    private static boolean valueOf(String str) {
        return str.startsWith("com.appsflyer");
    }

    public final String AFInAppEventParameterName() {
        String str;
        synchronized (this.AFInAppEventParameterName) {
            str = this.valueOf;
        }
        return str;
    }

    public final String AFInAppEventType() {
        StringBuilder m8728C = C22128a.m8728C("com.appsflyer,");
        synchronized (this.AFInAppEventParameterName) {
            m8728C.append("KSAppsFlyerId=");
            m8728C.append(this.valueOf);
            m8728C.append(",");
            m8728C.append("KSAppsFlyerRICounter=");
            m8728C.append(this.values);
        }
        return m8728C.toString();
    }

    public final void AFKeystoreWrapper(String str) {
        AFLogger.valueOf("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.add(1, 5);
            synchronized (this.AFInAppEventParameterName) {
                if (!this.AFKeystoreWrapper.containsAlias(str)) {
                    KeyGenParameterSpec build = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(calendar.getTime()).setCertificateNotAfter(calendar2.getTime()).build();
                    KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    keyPairGenerator.initialize(build);
                    keyPairGenerator.generateKeyPair();
                } else {
                    AFLogger.valueOf("Alias already exists: ".concat(String.valueOf(str)));
                }
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Exception ");
            sb.append(th.getMessage());
            sb.append(" occurred");
            AFLogger.valueOf(sb.toString(), th);
        }
    }

    public final int valueOf() {
        int i;
        synchronized (this.AFInAppEventParameterName) {
            i = this.values;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        r0 = r0.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
        if (r0.length != 3) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
        com.appsflyer.AFLogger.valueOf("Found a matching AF key with alias:\n".concat(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = r0[1].trim().split(com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER);
        r0 = r0[2].trim().split(com.huawei.hms.framework.common.ContainerUtils.KEY_VALUE_DELIMITER);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006f, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
        if (r0.length != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0078, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
        if (r0.length != 2) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        r4.valueOf = r0[1].trim();
        r4.values = java.lang.Integer.parseInt(r0[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009a, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009f, code lost:
        r6 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a0, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ab, code lost:
        r0 = new java.lang.StringBuilder("Couldn't list KeyStore Aliases: ");
        r0.append(r6.getClass().getName());
        com.appsflyer.AFLogger.valueOf(r0.toString(), r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean values() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AFKeystoreWrapper.values():boolean");
    }
}
