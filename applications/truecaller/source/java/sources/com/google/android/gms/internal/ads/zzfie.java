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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfie.class */
public final class zzfie {
    @VisibleForTesting
    public static final byte[] zza = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};
    @VisibleForTesting
    public static final byte[] zzb = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};
    private final byte[] zzc = zzb;
    private final byte[] zzd = zza;

    public final boolean zza(File file) throws GeneralSecurityException {
        Throwable e;
        try {
            X509Certificate[][] zza2 = zzvi.zza(file.getAbsolutePath());
            if (zza2.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(zza2[0][0].getEncoded());
            boolean z = true;
            if (!Arrays.equals(this.zzd, digest)) {
                if ("user".equals(Build.TYPE)) {
                    z = false;
                } else if (!Arrays.equals(this.zzc, digest)) {
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
