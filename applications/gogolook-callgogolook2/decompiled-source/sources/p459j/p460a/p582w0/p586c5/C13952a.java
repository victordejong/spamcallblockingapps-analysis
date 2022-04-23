package p459j.p460a.p582w0.p586c5;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
/* renamed from: j.a.w0.c5.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/c5/a.class */
public class C13952a {
    /* renamed from: a */
    public static PublicKey m3000a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e2);
        }
    }

    /* renamed from: a */
    public static boolean m2999a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            return m2998a(m3000a(str), str2, str3);
        }
        Log.e("IABUtil/Security", "Purchase verification failed: missing data.");
        return false;
    }

    /* renamed from: a */
    public static boolean m2998a(PublicKey publicKey, String str, String str2) {
        try {
            byte[] decode = Base64.decode(str2, 0);
            try {
                Signature instance = Signature.getInstance("SHA1withRSA");
                instance.initVerify(publicKey);
                instance.update(str.getBytes());
                if (instance.verify(decode)) {
                    return true;
                }
                Log.e("IABUtil/Security", "Signature verification failed.");
                return false;
            } catch (InvalidKeyException e) {
                Log.e("IABUtil/Security", "Invalid key specification.");
                return false;
            } catch (NoSuchAlgorithmException e2) {
                Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
                return false;
            } catch (SignatureException e3) {
                Log.e("IABUtil/Security", "Signature exception.");
                return false;
            }
        } catch (IllegalArgumentException e4) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            return false;
        }
    }
}
