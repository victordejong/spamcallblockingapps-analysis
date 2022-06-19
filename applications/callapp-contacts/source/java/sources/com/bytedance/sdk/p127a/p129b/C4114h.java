package com.bytedance.sdk.p127a.p129b;

import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
/* renamed from: com.bytedance.sdk.a.b.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/h.class */
public final class C4114h {

    /* renamed from: a */
    static final Comparator<String> f14974a;

    /* renamed from: bk */
    private static final Map<String, C4114h> f15037bk;

    /* renamed from: bj */
    final String f15062bj;

    /* renamed from: b */
    public static final C4114h f15027b = m36541a("SSL_RSA_WITH_NULL_MD5", 1);

    /* renamed from: c */
    public static final C4114h f15038c = m36541a("SSL_RSA_WITH_NULL_SHA", 2);

    /* renamed from: d */
    public static final C4114h f15039d = m36541a("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* renamed from: e */
    public static final C4114h f15040e = m36541a("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* renamed from: f */
    public static final C4114h f15041f = m36541a("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* renamed from: g */
    public static final C4114h f15042g = m36541a("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* renamed from: h */
    public static final C4114h f15043h = m36541a("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* renamed from: i */
    public static final C4114h f15044i = m36541a("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: j */
    public static final C4114h f15045j = m36541a("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* renamed from: k */
    public static final C4114h f15046k = m36541a("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* renamed from: l */
    public static final C4114h f15047l = m36541a("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* renamed from: m */
    public static final C4114h f15048m = m36541a("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* renamed from: n */
    public static final C4114h f15049n = m36541a("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* renamed from: o */
    public static final C4114h f15050o = m36541a("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* renamed from: p */
    public static final C4114h f15051p = m36541a("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* renamed from: q */
    public static final C4114h f15052q = m36541a("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* renamed from: r */
    public static final C4114h f15053r = m36541a("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* renamed from: s */
    public static final C4114h f15054s = m36541a("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* renamed from: t */
    public static final C4114h f15055t = m36541a("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* renamed from: u */
    public static final C4114h f15056u = m36541a("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* renamed from: v */
    public static final C4114h f15057v = m36541a("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* renamed from: w */
    public static final C4114h f15058w = m36541a("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* renamed from: x */
    public static final C4114h f15059x = m36541a("TLS_KRB5_WITH_DES_CBC_MD5", 34);

    /* renamed from: y */
    public static final C4114h f15060y = m36541a("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);

    /* renamed from: z */
    public static final C4114h f15061z = m36541a("TLS_KRB5_WITH_RC4_128_MD5", 36);

    /* renamed from: A */
    public static final C4114h f14948A = m36541a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);

    /* renamed from: B */
    public static final C4114h f14949B = m36541a("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);

    /* renamed from: C */
    public static final C4114h f14950C = m36541a("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);

    /* renamed from: D */
    public static final C4114h f14951D = m36541a("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);

    /* renamed from: E */
    public static final C4114h f14952E = m36541a("TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    /* renamed from: F */
    public static final C4114h f14953F = m36541a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);

    /* renamed from: G */
    public static final C4114h f14954G = m36541a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);

    /* renamed from: H */
    public static final C4114h f14955H = m36541a("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);

    /* renamed from: I */
    public static final C4114h f14956I = m36541a("TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    /* renamed from: J */
    public static final C4114h f14957J = m36541a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);

    /* renamed from: K */
    public static final C4114h f14958K = m36541a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);

    /* renamed from: L */
    public static final C4114h f14959L = m36541a("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);

    /* renamed from: M */
    public static final C4114h f14960M = m36541a("TLS_RSA_WITH_NULL_SHA256", 59);

    /* renamed from: N */
    public static final C4114h f14961N = m36541a("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);

    /* renamed from: O */
    public static final C4114h f14962O = m36541a("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);

    /* renamed from: P */
    public static final C4114h f14963P = m36541a("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);

    /* renamed from: Q */
    public static final C4114h f14964Q = m36541a("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);

    /* renamed from: R */
    public static final C4114h f14965R = m36541a("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);

    /* renamed from: S */
    public static final C4114h f14966S = m36541a("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);

    /* renamed from: T */
    public static final C4114h f14967T = m36541a("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);

    /* renamed from: U */
    public static final C4114h f14968U = m36541a("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);

    /* renamed from: V */
    public static final C4114h f14969V = m36541a("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);

    /* renamed from: W */
    public static final C4114h f14970W = m36541a("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);

    /* renamed from: X */
    public static final C4114h f14971X = m36541a("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* renamed from: Y */
    public static final C4114h f14972Y = m36541a("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    /* renamed from: Z */
    public static final C4114h f14973Z = m36541a("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* renamed from: aa */
    public static final C4114h f15001aa = m36541a("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    /* renamed from: ab */
    public static final C4114h f15002ab = m36541a("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* renamed from: ac */
    public static final C4114h f15003ac = m36541a("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* renamed from: ad */
    public static final C4114h f15004ad = m36541a("TLS_PSK_WITH_AES_128_CBC_SHA", TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);

    /* renamed from: ae */
    public static final C4114h f15005ae = m36541a("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* renamed from: af */
    public static final C4114h f15006af = m36541a("TLS_RSA_WITH_SEED_CBC_SHA", DrawableConstants.CtaButton.WIDTH_DIPS);

    /* renamed from: ag */
    public static final C4114h f15007ag = m36541a("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: ah */
    public static final C4114h f15008ah = m36541a("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: ai */
    public static final C4114h f15009ai = m36541a("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* renamed from: aj */
    public static final C4114h f15010aj = m36541a("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* renamed from: ak */
    public static final C4114h f15011ak = m36541a("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* renamed from: al */
    public static final C4114h f15012al = m36541a("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* renamed from: am */
    public static final C4114h f15013am = m36541a("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* renamed from: an */
    public static final C4114h f15014an = m36541a("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* renamed from: ao */
    public static final C4114h f15015ao = m36541a("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* renamed from: ap */
    public static final C4114h f15016ap = m36541a("TLS_FALLBACK_SCSV", 22016);

    /* renamed from: aq */
    public static final C4114h f15017aq = m36541a("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* renamed from: ar */
    public static final C4114h f15018ar = m36541a("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* renamed from: as */
    public static final C4114h f15019as = m36541a("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* renamed from: at */
    public static final C4114h f15020at = m36541a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* renamed from: au */
    public static final C4114h f15021au = m36541a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* renamed from: av */
    public static final C4114h f15022av = m36541a("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* renamed from: aw */
    public static final C4114h f15023aw = m36541a("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* renamed from: ax */
    public static final C4114h f15024ax = m36541a("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);

    /* renamed from: ay */
    public static final C4114h f15025ay = m36541a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);

    /* renamed from: az */
    public static final C4114h f15026az = m36541a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);

    /* renamed from: aA */
    public static final C4114h f14975aA = m36541a("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);

    /* renamed from: aB */
    public static final C4114h f14976aB = m36541a("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);

    /* renamed from: aC */
    public static final C4114h f14977aC = m36541a("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);

    /* renamed from: aD */
    public static final C4114h f14978aD = m36541a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);

    /* renamed from: aE */
    public static final C4114h f14979aE = m36541a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);

    /* renamed from: aF */
    public static final C4114h f14980aF = m36541a("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);

    /* renamed from: aG */
    public static final C4114h f14981aG = m36541a("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);

    /* renamed from: aH */
    public static final C4114h f14982aH = m36541a("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);

    /* renamed from: aI */
    public static final C4114h f14983aI = m36541a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    /* renamed from: aJ */
    public static final C4114h f14984aJ = m36541a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    /* renamed from: aK */
    public static final C4114h f14985aK = m36541a("TLS_ECDH_anon_WITH_NULL_SHA", 49173);

    /* renamed from: aL */
    public static final C4114h f14986aL = m36541a("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);

    /* renamed from: aM */
    public static final C4114h f14987aM = m36541a("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);

    /* renamed from: aN */
    public static final C4114h f14988aN = m36541a("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);

    /* renamed from: aO */
    public static final C4114h f14989aO = m36541a("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);

    /* renamed from: aP */
    public static final C4114h f14990aP = m36541a("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);

    /* renamed from: aQ */
    public static final C4114h f14991aQ = m36541a("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);

    /* renamed from: aR */
    public static final C4114h f14992aR = m36541a("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);

    /* renamed from: aS */
    public static final C4114h f14993aS = m36541a("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);

    /* renamed from: aT */
    public static final C4114h f14994aT = m36541a("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);

    /* renamed from: aU */
    public static final C4114h f14995aU = m36541a("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);

    /* renamed from: aV */
    public static final C4114h f14996aV = m36541a("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);

    /* renamed from: aW */
    public static final C4114h f14997aW = m36541a("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);

    /* renamed from: aX */
    public static final C4114h f14998aX = m36541a("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: aY */
    public static final C4114h f14999aY = m36541a("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: aZ */
    public static final C4114h f15000aZ = m36541a("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* renamed from: ba */
    public static final C4114h f15028ba = m36541a("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* renamed from: bb */
    public static final C4114h f15029bb = m36541a("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* renamed from: bc */
    public static final C4114h f15030bc = m36541a("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* renamed from: bd */
    public static final C4114h f15031bd = m36541a("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* renamed from: be */
    public static final C4114h f15032be = m36541a("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* renamed from: bf */
    public static final C4114h f15033bf = m36541a("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* renamed from: bg */
    public static final C4114h f15034bg = m36541a("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* renamed from: bh */
    public static final C4114h f15035bh = m36541a("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* renamed from: bi */
    public static final C4114h f15036bi = m36541a("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    static {
        Comparator<String> comparator = new Comparator<String>() { // from class: com.bytedance.sdk.a.b.h.1
            /* renamed from: a */
            public final int compare(String str, String str2) {
                int min = Math.min(str.length(), str2.length());
                for (int i = 4; i < min; i++) {
                    char charAt = str.charAt(i);
                    char charAt2 = str2.charAt(i);
                    if (charAt != charAt2) {
                        return charAt < charAt2 ? -1 : 1;
                    }
                }
                int length = str.length();
                int length2 = str2.length();
                if (length != length2) {
                    return length < length2 ? -1 : 1;
                }
                return 0;
            }
        };
        f14974a = comparator;
        f15037bk = new TreeMap(comparator);
    }

    private C4114h(String str) {
        Objects.requireNonNull(str);
        this.f15062bj = str;
    }

    /* renamed from: a */
    public static C4114h m36542a(String str) {
        C4114h c4114h;
        synchronized (C4114h.class) {
            try {
                Map<String, C4114h> map = f15037bk;
                C4114h c4114h2 = map.get(str);
                c4114h = c4114h2;
                if (c4114h2 == null) {
                    c4114h = new C4114h(str);
                    map.put(str, c4114h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4114h;
    }

    /* renamed from: a */
    private static C4114h m36541a(String str, int i) {
        return m36542a(str);
    }

    /* renamed from: a */
    public static List<C4114h> m36540a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m36542a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final String toString() {
        return this.f15062bj;
    }
}
