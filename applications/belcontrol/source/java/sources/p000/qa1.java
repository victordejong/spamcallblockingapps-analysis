package p000;

import android.text.TextUtils;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
/* renamed from: qa1 */
/* loaded from: classes3-dex2jar.jar:qa1.class */
public class qa1 {
    /* renamed from: a */
    public static PublicKey m845a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(da1.m2715a(str)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            j91.m1505k("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e2);
        } catch (la1 e3) {
            j91.m1505k("IABUtil/Security", "Base64 decoding failed.");
            throw new IllegalArgumentException(e3);
        }
    }

    /* renamed from: b */
    public static boolean m844b(PublicKey publicKey, String str, String str2) {
        String str3;
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(str.getBytes());
            if (signature.verify(da1.m2715a(str2))) {
                return true;
            }
            j91.m1505k("IABUtil/Security", "Signature verification failed.");
            return false;
        } catch (InvalidKeyException e) {
            str3 = "Invalid key specification.";
            j91.m1505k("IABUtil/Security", str3);
            return false;
        } catch (NoSuchAlgorithmException e2) {
            str3 = "NoSuchAlgorithmException.";
            j91.m1505k("IABUtil/Security", str3);
            return false;
        } catch (SignatureException e3) {
            str3 = "Signature exception.";
            j91.m1505k("IABUtil/Security", str3);
            return false;
        } catch (la1 e4) {
            str3 = "Base64 decoding failed.";
            j91.m1505k("IABUtil/Security", str3);
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m843c(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            j91.m1505k("IABUtil/Security", "Purchase verification failed: missing data.");
            return false;
        }
        return m844b(m845a(str), str2, str3);
    }
}
