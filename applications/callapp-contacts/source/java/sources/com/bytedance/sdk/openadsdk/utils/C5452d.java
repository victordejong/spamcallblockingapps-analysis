package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.content.pm.Signature;
import io.objectbox.model.PropertyFlags;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
/* renamed from: com.bytedance.sdk.openadsdk.utils.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/d.class */
public class C5452d {

    /* renamed from: a */
    private static HashMap<String, ArrayList<String>> f19000a = new HashMap<>();

    /* renamed from: a */
    public static String m32191a(Context context) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> m32190a = m32190a(context, "SHA1");
        if (m32190a != null && m32190a.size() != 0) {
            for (int i = 0; i < m32190a.size(); i++) {
                sb.append(m32190a.get(i));
                if (i < m32190a.size() - 1) {
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m32189a(Signature signature, String str) {
        String str2;
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            str2 = "error!";
            if (messageDigest != null) {
                byte[] digest = messageDigest.digest(byteArray);
                StringBuilder sb = new StringBuilder();
                for (byte b : digest) {
                    sb.append(Integer.toHexString((b & 255) | PropertyFlags.INDEX_PARTIAL_SKIP_NULL).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                str2 = sb.substring(0, sb.length() - 1).toString();
            }
        } catch (Exception e) {
            C5478q.m32113b(e.toString());
            str2 = "error!";
        }
        return str2;
    }

    /* renamed from: a */
    public static ArrayList<String> m32190a(Context context, String str) {
        Signature[] m32188b;
        ArrayList<String> arrayList = null;
        if (context != null) {
            if (str == null) {
                arrayList = null;
            } else {
                String packageName = context.getPackageName();
                if (packageName == null) {
                    return null;
                }
                if (f19000a.get(str) != null) {
                    return f19000a.get(str);
                }
                arrayList = new ArrayList<>();
                try {
                    for (Signature signature : m32188b(context, packageName)) {
                        String str2 = "error!";
                        if ("MD5".equals(str)) {
                            str2 = m32189a(signature, "MD5");
                        } else if ("SHA1".equals(str)) {
                            str2 = m32189a(signature, "SHA1");
                        } else if ("SHA256".equals(str)) {
                            str2 = m32189a(signature, "SHA256");
                        }
                        arrayList.add(str2);
                    }
                } catch (Exception e) {
                    C5478q.m32113b(e.toString());
                }
                f19000a.put(str, arrayList);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private static Signature[] m32188b(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e) {
            C5478q.m32113b(e.toString());
            return null;
        }
    }
}
