package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ir2.class */
public final class ir2 {

    /* renamed from: a */
    protected static final byte[] f24406a = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: b */
    protected static final byte[] f24407b = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: c */
    private final byte[] f24408c = f24407b;

    /* renamed from: d */
    private final byte[] f24409d = f24406a;

    /* renamed from: a */
    public final boolean m14295a(File file) {
        Throwable e;
        try {
            X509Certificate[][] m13057a = my3.m13057a(file.getAbsolutePath());
            if (m13057a.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(m13057a[0][0].getEncoded());
            boolean z = true;
            if (!Arrays.equals(this.f24409d, digest)) {
                if ("user".equals(Build.TYPE)) {
                    z = false;
                } else if (!Arrays.equals(this.f24408c, digest)) {
                    return false;
                } else {
                    z = true;
                }
            }
            return z;
        } catch (zzvf e2) {
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
