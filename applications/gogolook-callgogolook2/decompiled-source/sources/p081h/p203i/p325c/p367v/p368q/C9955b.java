package p081h.p203i.p325c.p367v.p368q;

import android.content.SharedPreferences;
import android.util.Base64;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.C9435c;
/* renamed from: h.i.c.v.q.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/q/b.class */
public class C9955b {

    /* renamed from: c */
    public static final String[] f22526c = {"*", "FCM", "GCM", ""};
    @GuardedBy("iidPrefs")

    /* renamed from: a */
    public final SharedPreferences f22527a;

    /* renamed from: b */
    public final String f22528b;

    public C9955b(@NonNull C9435c cVar) {
        this.f22527a = cVar.m15173b().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f22528b = m13874a(cVar);
    }

    /* renamed from: a */
    public static String m13874a(C9435c cVar) {
        String c = cVar.m15169d().m15148c();
        if (c != null) {
            return c;
        }
        String b = cVar.m15169d().m15149b();
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

    @Nullable
    /* renamed from: a */
    public static String m13871a(@NonNull PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public String m13875a() {
        synchronized (this.f22527a) {
            String b = m13870b();
            if (b != null) {
                return b;
            }
            return m13868c();
        }
    }

    /* renamed from: a */
    public final String m13873a(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m13872a(@NonNull String str, @NonNull String str2) {
        return "|T|" + str + "|" + str2;
    }

    @Nullable
    /* renamed from: b */
    public final String m13870b() {
        String string;
        synchronized (this.f22527a) {
            string = this.f22527a.getString("|S|id", null);
        }
        return string;
    }

    @Nullable
    /* renamed from: b */
    public final PublicKey m13869b(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            String str2 = "Invalid key stored " + e;
            return null;
        }
    }

    @Nullable
    /* renamed from: c */
    public final String m13868c() {
        synchronized (this.f22527a) {
            String string = this.f22527a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey b = m13869b(string);
            if (b == null) {
                return null;
            }
            return m13871a(b);
        }
    }

    @Nullable
    /* renamed from: d */
    public String m13867d() {
        synchronized (this.f22527a) {
            for (String str : f22526c) {
                String string = this.f22527a.getString(m13872a(this.f22528b, str), null);
                if (string != null && !string.isEmpty()) {
                    String str2 = string;
                    if (string.startsWith(CssParser.BLOCK_START)) {
                        str2 = m13873a(string);
                    }
                    return str2;
                }
            }
            return null;
        }
    }
}
