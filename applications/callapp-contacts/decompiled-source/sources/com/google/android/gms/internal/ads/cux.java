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

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f26441c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f26442d = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f26443a = f26442d;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f26444b = f26441c;

    private static X509Certificate a(String str) throws GeneralSecurityException {
        Throwable e;
        try {
            X509Certificate[][] a2 = yl.a(str);
            if (a2.length == 1) {
                return a2[0][0];
            }
            throw new GeneralSecurityException("APK has more than one signature.");
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

    public final boolean a(File file) throws GeneralSecurityException {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(a(file.getAbsolutePath()).getEncoded());
        if (!Arrays.equals(this.f26444b, digest)) {
            return !"user".equals(Build.TYPE) && Arrays.equals(this.f26443a, digest);
        }
        return true;
    }
}
