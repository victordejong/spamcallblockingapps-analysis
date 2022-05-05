package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u000e\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u000fJ#\u0010\u0014\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0016J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u000fR\u0016\u0010\u0019\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001a¨\u0006\u001e"}, d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "Ljava/security/cert/X509Certificate;", "certificate", "", "", "allSubjectAltNames", "(Ljava/security/cert/X509Certificate;)Ljava/util/List;", "", "type", "getSubjectAltNames", "(Ljava/security/cert/X509Certificate;I)Ljava/util/List;", "host", "", "verify", "(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z", "Ljavax/net/ssl/SSLSession;", "session", "(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z", "hostname", "verifyHostname", "pattern", "(Ljava/lang/String;Ljava/lang/String;)Z", "ipAddress", "verifyIpAddress", "ALT_DNS_NAME", "I", "ALT_IPA_NAME", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/tls/OkHostnameVerifier.class */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i) {
        List<String> f;
        List<String> f2;
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames != null) {
                ArrayList arrayList = new ArrayList();
                for (List<?> list : subjectAlternativeNames) {
                    if (list != null && list.size() >= 2 && !(!Intrinsics.m1834a(list.get(0), Integer.valueOf(i))) && (obj = list.get(1)) != null) {
                        if (obj != null) {
                            arrayList.add((String) obj);
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                    }
                }
                return arrayList;
            }
            f2 = CollectionsKt__CollectionsKt.m2175f();
            return f2;
        } catch (CertificateParsingException e) {
            f = CollectionsKt__CollectionsKt.m2175f();
            return f;
        }
    }

    private final boolean verifyHostname(String str, String str2) {
        boolean C;
        boolean o;
        boolean C2;
        boolean o2;
        boolean o3;
        boolean o4;
        boolean H;
        boolean C3;
        int T;
        boolean o5;
        int Z;
        if (str == null || str.length() == 0) {
            return false;
        }
        C = StringsKt__StringsJVMKt.m1491C(str, ".", false, 2, null);
        if (C) {
            return false;
        }
        o = StringsKt__StringsJVMKt.m1488o(str, "..", false, 2, null);
        if (o) {
            return false;
        }
        if (str2 == null || str2.length() == 0) {
            return false;
        }
        C2 = StringsKt__StringsJVMKt.m1491C(str2, ".", false, 2, null);
        if (C2) {
            return false;
        }
        o2 = StringsKt__StringsJVMKt.m1488o(str2, "..", false, 2, null);
        if (o2) {
            return false;
        }
        String str3 = str;
        o3 = StringsKt__StringsJVMKt.m1488o(str, ".", false, 2, null);
        if (!o3) {
            str3 = str + ".";
        }
        String str4 = str2;
        o4 = StringsKt__StringsJVMKt.m1488o(str2, ".", false, 2, null);
        if (!o4) {
            str4 = str2 + ".";
        }
        Locale locale = Locale.US;
        Intrinsics.m1831d(locale, "Locale.US");
        if (str4 != null) {
            String lowerCase = str4.toLowerCase(locale);
            Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            H = StringsKt__StringsKt.m1466H(lowerCase, "*", false, 2, null);
            if (!H) {
                return Intrinsics.m1834a(str3, lowerCase);
            }
            C3 = StringsKt__StringsJVMKt.m1491C(lowerCase, "*.", false, 2, null);
            if (!C3) {
                return false;
            }
            T = StringsKt__StringsKt.m1454T(lowerCase, '*', 1, false, 4, null);
            if (T != -1 || str3.length() < lowerCase.length() || Intrinsics.m1834a("*.", lowerCase)) {
                return false;
            }
            if (lowerCase != null) {
                String substring = lowerCase.substring(1);
                Intrinsics.m1831d(substring, "(this as java.lang.String).substring(startIndex)");
                o5 = StringsKt__StringsJVMKt.m1488o(str3, substring, false, 2, null);
                if (!o5) {
                    return false;
                }
                int length = str3.length() - substring.length();
                if (length <= 0) {
                    return true;
                }
                Z = StringsKt__StringsKt.m1448Z(str3, '.', length - 1, false, 4, null);
                return Z == -1;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) {
        boolean z;
        Locale locale = Locale.US;
        Intrinsics.m1831d(locale, "Locale.US");
        if (str != null) {
            String lowerCase = str.toLowerCase(locale);
            Intrinsics.m1831d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
            if (!(subjectAltNames instanceof Collection) || !subjectAltNames.isEmpty()) {
                Iterator<T> it = subjectAltNames.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    if (INSTANCE.verifyHostname(lowerCase, (String) it.next())) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
            }
            return z;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        boolean z;
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if (!(subjectAltNames instanceof Collection) || !subjectAltNames.isEmpty()) {
            Iterator<T> it = subjectAltNames.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (Intrinsics.m1834a(canonicalHost, HostnamesKt.toCanonicalHost((String) it.next()))) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @NotNull
    public final List<String> allSubjectAltNames(@NotNull X509Certificate certificate) {
        List<String> M;
        Intrinsics.m1830e(certificate, "certificate");
        M = CollectionsKt___CollectionsKt.m2141M(getSubjectAltNames(certificate, 7), getSubjectAltNames(certificate, 2));
        return M;
    }

    public final boolean verify(@NotNull String host, @NotNull X509Certificate certificate) {
        Intrinsics.m1830e(host, "host");
        Intrinsics.m1830e(certificate, "certificate");
        return Util.canParseAsIpAddress(host) ? verifyIpAddress(host, certificate) : verifyHostname(host, certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String host, @NotNull SSLSession session) {
        Certificate certificate;
        Intrinsics.m1830e(host, "host");
        Intrinsics.m1830e(session, "session");
        boolean z = false;
        try {
            certificate = session.getPeerCertificates()[0];
        } catch (SSLException e) {
        }
        if (certificate != null) {
            z = verify(host, (X509Certificate) certificate);
            return z;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
    }
}
