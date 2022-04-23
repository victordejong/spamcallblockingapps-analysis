package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdta.class */
public final class zzdta {
    @VisibleForTesting

    /* renamed from: c */
    public static final byte[] f27812c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};
    @VisibleForTesting

    /* renamed from: d */
    public static final byte[] f27813d = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};

    /* renamed from: a */
    public final byte[] f27814a = f27813d;

    /* renamed from: b */
    public final byte[] f27815b = f27812c;

    /* renamed from: a */
    public static X509Certificate m13223a(String str) throws GeneralSecurityException {
        Throwable e;
        try {
            X509Certificate[][] a = zzb.m15987a(str);
            if (a.length == 1) {
                return a[0][0];
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

    /* renamed from: a */
    public final boolean m13224a(File file) throws GeneralSecurityException {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(m13223a(file.getAbsolutePath()).getEncoded());
        if (!Arrays.equals(this.f27815b, digest)) {
            return !"user".equals(Build.TYPE) && Arrays.equals(this.f27814a, digest);
        }
        return true;
    }
}
