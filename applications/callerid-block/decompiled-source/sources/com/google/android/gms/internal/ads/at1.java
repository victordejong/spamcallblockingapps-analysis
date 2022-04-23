package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/at1.class */
public final class at1 {

    /* renamed from: c */
    protected static final byte[] f6082c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: d */
    protected static final byte[] f6083d = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: a */
    private final byte[] f6084a = f6083d;

    /* renamed from: b */
    private final byte[] f6085b = f6082c;

    /* renamed from: a */
    public final boolean m8089a(File file) {
        Throwable e;
        try {
            X509Certificate[][] a = mk2.m6556a(file.getAbsolutePath());
            if (a.length == 1) {
                byte[] digest = MessageDigest.getInstance("SHA-256").digest(a[0][0].getEncoded());
                boolean z = true;
                if (!Arrays.equals(this.f6085b, digest)) {
                    if ("user".equals(Build.TYPE)) {
                        z = false;
                    } else if (!Arrays.equals(this.f6084a, digest)) {
                        return false;
                    } else {
                        z = true;
                    }
                }
                return z;
            }
            throw new GeneralSecurityException("APK has more than one signature.");
        } catch (zzf e2) {
            throw new GeneralSecurityException("Package is not signed", e2);
        } catch (IOException e3) {
            e = e3;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e4) {
            e = e4;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        }
    }
}
