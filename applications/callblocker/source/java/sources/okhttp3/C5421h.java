package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: okhttp3.h */
/* loaded from: classes-dex2jar.jar:okhttp3/h.class */
public final class C5421h {

    /* renamed from: bj */
    final String f22677bj;

    /* renamed from: a */
    static final Comparator<String> f22589a = new Comparator<String>() { // from class: okhttp3.h.1
        /* renamed from: a */
        public int compare(String str, String str2) {
            int i;
            int i2 = 4;
            int min = Math.min(str.length(), str2.length());
            while (true) {
                if (i2 < min) {
                    char charAt = str.charAt(i2);
                    char charAt2 = str2.charAt(i2);
                    if (charAt != charAt2) {
                        i = charAt < charAt2 ? -1 : 1;
                    } else {
                        i2++;
                    }
                } else {
                    int length = str.length();
                    int length2 = str2.length();
                    if (length != length2) {
                        i = -1;
                        if (length >= length2) {
                            i = 1;
                        }
                    } else {
                        i = 0;
                    }
                }
            }
            return i;
        }
    };

    /* renamed from: bk */
    private static final Map<String, C5421h> f22652bk = new TreeMap(f22589a);

    /* renamed from: b */
    public static final C5421h f22642b = m745a("SSL_RSA_WITH_NULL_MD5", 1);

    /* renamed from: c */
    public static final C5421h f22653c = m745a("SSL_RSA_WITH_NULL_SHA", 2);

    /* renamed from: d */
    public static final C5421h f22654d = m745a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* renamed from: e */
    public static final C5421h f22655e = m745a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* renamed from: f */
    public static final C5421h f22656f = m745a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* renamed from: g */
    public static final C5421h f22657g = m745a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* renamed from: h */
    public static final C5421h f22658h = m745a("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* renamed from: i */
    public static final C5421h f22659i = m745a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: j */
    public static final C5421h f22660j = m745a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* renamed from: k */
    public static final C5421h f22661k = m745a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* renamed from: l */
    public static final C5421h f22662l = m745a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* renamed from: m */
    public static final C5421h f22663m = m745a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* renamed from: n */
    public static final C5421h f22664n = m745a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* renamed from: o */
    public static final C5421h f22665o = m745a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* renamed from: p */
    public static final C5421h f22666p = m745a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* renamed from: q */
    public static final C5421h f22667q = m745a("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* renamed from: r */
    public static final C5421h f22668r = m745a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* renamed from: s */
    public static final C5421h f22669s = m745a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* renamed from: t */
    public static final C5421h f22670t = m745a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* renamed from: u */
    public static final C5421h f22671u = m745a("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* renamed from: v */
    public static final C5421h f22672v = m745a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* renamed from: w */
    public static final C5421h f22673w = m745a("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* renamed from: x */
    public static final C5421h f22674x = m745a("TLS_KRB5_WITH_DES_CBC_MD5", 34);

    /* renamed from: y */
    public static final C5421h f22675y = m745a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);

    /* renamed from: z */
    public static final C5421h f22676z = m745a("TLS_KRB5_WITH_RC4_128_MD5", 36);

    /* renamed from: A */
    public static final C5421h f22563A = m745a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);

    /* renamed from: B */
    public static final C5421h f22564B = m745a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);

    /* renamed from: C */
    public static final C5421h f22565C = m745a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);

    /* renamed from: D */
    public static final C5421h f22566D = m745a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);

    /* renamed from: E */
    public static final C5421h f22567E = m745a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    /* renamed from: F */
    public static final C5421h f22568F = m745a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);

    /* renamed from: G */
    public static final C5421h f22569G = m745a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);

    /* renamed from: H */
    public static final C5421h f22570H = m745a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);

    /* renamed from: I */
    public static final C5421h f22571I = m745a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    /* renamed from: J */
    public static final C5421h f22572J = m745a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);

    /* renamed from: K */
    public static final C5421h f22573K = m745a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);

    /* renamed from: L */
    public static final C5421h f22574L = m745a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);

    /* renamed from: M */
    public static final C5421h f22575M = m745a("TLS_RSA_WITH_NULL_SHA256", 59);

    /* renamed from: N */
    public static final C5421h f22576N = m745a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);

    /* renamed from: O */
    public static final C5421h f22577O = m745a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);

    /* renamed from: P */
    public static final C5421h f22578P = m745a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);

    /* renamed from: Q */
    public static final C5421h f22579Q = m745a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);

    /* renamed from: R */
    public static final C5421h f22580R = m745a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);

    /* renamed from: S */
    public static final C5421h f22581S = m745a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);

    /* renamed from: T */
    public static final C5421h f22582T = m745a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);

    /* renamed from: U */
    public static final C5421h f22583U = m745a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);

    /* renamed from: V */
    public static final C5421h f22584V = m745a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);

    /* renamed from: W */
    public static final C5421h f22585W = m745a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);

    /* renamed from: X */
    public static final C5421h f22586X = m745a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* renamed from: Y */
    public static final C5421h f22587Y = m745a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    /* renamed from: Z */
    public static final C5421h f22588Z = m745a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* renamed from: aa */
    public static final C5421h f22616aa = m745a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    /* renamed from: ab */
    public static final C5421h f22617ab = m745a("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* renamed from: ac */
    public static final C5421h f22618ac = m745a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* renamed from: ad */
    public static final C5421h f22619ad = m745a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    /* renamed from: ae */
    public static final C5421h f22620ae = m745a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* renamed from: af */
    public static final C5421h f22621af = m745a("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    /* renamed from: ag */
    public static final C5421h f22622ag = m745a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: ah */
    public static final C5421h f22623ah = m745a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: ai */
    public static final C5421h f22624ai = m745a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* renamed from: aj */
    public static final C5421h f22625aj = m745a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* renamed from: ak */
    public static final C5421h f22626ak = m745a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* renamed from: al */
    public static final C5421h f22627al = m745a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* renamed from: am */
    public static final C5421h f22628am = m745a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* renamed from: an */
    public static final C5421h f22629an = m745a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* renamed from: ao */
    public static final C5421h f22630ao = m745a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* renamed from: ap */
    public static final C5421h f22631ap = m745a("TLS_FALLBACK_SCSV", 22016);

    /* renamed from: aq */
    public static final C5421h f22632aq = m745a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* renamed from: ar */
    public static final C5421h f22633ar = m745a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* renamed from: as */
    public static final C5421h f22634as = m745a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* renamed from: at */
    public static final C5421h f22635at = m745a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* renamed from: au */
    public static final C5421h f22636au = m745a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* renamed from: av */
    public static final C5421h f22637av = m745a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* renamed from: aw */
    public static final C5421h f22638aw = m745a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* renamed from: ax */
    public static final C5421h f22639ax = m745a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);

    /* renamed from: ay */
    public static final C5421h f22640ay = m745a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);

    /* renamed from: az */
    public static final C5421h f22641az = m745a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);

    /* renamed from: aA */
    public static final C5421h f22590aA = m745a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);

    /* renamed from: aB */
    public static final C5421h f22591aB = m745a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);

    /* renamed from: aC */
    public static final C5421h f22592aC = m745a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);

    /* renamed from: aD */
    public static final C5421h f22593aD = m745a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);

    /* renamed from: aE */
    public static final C5421h f22594aE = m745a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);

    /* renamed from: aF */
    public static final C5421h f22595aF = m745a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);

    /* renamed from: aG */
    public static final C5421h f22596aG = m745a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);

    /* renamed from: aH */
    public static final C5421h f22597aH = m745a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);

    /* renamed from: aI */
    public static final C5421h f22598aI = m745a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    /* renamed from: aJ */
    public static final C5421h f22599aJ = m745a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    /* renamed from: aK */
    public static final C5421h f22600aK = m745a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);

    /* renamed from: aL */
    public static final C5421h f22601aL = m745a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);

    /* renamed from: aM */
    public static final C5421h f22602aM = m745a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);

    /* renamed from: aN */
    public static final C5421h f22603aN = m745a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);

    /* renamed from: aO */
    public static final C5421h f22604aO = m745a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);

    /* renamed from: aP */
    public static final C5421h f22605aP = m745a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);

    /* renamed from: aQ */
    public static final C5421h f22606aQ = m745a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);

    /* renamed from: aR */
    public static final C5421h f22607aR = m745a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);

    /* renamed from: aS */
    public static final C5421h f22608aS = m745a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);

    /* renamed from: aT */
    public static final C5421h f22609aT = m745a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);

    /* renamed from: aU */
    public static final C5421h f22610aU = m745a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);

    /* renamed from: aV */
    public static final C5421h f22611aV = m745a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);

    /* renamed from: aW */
    public static final C5421h f22612aW = m745a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);

    /* renamed from: aX */
    public static final C5421h f22613aX = m745a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: aY */
    public static final C5421h f22614aY = m745a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: aZ */
    public static final C5421h f22615aZ = m745a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* renamed from: ba */
    public static final C5421h f22643ba = m745a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* renamed from: bb */
    public static final C5421h f22644bb = m745a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: bc */
    public static final C5421h f22645bc = m745a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: bd */
    public static final C5421h f22646bd = m745a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* renamed from: be */
    public static final C5421h f22647be = m745a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* renamed from: bf */
    public static final C5421h f22648bf = m745a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* renamed from: bg */
    public static final C5421h f22649bg = m745a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* renamed from: bh */
    public static final C5421h f22650bh = m745a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: bi */
    public static final C5421h f22651bi = m745a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    private C5421h(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f22677bj = str;
    }

    /* renamed from: a */
    public static List<C5421h> m744a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m746a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static C5421h m746a(String str) {
        C5421h c5421h;
        synchronized (C5421h.class) {
            try {
                C5421h c5421h2 = f22652bk.get(str);
                c5421h = c5421h2;
                if (c5421h2 == null) {
                    c5421h = new C5421h(str);
                    f22652bk.put(str, c5421h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c5421h;
    }

    /* renamed from: a */
    private static C5421h m745a(String str, int i) {
        return m746a(str);
    }

    public String toString() {
        return this.f22677bj;
    }
}
