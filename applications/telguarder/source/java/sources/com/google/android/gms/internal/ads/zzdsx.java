package com.google.android.gms.internal.ads;

import android.os.Build;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsx.class */
public final class zzdsx {
    private static final byte[] zzhsj = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};
    private static final byte[] zzhsk = {16, 57, 56, -18, 69, 55, -27, -98, -114, -25, -110, -10, 84, 80, 79, -72, 52, 111, -58, -77, 70, -48, -69, -60, 65, 95, -61, 57, -4, -4, -114, -63};
    private final byte[] zzhsh = zzhsk;
    private final byte[] zzhsi = zzhsj;

    private static X509Certificate zzhd(String str) throws GeneralSecurityException {
        Throwable e;
        try {
            X509Certificate[][] zza = zzb.zza(str);
            if (zza.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            return zza[0][0];
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

    public final boolean zzb(File file) throws GeneralSecurityException {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(zzhd(file.getAbsolutePath()).getEncoded());
        if (!Arrays.equals(this.zzhsi, digest)) {
            return !POBConstants.KEY_USER.equals(Build.TYPE) && Arrays.equals(this.zzhsh, digest);
        }
        return true;
    }
}
