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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFKeystoreWrapper.class */
public class AFKeystoreWrapper {

    /* renamed from: ǃ  reason: contains not printable characters */
    KeyStore f33;

    /* renamed from: Ι  reason: contains not printable characters */
    private Context f35;

    /* renamed from: ι  reason: contains not printable characters */
    final Object f36 = new Object();

    /* renamed from: ɩ  reason: contains not printable characters */
    String f34 = "";

    /* renamed from: ı  reason: contains not printable characters */
    int f32 = 0;

    public AFKeystoreWrapper(Context context) {
        this.f35 = context;
        AFLogger.afInfoLog("Initialising KeyStore..");
        try {
            KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
            this.f33 = instance;
            instance.load(null);
        } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.afErrorLog("Couldn't load keystore instance of type: AndroidKeyStore", e);
        }
    }

    /* renamed from: ǃ  reason: contains not printable characters */
    private static boolean m785(String str) {
        return str.startsWith("com.appsflyer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ǃ  reason: contains not printable characters */
    public final String m786() {
        StringBuilder sb = new StringBuilder();
        sb.append("com.appsflyer,");
        synchronized (this.f36) {
            sb.append("KSAppsFlyerId=");
            sb.append(this.f34);
            sb.append(",");
            sb.append("KSAppsFlyerRICounter=");
            sb.append(this.f32);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ɩ  reason: contains not printable characters */
    public final String m787() {
        String str;
        synchronized (this.f36) {
            str = this.f34;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Ι  reason: contains not printable characters */
    public final void m788(String str) {
        AlgorithmParameterSpec algorithmParameterSpec;
        AFLogger.afInfoLog("Creating a new key with alias: ".concat(String.valueOf(str)));
        try {
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            instance2.add(1, 5);
            synchronized (this.f36) {
                if (!this.f33.containsAlias(str)) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        algorithmParameterSpec = new KeyGenParameterSpec.Builder(str, 3).setCertificateSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setCertificateSerialNumber(BigInteger.ONE).setCertificateNotBefore(instance.getTime()).setCertificateNotAfter(instance2.getTime()).build();
                    } else {
                        algorithmParameterSpec = null;
                        if (Build.VERSION.SDK_INT >= 18) {
                            algorithmParameterSpec = null;
                            if (!AndroidUtils.m820()) {
                                algorithmParameterSpec = new KeyPairGeneratorSpec.Builder(this.f35).setAlias(str).setSubject(new X500Principal("CN=AndroidSDK, O=AppsFlyer")).setSerialNumber(BigInteger.ONE).setStartDate(instance.getTime()).setEndDate(instance2.getTime()).build();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        r0 = r0.split(",");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0046, code lost:
        if (r0.length != 3) goto L_0x00d2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
        com.appsflyer.AFLogger.afInfoLog("Found a matching AF key with alias:\n".concat(java.lang.String.valueOf(r0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        r0 = r0[1].trim().split("=");
        r0 = r0[2].trim().split("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
        if (r0.length != 2) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007a, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
        if (r0.length != 2) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        r4.f34 = r0[1].trim();
        r4.f32 = java.lang.Integer.parseInt(r0[1].trim());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
        r6 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
        r0 = new java.lang.StringBuilder("Couldn't list KeyStore Aliases: ");
        r0.append(r6.getClass().getName());
        com.appsflyer.AFLogger.afErrorLog(r0.toString(), r6);
     */
    /* renamed from: Ι  reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m789() {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AFKeystoreWrapper.m789():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ι  reason: contains not printable characters */
    public final int m790() {
        int i;
        synchronized (this.f36) {
            i = this.f32;
        }
        return i;
    }
}
