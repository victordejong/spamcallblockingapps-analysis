package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: okhttp3.h */
/* loaded from: classes-dex2jar.jar:okhttp3/h.class */
public final class C1971h {

    /* renamed from: bj */
    final String f4903bj;

    /* renamed from: a */
    static final Comparator<String> f4815a = new Comparator<String>() { // from class: okhttp3.h.1
        /* renamed from: a */
        public int compare(String str, String str2) {
            int min = Math.min(str.length(), str2.length());
            int i = 4;
            while (true) {
                int i2 = -1;
                if (i >= min) {
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
                char charAt = str.charAt(i);
                char charAt2 = str2.charAt(i);
                if (charAt != charAt2) {
                    if (charAt >= charAt2) {
                        i2 = 1;
                    }
                    return i2;
                }
                i++;
            }
        }
    };

    /* renamed from: bk */
    private static final Map<String, C1971h> f4878bk = new TreeMap(f4815a);

    /* renamed from: b */
    public static final C1971h f4868b = m2427a("SSL_RSA_WITH_NULL_MD5", 1);

    /* renamed from: c */
    public static final C1971h f4879c = m2427a("SSL_RSA_WITH_NULL_SHA", 2);

    /* renamed from: d */
    public static final C1971h f4880d = m2427a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* renamed from: e */
    public static final C1971h f4881e = m2427a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* renamed from: f */
    public static final C1971h f4882f = m2427a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* renamed from: g */
    public static final C1971h f4883g = m2427a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* renamed from: h */
    public static final C1971h f4884h = m2427a("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* renamed from: i */
    public static final C1971h f4885i = m2427a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: j */
    public static final C1971h f4886j = m2427a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* renamed from: k */
    public static final C1971h f4887k = m2427a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* renamed from: l */
    public static final C1971h f4888l = m2427a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* renamed from: m */
    public static final C1971h f4889m = m2427a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* renamed from: n */
    public static final C1971h f4890n = m2427a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* renamed from: o */
    public static final C1971h f4891o = m2427a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* renamed from: p */
    public static final C1971h f4892p = m2427a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* renamed from: q */
    public static final C1971h f4893q = m2427a("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* renamed from: r */
    public static final C1971h f4894r = m2427a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* renamed from: s */
    public static final C1971h f4895s = m2427a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* renamed from: t */
    public static final C1971h f4896t = m2427a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* renamed from: u */
    public static final C1971h f4897u = m2427a("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* renamed from: v */
    public static final C1971h f4898v = m2427a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* renamed from: w */
    public static final C1971h f4899w = m2427a("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* renamed from: x */
    public static final C1971h f4900x = m2427a("TLS_KRB5_WITH_DES_CBC_MD5", 34);

    /* renamed from: y */
    public static final C1971h f4901y = m2427a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);

    /* renamed from: z */
    public static final C1971h f4902z = m2427a("TLS_KRB5_WITH_RC4_128_MD5", 36);

    /* renamed from: A */
    public static final C1971h f4789A = m2427a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);

    /* renamed from: B */
    public static final C1971h f4790B = m2427a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);

    /* renamed from: C */
    public static final C1971h f4791C = m2427a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);

    /* renamed from: D */
    public static final C1971h f4792D = m2427a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);

    /* renamed from: E */
    public static final C1971h f4793E = m2427a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    /* renamed from: F */
    public static final C1971h f4794F = m2427a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);

    /* renamed from: G */
    public static final C1971h f4795G = m2427a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);

    /* renamed from: H */
    public static final C1971h f4796H = m2427a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);

    /* renamed from: I */
    public static final C1971h f4797I = m2427a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    /* renamed from: J */
    public static final C1971h f4798J = m2427a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);

    /* renamed from: K */
    public static final C1971h f4799K = m2427a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);

    /* renamed from: L */
    public static final C1971h f4800L = m2427a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);

    /* renamed from: M */
    public static final C1971h f4801M = m2427a("TLS_RSA_WITH_NULL_SHA256", 59);

    /* renamed from: N */
    public static final C1971h f4802N = m2427a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);

    /* renamed from: O */
    public static final C1971h f4803O = m2427a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);

    /* renamed from: P */
    public static final C1971h f4804P = m2427a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);

    /* renamed from: Q */
    public static final C1971h f4805Q = m2427a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);

    /* renamed from: R */
    public static final C1971h f4806R = m2427a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);

    /* renamed from: S */
    public static final C1971h f4807S = m2427a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);

    /* renamed from: T */
    public static final C1971h f4808T = m2427a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);

    /* renamed from: U */
    public static final C1971h f4809U = m2427a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);

    /* renamed from: V */
    public static final C1971h f4810V = m2427a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);

    /* renamed from: W */
    public static final C1971h f4811W = m2427a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);

    /* renamed from: X */
    public static final C1971h f4812X = m2427a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* renamed from: Y */
    public static final C1971h f4813Y = m2427a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    /* renamed from: Z */
    public static final C1971h f4814Z = m2427a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* renamed from: aa */
    public static final C1971h f4842aa = m2427a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    /* renamed from: ab */
    public static final C1971h f4843ab = m2427a("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* renamed from: ac */
    public static final C1971h f4844ac = m2427a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* renamed from: ad */
    public static final C1971h f4845ad = m2427a("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    /* renamed from: ae */
    public static final C1971h f4846ae = m2427a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* renamed from: af */
    public static final C1971h f4847af = m2427a("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    /* renamed from: ag */
    public static final C1971h f4848ag = m2427a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: ah */
    public static final C1971h f4849ah = m2427a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: ai */
    public static final C1971h f4850ai = m2427a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* renamed from: aj */
    public static final C1971h f4851aj = m2427a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* renamed from: ak */
    public static final C1971h f4852ak = m2427a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* renamed from: al */
    public static final C1971h f4853al = m2427a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* renamed from: am */
    public static final C1971h f4854am = m2427a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* renamed from: an */
    public static final C1971h f4855an = m2427a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* renamed from: ao */
    public static final C1971h f4856ao = m2427a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* renamed from: ap */
    public static final C1971h f4857ap = m2427a("TLS_FALLBACK_SCSV", 22016);

    /* renamed from: aq */
    public static final C1971h f4858aq = m2427a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* renamed from: ar */
    public static final C1971h f4859ar = m2427a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* renamed from: as */
    public static final C1971h f4860as = m2427a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* renamed from: at */
    public static final C1971h f4861at = m2427a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* renamed from: au */
    public static final C1971h f4862au = m2427a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* renamed from: av */
    public static final C1971h f4863av = m2427a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* renamed from: aw */
    public static final C1971h f4864aw = m2427a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* renamed from: ax */
    public static final C1971h f4865ax = m2427a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);

    /* renamed from: ay */
    public static final C1971h f4866ay = m2427a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);

    /* renamed from: az */
    public static final C1971h f4867az = m2427a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);

    /* renamed from: aA */
    public static final C1971h f4816aA = m2427a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);

    /* renamed from: aB */
    public static final C1971h f4817aB = m2427a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);

    /* renamed from: aC */
    public static final C1971h f4818aC = m2427a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);

    /* renamed from: aD */
    public static final C1971h f4819aD = m2427a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);

    /* renamed from: aE */
    public static final C1971h f4820aE = m2427a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);

    /* renamed from: aF */
    public static final C1971h f4821aF = m2427a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);

    /* renamed from: aG */
    public static final C1971h f4822aG = m2427a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);

    /* renamed from: aH */
    public static final C1971h f4823aH = m2427a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);

    /* renamed from: aI */
    public static final C1971h f4824aI = m2427a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    /* renamed from: aJ */
    public static final C1971h f4825aJ = m2427a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    /* renamed from: aK */
    public static final C1971h f4826aK = m2427a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);

    /* renamed from: aL */
    public static final C1971h f4827aL = m2427a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);

    /* renamed from: aM */
    public static final C1971h f4828aM = m2427a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);

    /* renamed from: aN */
    public static final C1971h f4829aN = m2427a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);

    /* renamed from: aO */
    public static final C1971h f4830aO = m2427a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);

    /* renamed from: aP */
    public static final C1971h f4831aP = m2427a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);

    /* renamed from: aQ */
    public static final C1971h f4832aQ = m2427a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);

    /* renamed from: aR */
    public static final C1971h f4833aR = m2427a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);

    /* renamed from: aS */
    public static final C1971h f4834aS = m2427a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);

    /* renamed from: aT */
    public static final C1971h f4835aT = m2427a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);

    /* renamed from: aU */
    public static final C1971h f4836aU = m2427a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);

    /* renamed from: aV */
    public static final C1971h f4837aV = m2427a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);

    /* renamed from: aW */
    public static final C1971h f4838aW = m2427a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);

    /* renamed from: aX */
    public static final C1971h f4839aX = m2427a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: aY */
    public static final C1971h f4840aY = m2427a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: aZ */
    public static final C1971h f4841aZ = m2427a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* renamed from: ba */
    public static final C1971h f4869ba = m2427a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* renamed from: bb */
    public static final C1971h f4870bb = m2427a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: bc */
    public static final C1971h f4871bc = m2427a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: bd */
    public static final C1971h f4872bd = m2427a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* renamed from: be */
    public static final C1971h f4873be = m2427a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* renamed from: bf */
    public static final C1971h f4874bf = m2427a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* renamed from: bg */
    public static final C1971h f4875bg = m2427a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* renamed from: bh */
    public static final C1971h f4876bh = m2427a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: bi */
    public static final C1971h f4877bi = m2427a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    private C1971h(String str) {
        if (str != null) {
            this.f4903bj = str;
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static List<C1971h> m2426a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m2428a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static C1971h m2428a(String str) {
        C1971h c1971h;
        synchronized (C1971h.class) {
            try {
                C1971h c1971h2 = f4878bk.get(str);
                c1971h = c1971h2;
                if (c1971h2 == null) {
                    c1971h = new C1971h(str);
                    f4878bk.put(str, c1971h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1971h;
    }

    /* renamed from: a */
    private static C1971h m2427a(String str, int i) {
        return m2428a(str);
    }

    public String toString() {
        return this.f4903bj;
    }
}
