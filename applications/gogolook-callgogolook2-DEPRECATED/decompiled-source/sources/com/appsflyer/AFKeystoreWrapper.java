package com.appsflyer;

import android.content.Context;
import android.os.Build;
import android.security.KeyPairGeneratorSpec;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Calendar;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFKeystoreWrapper.class */
public class AFKeystoreWrapper {

    /* renamed from: ǃ */
    public Context f1637;

    /* renamed from: Ι */
    public KeyStore f1639;

    /* renamed from: ı */
    public final Object f1636 = new Object();

    /* renamed from: ι */
    public String f1640 = "";

    /* renamed from: ɩ */
    public int f1638 = 0;

    public AFKeystoreWrapper(Context context) {
        this.f1637 = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            this.f1639 = KeyStore.getInstance("AndroidKeyStore");
            this.f1639.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    /* renamed from: Ι */
    public static boolean m36290(String str) {
        return str.startsWith("com.appsflyer");
    }

    /* renamed from: ı */
    public final String m36295() {
        String str;
        synchronized (this.f1636) {
            str = this.f1640;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
        r0 = r0.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
        if (r0.length != 3) goto L_0x00d6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
        com.appsflyer.AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(java.lang.String.valueOf(r0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        r0 = r0[1].trim().split("=");
        r0 = r0[2].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0075, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
        if (r0.length != 2) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
        if (r0.length != 2) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0087, code lost:
        r4.f1640 = r0[1].trim();
        r4.f1638 = java.lang.Integer.parseInt(r0[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a5, code lost:
        r6 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
        r0 = new java.lang.StringBuilder("Couldn't list KeyStore Aliases: ");
        r0.append(r6.getClass().getName());
        com.appsflyer.AFLogger.afErrorLog(r0.toString(), r6);
     */
    /* renamed from: ǃ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m36294() {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AFKeystoreWrapper.m36294():boolean");
    }

    /* renamed from: ɩ */
    public final String m36293() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer,");
        synchronized (this.f1636) {
            sb.append("KSAppsFlyerId=");
            sb.append(this.f1640);
            sb.append(",");
            sb.append("KSAppsFlyerRICounter=");
            sb.append(this.f1638);
        }
        return sb.toString();
    }

    /* renamed from: ɩ */
    public final void m36292(String str) {
        AlgorithmParameterSpec algorithmParameterSpec;
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            instance2.add(1, 5);
            synchronized (this.f1636) {
                if (!this.f1639.containsAlias(str)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        algorithmParameterSpec = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(instance.getTime()).setCertificateNotAfter(instance2.getTime()).build();
                    } else {
                        algorithmParameterSpec = null;
                        if (Build.VERSION.SDK_INT >= 18) {
                            algorithmParameterSpec = null;
                            if (!AndroidUtils.m36273()) {
                                algorithmParameterSpec = new KeyPairGeneratorSpec.Builder(this.f1637).setAlias(str).setSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setSerialNumber(BigInteger.ONE).setStartDate(instance.getTime()).setEndDate(instance2.getTime()).build();
                            }
                        }
                    }
                    KeyPairGenerator instance3 = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
                    instance3.initialize(algorithmParameterSpec);
                    instance3.generateKeyPair();
                } else {
                    AFLogger.afInfoLog("Alias already exists: ".concat(String.valueOf(str)));
                }
            }
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Exception ");
            sb.append(th.getMessage());
            sb.append(" occurred");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    /* renamed from: Ι */
    public final int m36291() {
        int i;
        synchronized (this.f1636) {
            i = this.f1638;
        }
        return i;
    }
}
