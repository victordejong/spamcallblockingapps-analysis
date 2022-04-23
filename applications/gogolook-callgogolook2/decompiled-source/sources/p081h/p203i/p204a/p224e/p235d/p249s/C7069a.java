package p081h.p203i.p204a.p224e.p235d.p249s;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.d.s.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/a.class */
public class C7069a {
    /* renamed from: a */
    public static MessageDigest m21171a(String str) {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m21172a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest a;
        PackageInfo b = C7097c.m21085b(context).m21087b(str, 64);
        Signature[] signatureArr = b.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (a = m21171a("SHA1")) == null) {
            return null;
        }
        return a.digest(b.signatures[0].toByteArray());
    }
}
