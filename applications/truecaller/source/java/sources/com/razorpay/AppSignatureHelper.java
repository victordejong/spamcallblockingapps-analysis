package com.razorpay;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/razorpay/AppSignatureHelper.class */
public class AppSignatureHelper extends ContextWrapper {
    private static final String HASH_TYPE = "SHA-256";
    public static final int NUM_BASE64_CHAR = 11;
    public static final int NUM_HASHED_BYTES = 9;
    public static final String TAG = AppSignatureHelper.class.getSimpleName();

    public AppSignatureHelper(Context context) {
        super(context);
    }

    private static String hash(String str, String str2) {
        String m8725C2 = C22128a.m8725C2(str, StringConstant.SPACE, str2);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(HASH_TYPE);
            messageDigest.update(m8725C2.getBytes(StandardCharsets.UTF_8));
            String substring = Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3).substring(0, 11);
            String.format("pkg: %s -- hash: %s", str, substring);
            return substring;
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public ArrayList<String> getAppSignatures() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            String packageName = getPackageName();
            for (Signature signature : getPackageManager().getPackageInfo(packageName, 64).signatures) {
                String hash = hash(packageName, signature.toCharsString());
                if (hash != null) {
                    arrayList.add(String.format("%s", hash));
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }
}
