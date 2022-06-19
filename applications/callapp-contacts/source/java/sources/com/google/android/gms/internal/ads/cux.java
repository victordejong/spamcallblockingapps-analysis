package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cux.class */
public final class cux {

    /* renamed from: c */
    private static final byte[] f46598c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: d */
    private static final byte[] f46599d = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: a */
    private final byte[] f46600a = f46599d;

    /* renamed from: b */
    private final byte[] f46601b = f46598c;

    /* renamed from: a */
    private static X509Certificate m17194a(String str) throws GeneralSecurityException {
        Throwable e;
        try {
            X509Certificate[][] m13968a = C13072yl.m13968a(str);
            if (m13968a.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            return m13968a[0][0];
        } catch (zzh e2) {
            throw new GeneralSecurityException("Package is not signed", e2);
        } catch (IOException e3) {
            e = e3;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        } catch (RuntimeException e4) {
            e = e4;
            throw new GeneralSecurityException("Failed to verify signatures", e);
        }
    }

    /* renamed from: a */
    public final boolean m17195a(File file) throws GeneralSecurityException {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(m17194a(file.getAbsolutePath()).getEncoded());
        if (!Arrays.equals(this.f46601b, digest)) {
            return !"user".equals(Build.TYPE) && Arrays.equals(this.f46600a, digest);
        }
        return true;
    }
}
