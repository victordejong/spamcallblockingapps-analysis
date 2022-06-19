package p204p9;

import android.support.p012v4.media.C0082b;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
/* renamed from: p9.h */
/* loaded from: classes2-dex2jar.jar:p9/h.class */
public final class C4104h {

    /* renamed from: b */
    public static final Comparator<String> f12888b = new C4105a();

    /* renamed from: c */
    public static final Map<String, C4104h> f12889c;

    /* renamed from: d */
    public static final C4104h f12890d;

    /* renamed from: e */
    public static final C4104h f12891e;

    /* renamed from: f */
    public static final C4104h f12892f;

    /* renamed from: g */
    public static final C4104h f12893g;

    /* renamed from: h */
    public static final C4104h f12894h;

    /* renamed from: i */
    public static final C4104h f12895i;

    /* renamed from: j */
    public static final C4104h f12896j;

    /* renamed from: k */
    public static final C4104h f12897k;

    /* renamed from: l */
    public static final C4104h f12898l;

    /* renamed from: m */
    public static final C4104h f12899m;

    /* renamed from: n */
    public static final C4104h f12900n;

    /* renamed from: o */
    public static final C4104h f12901o;

    /* renamed from: p */
    public static final C4104h f12902p;

    /* renamed from: q */
    public static final C4104h f12903q;

    /* renamed from: r */
    public static final C4104h f12904r;

    /* renamed from: s */
    public static final C4104h f12905s;

    /* renamed from: t */
    public static final C4104h f12906t;

    /* renamed from: u */
    public static final C4104h f12907u;

    /* renamed from: a */
    public final String f12908a;

    /* renamed from: p9.h$a */
    /* loaded from: classes2-dex2jar.jar:p9/h$a.class */
    public class C4105a implements Comparator<String> {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
            r7 = 1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(java.lang.String r4, java.lang.String r5) {
            /*
                r3 = this;
                r0 = r4
                java.lang.String r0 = (java.lang.String) r0
                r4 = r0
                r0 = r5
                java.lang.String r0 = (java.lang.String) r0
                r5 = r0
                r0 = r4
                int r0 = r0.length()
                r1 = r5
                int r1 = r1.length()
                int r0 = java.lang.Math.min(r0, r1)
                r6 = r0
                r0 = 4
                r7 = r0
            L19:
                r0 = -1
                r8 = r0
                r0 = r7
                r1 = r6
                if (r0 >= r1) goto L53
                r0 = r4
                r1 = r7
                char r0 = r0.charAt(r1)
                r9 = r0
                r0 = r5
                r1 = r7
                char r0 = r0.charAt(r1)
                r10 = r0
                r0 = r9
                r1 = r10
                if (r0 == r1) goto L4d
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L47
                r0 = r8
                r7 = r0
                goto L74
            L47:
                r0 = 1
                r7 = r0
                goto L74
            L4d:
                int r7 = r7 + 1
                goto L19
            L53:
                r0 = r4
                int r0 = r0.length()
                r7 = r0
                r0 = r5
                int r0 = r0.length()
                r6 = r0
                r0 = r7
                r1 = r6
                if (r0 == r1) goto L71
                r0 = r7
                r1 = r6
                if (r0 >= r1) goto L47
                r0 = r8
                r7 = r0
                goto L74
            L71:
                r0 = 0
                r7 = r0
            L74:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p204p9.C4104h.C4105a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f12889c = linkedHashMap;
        linkedHashMap.put("SSL_RSA_WITH_NULL_MD5", new C4104h("SSL_RSA_WITH_NULL_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_NULL_SHA", new C4104h("SSL_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("SSL_RSA_EXPORT_WITH_RC4_40_MD5", new C4104h("SSL_RSA_EXPORT_WITH_RC4_40_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_RC4_128_MD5", new C4104h("SSL_RSA_WITH_RC4_128_MD5"));
        linkedHashMap.put("SSL_RSA_WITH_RC4_128_SHA", new C4104h("SSL_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", new C4104h("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_RSA_WITH_DES_CBC_SHA", new C4104h("SSL_RSA_WITH_DES_CBC_SHA"));
        C4104h c4104h = new C4104h("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        linkedHashMap.put("SSL_RSA_WITH_3DES_EDE_CBC_SHA", c4104h);
        f12890d = c4104h;
        linkedHashMap.put("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", new C4104h("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_DSS_WITH_DES_CBC_SHA", new C4104h("SSL_DHE_DSS_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", new C4104h("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", new C4104h("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_WITH_DES_CBC_SHA", new C4104h("SSL_DHE_RSA_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", new C4104h("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", new C4104h("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"));
        linkedHashMap.put("SSL_DH_anon_WITH_RC4_128_MD5", new C4104h("SSL_DH_anon_WITH_RC4_128_MD5"));
        linkedHashMap.put("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", new C4104h("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_WITH_DES_CBC_SHA", new C4104h("SSL_DH_anon_WITH_DES_CBC_SHA"));
        linkedHashMap.put("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", new C4104h("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_DES_CBC_SHA", new C4104h("TLS_KRB5_WITH_DES_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_KRB5_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_RC4_128_SHA", new C4104h("TLS_KRB5_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_KRB5_WITH_DES_CBC_MD5", new C4104h("TLS_KRB5_WITH_DES_CBC_MD5"));
        linkedHashMap.put("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", new C4104h("TLS_KRB5_WITH_3DES_EDE_CBC_MD5"));
        linkedHashMap.put("TLS_KRB5_WITH_RC4_128_MD5", new C4104h("TLS_KRB5_WITH_RC4_128_MD5"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", new C4104h("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", new C4104h("TLS_KRB5_EXPORT_WITH_RC4_40_SHA"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", new C4104h("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"));
        linkedHashMap.put("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", new C4104h("TLS_KRB5_EXPORT_WITH_RC4_40_MD5"));
        C4104h c4104h2 = new C4104h("TLS_RSA_WITH_AES_128_CBC_SHA");
        linkedHashMap.put("TLS_RSA_WITH_AES_128_CBC_SHA", c4104h2);
        f12891e = c4104h2;
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", new C4104h("TLS_DHE_DSS_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", new C4104h("TLS_DHE_RSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_CBC_SHA", new C4104h("TLS_DH_anon_WITH_AES_128_CBC_SHA"));
        C4104h c4104h3 = new C4104h("TLS_RSA_WITH_AES_256_CBC_SHA");
        linkedHashMap.put("TLS_RSA_WITH_AES_256_CBC_SHA", c4104h3);
        f12892f = c4104h3;
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", new C4104h("TLS_DHE_DSS_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", new C4104h("TLS_DHE_RSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_CBC_SHA", new C4104h("TLS_DH_anon_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_RSA_WITH_NULL_SHA256", new C4104h("TLS_RSA_WITH_NULL_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_AES_256_CBC_SHA256", new C4104h("TLS_RSA_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", new C4104h("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", new C4104h("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", new C4104h("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", new C4104h("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", new C4104h("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", new C4104h("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_CBC_SHA256", new C4104h("TLS_DH_anon_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_CBC_SHA256", new C4104h("TLS_DH_anon_WITH_AES_256_CBC_SHA256"));
        linkedHashMap.put("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", new C4104h("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", new C4104h("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", new C4104h("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_RC4_128_SHA", new C4104h("TLS_PSK_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_PSK_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_AES_128_CBC_SHA", new C4104h("TLS_PSK_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_PSK_WITH_AES_256_CBC_SHA", new C4104h("TLS_PSK_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_RSA_WITH_SEED_CBC_SHA", new C4104h("TLS_RSA_WITH_SEED_CBC_SHA"));
        C4104h c4104h4 = new C4104h("TLS_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_RSA_WITH_AES_128_GCM_SHA256", c4104h4);
        f12893g = c4104h4;
        C4104h c4104h5 = new C4104h("TLS_RSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_RSA_WITH_AES_256_GCM_SHA384", c4104h5);
        f12894h = c4104h5;
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", new C4104h("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", new C4104h("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", new C4104h("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", new C4104h("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_128_GCM_SHA256", new C4104h("TLS_DH_anon_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_DH_anon_WITH_AES_256_GCM_SHA384", new C4104h("TLS_DH_anon_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", new C4104h("TLS_EMPTY_RENEGOTIATION_INFO_SCSV"));
        linkedHashMap.put("TLS_FALLBACK_SCSV", new C4104h("TLS_FALLBACK_SCSV"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_NULL_SHA", new C4104h("TLS_ECDH_ECDSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", new C4104h("TLS_ECDH_ECDSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", new C4104h("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", new C4104h("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_NULL_SHA", new C4104h("TLS_ECDHE_ECDSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", new C4104h("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", new C4104h("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", new C4104h("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_NULL_SHA", new C4104h("TLS_ECDH_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_RC4_128_SHA", new C4104h("TLS_ECDH_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", new C4104h("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", new C4104h("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_NULL_SHA", new C4104h("TLS_ECDHE_RSA_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_RC4_128_SHA", new C4104h("TLS_ECDHE_RSA_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"));
        C4104h c4104h6 = new C4104h("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", c4104h6);
        f12895i = c4104h6;
        C4104h c4104h7 = new C4104h("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", c4104h7);
        f12896j = c4104h7;
        linkedHashMap.put("TLS_ECDH_anon_WITH_NULL_SHA", new C4104h("TLS_ECDH_anon_WITH_NULL_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_RC4_128_SHA", new C4104h("TLS_ECDH_anon_WITH_RC4_128_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", new C4104h("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", new C4104h("TLS_ECDH_anon_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", new C4104h("TLS_ECDH_anon_WITH_AES_256_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", new C4104h("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", new C4104h("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", new C4104h("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", new C4104h("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", new C4104h("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"));
        C4104h c4104h8 = new C4104h("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", c4104h8);
        f12897k = c4104h8;
        C4104h c4104h9 = new C4104h("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", c4104h9);
        f12898l = c4104h9;
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", new C4104h("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", new C4104h("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"));
        C4104h c4104h10 = new C4104h("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", c4104h10);
        f12899m = c4104h10;
        C4104h c4104h11 = new C4104h("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", c4104h11);
        f12900n = c4104h11;
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", new C4104h("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"));
        linkedHashMap.put("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", new C4104h("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", new C4104h("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", new C4104h("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"));
        C4104h c4104h12 = new C4104h("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", c4104h12);
        f12901o = c4104h12;
        C4104h c4104h13 = new C4104h("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", c4104h13);
        f12902p = c4104h13;
        linkedHashMap.put("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", new C4104h("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"));
        linkedHashMap.put("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", new C4104h("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"));
        C4104h c4104h14 = new C4104h("TLS_AES_128_GCM_SHA256");
        linkedHashMap.put("TLS_AES_128_GCM_SHA256", c4104h14);
        f12903q = c4104h14;
        C4104h c4104h15 = new C4104h("TLS_AES_256_GCM_SHA384");
        linkedHashMap.put("TLS_AES_256_GCM_SHA384", c4104h15);
        f12904r = c4104h15;
        C4104h c4104h16 = new C4104h("TLS_CHACHA20_POLY1305_SHA256");
        linkedHashMap.put("TLS_CHACHA20_POLY1305_SHA256", c4104h16);
        f12905s = c4104h16;
        C4104h c4104h17 = new C4104h("TLS_AES_128_CCM_SHA256");
        linkedHashMap.put("TLS_AES_128_CCM_SHA256", c4104h17);
        f12906t = c4104h17;
        C4104h c4104h18 = new C4104h("TLS_AES_256_CCM_8_SHA256");
        linkedHashMap.put("TLS_AES_256_CCM_8_SHA256", c4104h18);
        f12907u = c4104h18;
    }

    public C4104h(String str) {
        Objects.requireNonNull(str);
        this.f12908a = str;
    }

    /* renamed from: a */
    public static C4104h m1418a(String str) {
        C4104h c4104h;
        synchronized (C4104h.class) {
            try {
                Map<String, C4104h> map = f12889c;
                C4104h c4104h2 = (C4104h) ((LinkedHashMap) map).get(str);
                c4104h = c4104h2;
                if (c4104h2 == null) {
                    C4104h c4104h3 = (C4104h) ((LinkedHashMap) map).get(m1417b(str));
                    c4104h = c4104h3;
                    if (c4104h3 == null) {
                        c4104h = new C4104h(str);
                    }
                    map.put(str, c4104h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4104h;
    }

    /* renamed from: b */
    public static String m1417b(String str) {
        if (str.startsWith("TLS_")) {
            StringBuilder m8752j = C0082b.m8752j("SSL_");
            m8752j.append(str.substring(4));
            return m8752j.toString();
        }
        String str2 = str;
        if (str.startsWith("SSL_")) {
            StringBuilder m8752j2 = C0082b.m8752j("TLS_");
            m8752j2.append(str.substring(4));
            str2 = m8752j2.toString();
        }
        return str2;
    }

    public String toString() {
        return this.f12908a;
    }
}
