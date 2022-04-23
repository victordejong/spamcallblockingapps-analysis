package p599h;

import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: h.h */
/* loaded from: classes2-dex2jar.jar:h/h.class */
public final class C10216h {

    /* renamed from: b */
    public static final Comparator<String> f37683b = new C10217a();

    /* renamed from: c */
    public static final Map<String, C10216h> f37684c = new LinkedHashMap();

    /* renamed from: d */
    public static final C10216h f37685d = m1047a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: e */
    public static final C10216h f37686e = m1047a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    /* renamed from: f */
    public static final C10216h f37687f = m1047a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    /* renamed from: g */
    public static final C10216h f37688g = m1047a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: h */
    public static final C10216h f37689h = m1047a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: i */
    public static final C10216h f37690i = m1047a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    /* renamed from: j */
    public static final C10216h f37691j = m1047a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    /* renamed from: k */
    public static final C10216h f37692k = m1047a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: l */
    public static final C10216h f37693l = m1047a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: m */
    public static final C10216h f37694m = m1047a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: n */
    public static final C10216h f37695n = m1047a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: o */
    public static final C10216h f37696o = m1047a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: p */
    public static final C10216h f37697p = m1047a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    /* renamed from: q */
    public static final C10216h f37698q = m1047a("TLS_AES_128_GCM_SHA256", 4865);

    /* renamed from: r */
    public static final C10216h f37699r = m1047a("TLS_AES_256_GCM_SHA384", 4866);

    /* renamed from: s */
    public static final C10216h f37700s = m1047a("TLS_CHACHA20_POLY1305_SHA256", 4867);

    /* renamed from: t */
    public static final C10216h f37701t = m1047a("TLS_AES_128_CCM_SHA256", 4868);

    /* renamed from: u */
    public static final C10216h f37702u = m1047a("TLS_AES_256_CCM_8_SHA256", 4869);

    /* renamed from: a */
    public final String f37703a;

    /* renamed from: h.h$a */
    /* loaded from: classes2-dex2jar.jar:h/h$a.class */
    public class C10217a implements Comparator<String> {
        /* renamed from: a */
        public int compare(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            int i = 4;
            while (true) {
                int i2 = -1;
                if (i < min) {
                    char charAt = str.charAt(i);
                    char charAt2 = str2.charAt(i);
                    if (charAt != charAt2) {
                        if (charAt >= charAt2) {
                            i2 = 1;
                        }
                        return i2;
                    }
                    i++;
                } else {
                    int length = str.length();
                    int length2 = str2.length();
                    if (length == length2) {
                        return 0;
                    }
                    if (length >= length2) {
                        i2 = 1;
                    }
                    return i2;
                }
            }
        }
    }

    static {
        m1047a("SSL_RSA_WITH_NULL_MD5", 1);
        m1047a("SSL_RSA_WITH_NULL_SHA", 2);
        m1047a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        m1047a("SSL_RSA_WITH_RC4_128_MD5", 4);
        m1047a("SSL_RSA_WITH_RC4_128_SHA", 5);
        m1047a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        m1047a("SSL_RSA_WITH_DES_CBC_SHA", 9);
        m1047a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        m1047a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        m1047a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        m1047a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        m1047a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        m1047a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        m1047a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        m1047a("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        m1047a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        m1047a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        m1047a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        m1047a("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        m1047a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        m1047a("TLS_KRB5_WITH_RC4_128_SHA", 32);
        m1047a("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        m1047a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        m1047a("TLS_KRB5_WITH_RC4_128_MD5", 36);
        m1047a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        m1047a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        m1047a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        m1047a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        m1047a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        m1047a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        m1047a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        m1047a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        m1047a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        m1047a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        m1047a("TLS_RSA_WITH_NULL_SHA256", 59);
        m1047a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        m1047a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        m1047a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        m1047a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        m1047a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        m1047a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        m1047a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        m1047a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        m1047a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        m1047a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        m1047a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        m1047a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        m1047a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        m1047a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        m1047a("TLS_PSK_WITH_RC4_128_SHA", 138);
        m1047a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        m1047a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        m1047a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        m1047a("TLS_RSA_WITH_SEED_CBC_SHA", DrawableConstants.CtaButton.WIDTH_DIPS);
        m1047a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        m1047a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        m1047a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
        m1047a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
        m1047a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        m1047a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        m1047a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        m1047a("TLS_FALLBACK_SCSV", 22016);
        m1047a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        m1047a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        m1047a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        m1047a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        m1047a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        m1047a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        m1047a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        m1047a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        m1047a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        m1047a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        m1047a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        m1047a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        m1047a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        m1047a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        m1047a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        m1047a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        m1047a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        m1047a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        m1047a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        m1047a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        m1047a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        m1047a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        m1047a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        m1047a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        m1047a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        m1047a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        m1047a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        m1047a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        m1047a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        m1047a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        m1047a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        m1047a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        m1047a("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        m1047a("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
    }

    public C10216h(String str) {
        if (str != null) {
            this.f37703a = str;
            return;
        }
        throw null;
    }

    /* renamed from: a */
    public static C10216h m1048a(String str) {
        C10216h hVar;
        synchronized (C10216h.class) {
            try {
                C10216h hVar2 = f37684c.get(str);
                hVar = hVar2;
                if (hVar2 == null) {
                    C10216h hVar3 = f37684c.get(m1045b(str));
                    hVar = hVar3;
                    if (hVar3 == null) {
                        hVar = new C10216h(str);
                    }
                    f37684c.put(str, hVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    /* renamed from: a */
    public static C10216h m1047a(String str, int i) {
        C10216h hVar = new C10216h(str);
        f37684c.put(str, hVar);
        return hVar;
    }

    /* renamed from: a */
    public static List<C10216h> m1046a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m1048a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public static String m1045b(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        String str2 = str;
        if (str.startsWith("SSL_")) {
            str2 = "TLS_" + str.substring(4);
        }
        return str2;
    }

    /* renamed from: a */
    public String m1049a() {
        return this.f37703a;
    }

    public String toString() {
        return this.f37703a;
    }
}
