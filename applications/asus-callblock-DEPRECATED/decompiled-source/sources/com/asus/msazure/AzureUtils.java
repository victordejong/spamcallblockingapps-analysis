package com.asus.msazure;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.a.a.a.b;
import com.asus.callguardhelper.g;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/asus/msazure/AzureUtils.class */
public class AzureUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2934a = AzureUtils.class.getSimpleName();

    static {
        try {
            System.loadLibrary("getValue-jni");
        } catch (Exception e) {
            Log.w(f2934a, "System Loadlibrary:" + e);
        } catch (UnsatisfiedLinkError e2) {
            Log.w(f2934a, "UnsatisfiedLinkError:" + e2.getMessage());
        }
    }

    public static b a(Context context) {
        b bVar;
        try {
            String c = g.c("debug.cdn_path");
            if (!TextUtils.isEmpty(c) && c.equals("1")) {
                bVar = new b("https://asus-telephony.azure-mobile.net/", a(0), context);
            } else if (TextUtils.isEmpty(c) || !c.equals("2")) {
                bVar = (TextUtils.isEmpty(c) || !c.equals("3")) ? new b("https://asus-telephony-callguard.azure-mobile.net/", a(1), context) : new b("https://asus-telephony-callguard-dev.azure-mobile.net/", a(3), context);
            } else {
                Log.d(f2934a, "MOBILE_SERVICE_PROPERTY is 2");
                bVar = new b("https://asus-telephony-callguard-testing.azure-mobile.net/", a(2), context);
            }
        } catch (Exception e) {
            Log.d(f2934a, "getClient::" + e.getMessage());
            bVar = null;
        }
        return bVar;
    }

    private static String a(int i) {
        StringBuilder sb = new StringBuilder();
        try {
            String[] keyFromJNI = getKeyFromJNI(i);
            for (String str : keyFromJNI) {
                sb.append(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
        }
        return sb.toString();
    }

    public static String a(String str) {
        try {
            str = Base64.encodeToString(b().doFinal(str.getBytes()), 8);
        } catch (Exception e) {
            Log.w(f2934a, "encrypt:" + e.getMessage());
        }
        return str;
    }

    private static Key a() {
        String c = g.c("debug.cdn_path");
        return new SecretKeySpec(((TextUtils.isEmpty(c) || !c.equals("1")) ? (TextUtils.isEmpty(c) || !c.equals("2")) ? (TextUtils.isEmpty(c) || !c.equals("3")) ? a(1) : a(3) : a(2) : a(0)).getBytes(), "AES");
    }

    public static String b(String str) {
        try {
            str = new String(c().doFinal(Base64.decode(str, 8)));
        } catch (Exception e) {
            Log.w(f2934a, "decrypt:" + e.getMessage());
        }
        return str;
    }

    private static Cipher b() {
        Cipher cipher = null;
        cipher = null;
        cipher = null;
        cipher = null;
        try {
            cipher = Cipher.getInstance("AES");
            cipher = cipher;
            cipher = cipher;
            cipher = cipher;
            cipher = cipher;
            cipher.init(1, a());
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (NoSuchPaddingException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return cipher;
    }

    private static Cipher c() {
        Cipher cipher = null;
        cipher = null;
        cipher = null;
        cipher = null;
        try {
            cipher = Cipher.getInstance("AES");
            cipher = cipher;
            cipher = cipher;
            cipher = cipher;
            cipher = cipher;
            cipher.init(2, a());
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (NoSuchPaddingException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return cipher;
    }

    public static native String[] getKeyFromJNI(int i);
}
