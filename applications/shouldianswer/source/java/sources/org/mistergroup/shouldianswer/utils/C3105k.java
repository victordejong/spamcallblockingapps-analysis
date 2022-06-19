package org.mistergroup.shouldianswer.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1742d;
/* renamed from: org.mistergroup.shouldianswer.utils.k */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/k.class */
public final class C3105k {

    /* renamed from: a */
    public static final C3105k f9133a = new C3105k();

    private C3105k() {
    }

    /* renamed from: a */
    public final String m150a(String str) {
        C1694h.m3117b(str, "s");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(C1742d.f4413a);
            C1694h.m3122a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                C1694h.m3122a((Object) hexString, "Integer.toHexString(0xFF…d aMessageDigest.toInt())");
                while (hexString.length() < 2) {
                    hexString = '0' + hexString;
                }
                sb.append(hexString);
            }
            String sb2 = sb.toString();
            C1694h.m3122a((Object) sb2, "hexString.toString()");
            return sb2;
        } catch (NoSuchAlgorithmException e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return "";
        }
    }
}
