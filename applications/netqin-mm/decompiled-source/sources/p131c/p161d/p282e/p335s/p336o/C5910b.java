package p131c.p161d.p282e.p335s.p336o;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.C5128c;
/* renamed from: c.d.e.s.o.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/o/b.class */
public class C5910b {

    /* renamed from: c */
    public static final String[] f19242c = {"*", "FCM", "GCM", ""};

    /* renamed from: a */
    public final SharedPreferences f19243a;

    /* renamed from: b */
    public final String f19244b;

    public C5910b(C5128c cVar) {
        this.f19243a = cVar.m24468b().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f19244b = m22759a(cVar);
    }

    /* renamed from: a */
    public static String m22759a(C5128c cVar) {
        String c = cVar.m24464d().m24444c();
        if (c != null) {
            return c;
        }
        String b = cVar.m24464d().m24445b();
        if (!b.startsWith("1:") && !b.startsWith("2:")) {
            return b;
        }
        String[] split = b.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m22756a(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* renamed from: a */
    public String m22760a() {
        synchronized (this.f19243a) {
            String b = m22755b();
            if (b != null) {
                return b;
            }
            return m22753c();
        }
    }

    /* renamed from: a */
    public final String m22758a(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m22757a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    /* renamed from: b */
    public final String m22755b() {
        String string;
        synchronized (this.f19243a) {
            string = this.f19243a.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: b */
    public final PublicKey m22754b(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored " + e);
            return null;
        }
    }

    /* renamed from: c */
    public final String m22753c() {
        synchronized (this.f19243a) {
            String string = this.f19243a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey b = m22754b(string);
            if (b == null) {
                return null;
            }
            return m22756a(b);
        }
    }

    /* renamed from: d */
    public String m22752d() {
        synchronized (this.f19243a) {
            try {
                for (String str : f19242c) {
                    String string = this.f19243a.getString(m22757a(this.f19244b, str), null);
                    if (string != null && !string.isEmpty()) {
                        String str2 = string;
                        if (string.startsWith("{")) {
                            str2 = m22758a(string);
                        }
                        return str2;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
