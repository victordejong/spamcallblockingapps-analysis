package com.p064b.p065a.p066a.p067a;

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
/* renamed from: com.b.a.a.a.g */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/g.class */
class C1341g {
    /* renamed from: a */
    public static PublicKey m17430a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (IllegalArgumentException e) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            throw e;
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        } catch (InvalidKeySpecException e3) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e3);
        }
    }

    /* renamed from: a */
    public static boolean m17429a(String str, String str2, String str3, String str4) {
        boolean z;
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str4)) {
            z = m17428a(m17430a(str2), str3, str4);
        } else if (str.equals("android.test.purchased") || str.equals("android.test.canceled") || str.equals("android.test.refunded") || str.equals("android.test.item_unavailable")) {
            z = true;
        } else {
            Log.e("IABUtil/Security", "Purchase verification failed: missing data.");
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m17428a(PublicKey publicKey, String str, String str2) {
        boolean z = false;
        try {
            Signature signature = Signature.getInstance("SHA1withRSA");
            signature.initVerify(publicKey);
            signature.update(str.getBytes());
            if (!signature.verify(Base64.decode(str2, 0))) {
                Log.e("IABUtil/Security", "Signature verification failed.");
            } else {
                z = true;
            }
        } catch (IllegalArgumentException e) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
        } catch (InvalidKeyException e2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
        } catch (NoSuchAlgorithmException e3) {
            Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
        } catch (SignatureException e4) {
            Log.e("IABUtil/Security", "Signature exception.");
        }
        return z;
    }
}
