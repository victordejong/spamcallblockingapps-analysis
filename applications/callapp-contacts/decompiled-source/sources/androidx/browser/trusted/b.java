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
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b.class */
final class b {

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$a.class */
    static final class a implements c {
        a() {
        }

        @Override // androidx.browser.trusted.b.c
        public final boolean a(String str, PackageManager packageManager, d dVar) throws PackageManager.NameNotFoundException, IOException {
            if (!dVar.a().equals(str)) {
                return false;
            }
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 134217728);
            ArrayList arrayList = new ArrayList();
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo.hasMultipleSigners()) {
                for (Signature signature : signingInfo.getApkContentsSigners()) {
                    arrayList.add(b.a(signature));
                }
            } else {
                arrayList.add(b.a(signingInfo.getSigningCertificateHistory()[0]));
            }
            if (arrayList.size() != 1) {
                return dVar.equals(d.a(str, arrayList));
            }
            dVar.b();
            if (dVar.f1254a != null) {
                return packageManager.hasSigningCertificate(str, Arrays.copyOf(dVar.f1254a.get(0), dVar.f1254a.get(0).length), 1);
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: androidx.browser.trusted.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$b.class */
    static final class C0029b implements c {
        C0029b() {
        }

        @Override // androidx.browser.trusted.b.c
        public final boolean a(String str, PackageManager packageManager, d dVar) throws IOException, PackageManager.NameNotFoundException {
            ArrayList arrayList;
            if (!str.equals(dVar.a())) {
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
                byte[] a2 = b.a(signatureArr[i]);
                if (a2 == null) {
                    arrayList = null;
                    break;
                }
                arrayList2.add(a2);
                i++;
            }
            if (arrayList == null) {
                return false;
            }
            return dVar.equals(d.a(str, arrayList));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/b$c.class */
    interface c {
        boolean a(String str, PackageManager packageManager, d dVar) throws IOException, PackageManager.NameNotFoundException;
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, PackageManager packageManager, d dVar) {
        try {
            return (Build.VERSION.SDK_INT >= 28 ? new a() : new C0029b()).a(str, packageManager, dVar);
        } catch (PackageManager.NameNotFoundException | IOException e) {
            Log.e("PackageIdentity", "Could not check if package matches token.", e);
            return false;
        }
    }

    static byte[] a(Signature signature) {
        try {
            return MessageDigest.getInstance("SHA256").digest(signature.toByteArray());
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
}
