package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.pm.Signature;
import io.objectbox.model.PropertyFlags;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, ArrayList<String>> f10290a = new HashMap<>();

    public static String a(Context context) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> a2 = a(context, "SHA1");
        if (!(a2 == null || a2.size() == 0)) {
            for (int i = 0; i < a2.size(); i++) {
                sb.append(a2.get(i));
                if (i < a2.size() - 1) {
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    private static String a(Signature signature, String str) {
        String str2;
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            str2 = "error!";
            if (instance != null) {
                byte[] digest = instance.digest(byteArray);
                StringBuilder sb = new StringBuilder();
                for (byte b2 : digest) {
                    sb.append(Integer.toHexString((b2 & 255) | PropertyFlags.INDEX_PARTIAL_SKIP_NULL).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                str2 = sb.substring(0, sb.length() - 1).toString();
            }
        } catch (Exception e) {
            q.b(e.toString());
            str2 = "error!";
        }
        return str2;
    }

    public static ArrayList<String> a(Context context, String str) {
        Signature[] b2;
        ArrayList<String> arrayList = null;
        if (context != null) {
            if (str == null) {
                arrayList = null;
            } else {
                String packageName = context.getPackageName();
                if (packageName == null) {
                    return null;
                }
                if (f10290a.get(str) != null) {
                    return f10290a.get(str);
                }
                arrayList = new ArrayList<>();
                try {
                    for (Signature signature : b(context, packageName)) {
                        String str2 = "error!";
                        if ("MD5".equals(str)) {
                            str2 = a(signature, "MD5");
                        } else if ("SHA1".equals(str)) {
                            str2 = a(signature, "SHA1");
                        } else if ("SHA256".equals(str)) {
                            str2 = a(signature, "SHA256");
                        }
                        arrayList.add(str2);
                    }
                } catch (Exception e) {
                    q.b(e.toString());
                }
                f10290a.put(str, arrayList);
            }
        }
        return arrayList;
    }

    private static Signature[] b(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e) {
            q.b(e.toString());
            return null;
        }
    }
}
