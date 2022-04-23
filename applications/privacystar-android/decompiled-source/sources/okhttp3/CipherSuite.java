package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:okhttp3/CipherSuite.class */
public final class CipherSuite {
    final String javaName;
    static final Comparator<String> ORDER_BY_NAME = new Comparator<String>() { // from class: okhttp3.CipherSuite.1
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
    };
    private static final Map<String, CipherSuite> INSTANCES = new TreeMap(ORDER_BY_NAME);
    public static final CipherSuite TLS_RSA_WITH_NULL_MD5 = m235of("SSL_RSA_WITH_NULL_MD5", 1);
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA = m235of("SSL_RSA_WITH_NULL_SHA", 2);
    public static final CipherSuite TLS_RSA_EXPORT_WITH_RC4_40_MD5 = m235of("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
    public static final CipherSuite TLS_RSA_WITH_RC4_128_MD5 = m235of("SSL_RSA_WITH_RC4_128_MD5", 4);
    public static final CipherSuite TLS_RSA_WITH_RC4_128_SHA = m235of("SSL_RSA_WITH_RC4_128_SHA", 5);
    public static final CipherSuite TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = m235of("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
    public static final CipherSuite TLS_RSA_WITH_DES_CBC_SHA = m235of("SSL_RSA_WITH_DES_CBC_SHA", 9);
    public static final CipherSuite TLS_RSA_WITH_3DES_EDE_CBC_SHA = m235of("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
    public static final CipherSuite TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = m235of("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
    public static final CipherSuite TLS_DHE_DSS_WITH_DES_CBC_SHA = m235of("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
    public static final CipherSuite TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = m235of("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
    public static final CipherSuite TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = m235of("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
    public static final CipherSuite TLS_DHE_RSA_WITH_DES_CBC_SHA = m235of("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
    public static final CipherSuite TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = m235of("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = m235of("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
    public static final CipherSuite TLS_DH_anon_WITH_RC4_128_MD5 = m235of("SSL_DH_anon_WITH_RC4_128_MD5", 24);
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = m235of("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
    public static final CipherSuite TLS_DH_anon_WITH_DES_CBC_SHA = m235of("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
    public static final CipherSuite TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = m235of("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_SHA = m235of("TLS_KRB5_WITH_DES_CBC_SHA", 30);
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_SHA = m235of("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_SHA = m235of("TLS_KRB5_WITH_RC4_128_SHA", 32);
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_MD5 = m235of("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_MD5 = m235of("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_MD5 = m235of("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA = m235of("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_SHA = m235of("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5 = m235of("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_MD5 = m235of("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA = m235of("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA = m235of("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA = m235of("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA = m235of("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA = m235of("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA = m235of("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA = m235of("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA = m235of("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA256 = m235of("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA256 = m235of("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = m235of("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_128_CBC_SHA = m235of("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA = m235of("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA = m235of("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = m235of("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = m235of("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA256 = m235of("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA256 = m235of("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_256_CBC_SHA = m235of("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA = m235of("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA = m235of("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
    public static final CipherSuite TLS_PSK_WITH_RC4_128_SHA = m235of("TLS_PSK_WITH_RC4_128_SHA", 138);
    public static final CipherSuite TLS_PSK_WITH_3DES_EDE_CBC_SHA = m235of("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
    public static final CipherSuite TLS_PSK_WITH_AES_128_CBC_SHA = m235of("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
    public static final CipherSuite TLS_PSK_WITH_AES_256_CBC_SHA = m235of("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
    public static final CipherSuite TLS_RSA_WITH_SEED_CBC_SHA = m235of("TLS_RSA_WITH_SEED_CBC_SHA", 150);
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);
    public static final CipherSuite TLS_RSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = m235of("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = m235of("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_GCM_SHA256 = m235of("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_GCM_SHA384 = m235of("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
    public static final CipherSuite TLS_EMPTY_RENEGOTIATION_INFO_SCSV = m235of("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
    public static final CipherSuite TLS_FALLBACK_SCSV = m235of("TLS_FALLBACK_SCSV", org.spongycastle.crypto.tls.CipherSuite.TLS_FALLBACK_SCSV);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_NULL_SHA = m235of("TLS_ECDH_ECDSA_WITH_NULL_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_NULL_SHA);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_RC4_128_SHA = m235of("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_RC4_128_SHA);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = m235of("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = m235of("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = m235of("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_NULL_SHA = m235of("TLS_ECDHE_ECDSA_WITH_NULL_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_NULL_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = m235of("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_RC4_128_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = m235of("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = m235of("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = m235of("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDH_RSA_WITH_NULL_SHA = m235of("TLS_ECDH_RSA_WITH_NULL_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_NULL_SHA);
    public static final CipherSuite TLS_ECDH_RSA_WITH_RC4_128_SHA = m235of("TLS_ECDH_RSA_WITH_RC4_128_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_RC4_128_SHA);
    public static final CipherSuite TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = m235of("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = m235of("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = m235of("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_NULL_SHA = m235of("TLS_ECDHE_RSA_WITH_NULL_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_NULL_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_RC4_128_SHA = m235of("TLS_ECDHE_RSA_WITH_RC4_128_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_RC4_128_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = m235of("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = m235of("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = m235of("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDH_anon_WITH_NULL_SHA = m235of("TLS_ECDH_anon_WITH_NULL_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_anon_WITH_NULL_SHA);
    public static final CipherSuite TLS_ECDH_anon_WITH_RC4_128_SHA = m235of("TLS_ECDH_anon_WITH_RC4_128_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_anon_WITH_RC4_128_SHA);
    public static final CipherSuite TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = m235of("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA);
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_128_CBC_SHA = m235of("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_anon_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_256_CBC_SHA = m235of("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_anon_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = m235of("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = m235of("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = m235of("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = m235of("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = m235of("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256);
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = m235of("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256);
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = m235of("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384);
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA = m235of("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA = m235of("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", org.spongycastle.crypto.tls.CipherSuite.TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA);
    public static final CipherSuite TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = m235of("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", org.spongycastle.crypto.tls.CipherSuite.DRAFT_TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256);
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = m235of("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", org.spongycastle.crypto.tls.CipherSuite.DRAFT_TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256);

    private CipherSuite(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.javaName = str;
    }

    public static CipherSuite forJavaName(String str) {
        CipherSuite cipherSuite;
        synchronized (CipherSuite.class) {
            try {
                CipherSuite cipherSuite2 = INSTANCES.get(str);
                cipherSuite = cipherSuite2;
                if (cipherSuite2 == null) {
                    cipherSuite = new CipherSuite(str);
                    INSTANCES.put(str, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipherSuite;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<CipherSuite> forJavaNames(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(forJavaName(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: of */
    private static CipherSuite m235of(String str, int i) {
        return forJavaName(str);
    }

    public String javaName() {
        return this.javaName;
    }

    public String toString() {
        return this.javaName;
    }
}
