package com.google.android.libraries.places.internal;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzde.class */
public final class zzde {
    public static String zza(PackageManager packageManager, String str) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length != 0 && signatureArr[0] != null) {
                return zza(signatureArr[0]);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Unable to get certificate fingerprint for package: ".concat(valueOf);
                return null;
            }
            new String("Unable to get certificate fingerprint for package: ");
            return null;
        }
    }

    private static String zza(Signature signature) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-1").digest(signature.toByteArray());
            return zzha.zza().zza(digest, 0, digest.length);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
