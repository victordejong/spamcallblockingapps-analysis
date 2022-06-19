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
import java.util.Arrays;
/* renamed from: androidx.browser.trusted.b */
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b.class */
final class C0467b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.trusted.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$a.class */
    public static final class C0468a implements AbstractC0470c {
        C0468a() {
        }

        @Override // androidx.browser.trusted.C0467b.AbstractC0470c
        /* renamed from: a */
        public final boolean mo45441a(String str, PackageManager packageManager, C0472d c0472d) throws PackageManager.NameNotFoundException, IOException {
            if (!c0472d.m45439a().equals(str)) {
                return false;
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
            ArrayList arrayList = new ArrayList();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                for (Signature signature : signingInfo.getApkContentsSigners()) {
                    arrayList.add(C0467b.m45443a(signature));
                }
            } else {
                arrayList.add(C0467b.m45443a(signingInfo.getSigningCertificateHistory()[0]));
            }
            if (arrayList.size() != 1) {
                return c0472d.equals(C0472d.m45438a(str, arrayList));
            }
            c0472d.m45436b();
            if (c0472d.f1823a == null) {
                throw new IllegalStateException();
            }
            return packageManager.hasSigningCertificate(str, Arrays.copyOf(c0472d.f1823a.get(0), c0472d.f1823a.get(0).length), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.trusted.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$b.class */
    public static final class C0469b implements AbstractC0470c {
        C0469b() {
        }

        @Override // androidx.browser.trusted.C0467b.AbstractC0470c
        /* renamed from: a */
        public final boolean mo45441a(String str, PackageManager packageManager, C0472d c0472d) throws IOException, PackageManager.NameNotFoundException {
            ArrayList arrayList;
            if (!str.equals(c0472d.m45439a())) {
                return false;
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            ArrayList arrayList2 = new ArrayList(packageInfo.signatures.length);
            Signature[] signatureArr = packageInfo.signatures;
            int length = signatureArr.length;
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                byte[] m45443a = C0467b.m45443a(signatureArr[i]);
                if (m45443a == null) {
                    arrayList = null;
                    break;
                }
                arrayList2.add(m45443a);
                i++;
            }
            if (arrayList != null) {
                return c0472d.equals(C0472d.m45438a(str, arrayList));
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.trusted.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$c.class */
    public interface AbstractC0470c {
        /* renamed from: a */
        boolean mo45441a(String str, PackageManager packageManager, C0472d c0472d) throws IOException, PackageManager.NameNotFoundException;
    }

    private C0467b() {
    }

    /* renamed from: a */
    public static boolean m45442a(String str, PackageManager packageManager, C0472d c0472d) {
        try {
            return (Build.VERSION.SDK_INT >= 28 ? new C0468a() : new C0469b()).mo45441a(str, packageManager, c0472d);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            Log.e("PackageIdentity", "Could not check if package matches token.", e);
            return false;
        }
    }

    /* renamed from: a */
    static byte[] m45443a(Signature signature) {
        try {
            return MessageDigest.getInstance("SHA256").digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
