package androidx.browser.trusted;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/PackageIdentityUtils.class */
public class PackageIdentityUtils {
    private static final String TAG = "PackageIdentity";

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/PackageIdentityUtils$Api28Implementation.class */
    public static class Api28Implementation implements SignaturesCompat {
        Api28Implementation() {
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public List<byte[]> getFingerprintsForPackage(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
            ArrayList arrayList = new ArrayList();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                for (Signature signature : signingInfo.getApkContentsSigners()) {
                    arrayList.add(PackageIdentityUtils.getCertificateSHA256Fingerprint(signature));
                }
            } else {
                arrayList.add(PackageIdentityUtils.getCertificateSHA256Fingerprint(signingInfo.getSigningCertificateHistory()[0]));
            }
            return arrayList;
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public boolean packageMatchesToken(String str, PackageManager packageManager, TokenContents tokenContents) throws PackageManager.NameNotFoundException, IOException {
            List<byte[]> fingerprintsForPackage;
            if (tokenContents.getPackageName().equals(str) && (fingerprintsForPackage = getFingerprintsForPackage(str, packageManager)) != null) {
                return fingerprintsForPackage.size() == 1 ? packageManager.hasSigningCertificate(str, tokenContents.getFingerprint(0), 1) : tokenContents.equals(TokenContents.create(str, fingerprintsForPackage));
            }
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/PackageIdentityUtils$Pre28Implementation.class */
    public static class Pre28Implementation implements SignaturesCompat {
        Pre28Implementation() {
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public List<byte[]> getFingerprintsForPackage(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            ArrayList arrayList = new ArrayList(packageInfo.signatures.length);
            for (Signature signature : packageInfo.signatures) {
                byte[] certificateSHA256Fingerprint = PackageIdentityUtils.getCertificateSHA256Fingerprint(signature);
                if (certificateSHA256Fingerprint == null) {
                    return null;
                }
                arrayList.add(certificateSHA256Fingerprint);
            }
            return arrayList;
        }

        @Override // androidx.browser.trusted.PackageIdentityUtils.SignaturesCompat
        public boolean packageMatchesToken(String str, PackageManager packageManager, TokenContents tokenContents) throws IOException, PackageManager.NameNotFoundException {
            List<byte[]> fingerprintsForPackage;
            if (str.equals(tokenContents.getPackageName()) && (fingerprintsForPackage = getFingerprintsForPackage(str, packageManager)) != null) {
                return tokenContents.equals(TokenContents.create(str, fingerprintsForPackage));
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/PackageIdentityUtils$SignaturesCompat.class */
    public interface SignaturesCompat {
        List<byte[]> getFingerprintsForPackage(String str, PackageManager packageManager) throws PackageManager.NameNotFoundException;

        boolean packageMatchesToken(String str, PackageManager packageManager, TokenContents tokenContents) throws IOException, PackageManager.NameNotFoundException;
    }

    private PackageIdentityUtils() {
    }

    static byte[] getCertificateSHA256Fingerprint(Signature signature) {
        try {
            return MessageDigest.getInstance("SHA256").digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static List<byte[]> getFingerprintsForPackage(String str, PackageManager packageManager) {
        try {
            return getImpl().getFingerprintsForPackage(str, packageManager);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Could not get fingerprint for package.", e);
            return null;
        }
    }

    private static SignaturesCompat getImpl() {
        return Build.VERSION.SDK_INT >= 28 ? new Api28Implementation() : new Pre28Implementation();
    }

    public static boolean packageMatchesToken(String str, PackageManager packageManager, TokenContents tokenContents) {
        try {
            return getImpl().packageMatchesToken(str, packageManager, tokenContents);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            Log.e(TAG, "Could not check if package matches token.", e);
            return false;
        }
    }
}
