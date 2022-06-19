package com.facebook.internal.p111b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.facebook.internal.b.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/b/a.class */
public class C2015a {
    /* renamed from: a */
    public static String m15651a(Context context) {
        String str;
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            StringBuilder sb = new StringBuilder();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            for (Signature signature : signatureArr) {
                messageDigest.update(signature.toByteArray());
                sb.append(Base64.encodeToString(messageDigest.digest(), 0));
                sb.append(":");
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            str = sb.toString();
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            str = "";
        }
        return str;
    }
}
