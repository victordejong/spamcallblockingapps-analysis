package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u0012\u001a\u00020\u000e2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0017"}, m4298d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "()V", "ALT_DNS_NAME", "", "ALT_IPA_NAME", "allSubjectAltNames", "", "", "certificate", "Ljava/security/cert/X509Certificate;", "getSubjectAltNames", "type", "verify", "", "host", "session", "Ljavax/net/ssl/SSLSession;", "verifyHostname", "hostname", "pattern", "verifyIpAddress", "ipAddress", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/tls/OkHostnameVerifier.class */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    private final List<String> getSubjectAltNames(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return C18297z.f63400a;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && !(!C18524p.m3850a(list.get(0), Integer.valueOf(i))) && (obj = list.get(1)) != null) {
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return C18297z.f63400a;
        }
    }

    private final boolean verifyHostname(String str, String str2) {
        boolean c;
        String str3 = str;
        if ((str3 == null || str3.length() == 0) || C18425p.m3957a(str, ".", false) || C18425p.m3954b(str, "..", false)) {
            return false;
        }
        String str4 = str2;
        if ((str4 == null || str4.length() == 0) || C18425p.m3957a(str2, ".", false) || C18425p.m3954b(str2, "..", false)) {
            return false;
        }
        String str5 = str;
        if (!C18425p.m3954b(str, ".", false)) {
            str5 = str + ".";
        }
        String str6 = str2;
        if (!C18425p.m3954b(str2, ".", false)) {
            str6 = str2 + ".";
        }
        Locale locale = Locale.US;
        C18524p.m3843b(locale, "Locale.US");
        Objects.requireNonNull(str6, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str6.toLowerCase(locale);
        C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        String str7 = lowerCase;
        c = C18425p.m3919c(str7, "*", false);
        if (!c) {
            return C18524p.m3850a((Object) str5, (Object) lowerCase);
        }
        if (!C18425p.m3957a(lowerCase, "*.", false) || C18425p.m3949a((CharSequence) str7, '*', 1, false, 4) != -1 || str5.length() < lowerCase.length() || C18524p.m3850a((Object) "*.", (Object) lowerCase)) {
            return false;
        }
        Objects.requireNonNull(lowerCase, "null cannot be cast to non-null type java.lang.String");
        String substring = lowerCase.substring(1);
        C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
        if (!C18425p.m3954b(str5, substring, false)) {
            return false;
        }
        int length = str5.length() - substring.length();
        return length <= 0 || C18425p.m3951a((CharSequence) str5, '.', length - 1, 4) == -1;
    }

    private final boolean verifyHostname(String str, X509Certificate x509Certificate) {
        Locale locale = Locale.US;
        C18524p.m3843b(locale, "Locale.US");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 2);
        if (!(subjectAltNames instanceof Collection) || !subjectAltNames.isEmpty()) {
            for (String str2 : subjectAltNames) {
                if (INSTANCE.verifyHostname(lowerCase, str2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private final boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        String canonicalHost = HostnamesKt.toCanonicalHost(str);
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        if (!(subjectAltNames instanceof Collection) || !subjectAltNames.isEmpty()) {
            for (String str2 : subjectAltNames) {
                if (C18524p.m3850a((Object) canonicalHost, (Object) HostnamesKt.toCanonicalHost(str2))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final List<String> allSubjectAltNames(X509Certificate certificate) {
        C18524p.m3840d(certificate, "certificate");
        return C18282n.m4135b((Collection) getSubjectAltNames(certificate, 7), (Iterable) getSubjectAltNames(certificate, 2));
    }

    public final boolean verify(String host, X509Certificate certificate) {
        C18524p.m3840d(host, "host");
        C18524p.m3840d(certificate, "certificate");
        return Util.canParseAsIpAddress(host) ? verifyIpAddress(host, certificate) : verifyHostname(host, certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String host, SSLSession session) {
        Certificate certificate;
        C18524p.m3840d(host, "host");
        C18524p.m3840d(session, "session");
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
