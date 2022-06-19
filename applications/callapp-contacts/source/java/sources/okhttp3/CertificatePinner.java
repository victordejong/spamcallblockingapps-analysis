package okhttp3;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import okhttp3.internal.tls.CertificateChainCleaner;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\u0018�� \"2\u00020\u0001:\u0003!\"#B!\b��\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J)\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u0011H��¢\u0006\u0002\b\u0014J)\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170\u0016\"\u00020\u0017H\u0007¢\u0006\u0002\u0010\u0018J\u001c\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0015\u0010\u001f\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006H��¢\u0006\u0002\b R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006$"}, m4298d2 = {"Lokhttp3/CertificatePinner;", "", "pins", "", "Lokhttp3/CertificatePinner$Pin;", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V", "getCertificateChainCleaner$okhttp", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "getPins", "()Ljava/util/Set;", "check", "", "hostname", "", "cleanedPeerCertificatesFn", "Lkotlin/Function0;", "", "Ljava/security/cert/X509Certificate;", "check$okhttp", "peerCertificates", "", "Ljava/security/cert/Certificate;", "(Ljava/lang/String;[Ljava/security/cert/Certificate;)V", "equals", "", "other", "findMatchingPins", "hashCode", "", "withCertificateChainCleaner", "withCertificateChainCleaner$okhttp", "Builder", "Companion", "Pin", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/CertificatePinner.class */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000b\"\u00020\n¢\u0006\u0002\u0010\fJ\u0006\u0010\r\u001a\u00020\u000eR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, m4298d2 = {"Lokhttp3/CertificatePinner$Builder;", "", "()V", "pins", "", "Lokhttp3/CertificatePinner$Pin;", "getPins", "()Ljava/util/List;", "add", "pattern", "", "", "(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lokhttp3/CertificatePinner;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/CertificatePinner$Builder.class */
    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final Builder add(String pattern, String... pins) {
            C18524p.m3840d(pattern, "pattern");
            C18524p.m3840d(pins, "pins");
            Builder builder = this;
            for (String str : pins) {
                builder.pins.add(new Pin(pattern, str));
            }
            return builder;
        }

        public final CertificatePinner build() {
            return new CertificatePinner(C18282n.m4114j((Iterable) this.pins), null, 2, null);
        }

        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\f\u0010\t\u001a\u00020\n*\u00020\u000bH\u0007J\f\u0010\f\u001a\u00020\n*\u00020\u000bH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lokhttp3/CertificatePinner$Companion;", "", "()V", "DEFAULT", "Lokhttp3/CertificatePinner;", "pin", "", "certificate", "Ljava/security/cert/Certificate;", "sha1Hash", "Lokio/ByteString;", "Ljava/security/cert/X509Certificate;", "sha256Hash", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/CertificatePinner$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String pin(Certificate certificate) {
            C18524p.m3840d(certificate, "certificate");
            if (certificate instanceof X509Certificate) {
                return "sha256/" + sha256Hash((X509Certificate) certificate).mo39176c();
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
        }

        public final C3208i sha1Hash(X509Certificate sha1Hash) {
            C3208i m39168a;
            C18524p.m3840d(sha1Hash, "$this$sha1Hash");
            C3208i.C3209a c3209a = C3208i.f11583d;
            PublicKey publicKey = sha1Hash.getPublicKey();
            C18524p.m3843b(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            C18524p.m3843b(encoded, "publicKey.encoded");
            m39168a = C3208i.C3209a.m39168a(encoded, 0, encoded.length);
            return m39168a.mo39181a("SHA-1");
        }

        public final C3208i sha256Hash(X509Certificate sha256Hash) {
            C3208i m39168a;
            C18524p.m3840d(sha256Hash, "$this$sha256Hash");
            C3208i.C3209a c3209a = C3208i.f11583d;
            PublicKey publicKey = sha256Hash.getPublicKey();
            C18524p.m3843b(publicKey, "publicKey");
            byte[] encoded = publicKey.getEncoded();
            C18524p.m3843b(encoded, "publicKey.encoded");
            m39168a = C3208i.C3209a.m39168a(encoded, 0, encoded.length);
            return m39168a.mo39181a("SHA-256");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0003J\b\u0010\u0018\u001a\u00020\u0003H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\f¨\u0006\u0019"}, m4298d2 = {"Lokhttp3/CertificatePinner$Pin;", "", "pattern", "", "pin", "(Ljava/lang/String;Ljava/lang/String;)V", "hash", "Lokio/ByteString;", "getHash", "()Lokio/ByteString;", "hashAlgorithm", "getHashAlgorithm", "()Ljava/lang/String;", "getPattern", "equals", "", "other", "hashCode", "", "matchesCertificate", "certificate", "Ljava/security/cert/X509Certificate;", "matchesHostname", "hostname", "toString", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/CertificatePinner$Pin.class */
    public static final class Pin {
        private final C3208i hash;
        private final String hashAlgorithm;
        private final String pattern;

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0030, code lost:
            if (kotlin.p532h.C18425p.m3940a((java.lang.CharSequence) r7, "*", 1, false, 4) != (-1)) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x004e, code lost:
            if (kotlin.p532h.C18425p.m3940a((java.lang.CharSequence) r7, "*", 2, false, 4) != (-1)) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Pin(java.lang.String r7, java.lang.String r8) {
            /*
                Method dump skipped, instructions count: 328
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.Pin.<init>(java.lang.String, java.lang.String):void");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return !(C18524p.m3850a((Object) this.pattern, (Object) pin.pattern) ^ true) && !(C18524p.m3850a((Object) this.hashAlgorithm, (Object) pin.hashAlgorithm) ^ true) && !(C18524p.m3850a(this.hash, pin.hash) ^ true);
        }

        public final C3208i getHash() {
            return this.hash;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final String getPattern() {
            return this.pattern;
        }

        public final int hashCode() {
            return (((this.pattern.hashCode() * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        public final boolean matchesCertificate(X509Certificate certificate) {
            C18524p.m3840d(certificate, "certificate");
            String str = this.hashAlgorithm;
            int hashCode = str.hashCode();
            if (hashCode == -903629273) {
                if (!str.equals("sha256")) {
                    return false;
                }
                return C18524p.m3850a(this.hash, CertificatePinner.Companion.sha256Hash(certificate));
            } else if (hashCode != 3528965 || !str.equals("sha1")) {
                return false;
            } else {
                return C18524p.m3850a(this.hash, CertificatePinner.Companion.sha1Hash(certificate));
            }
        }

        public final boolean matchesHostname(String hostname) {
            boolean a;
            boolean a2;
            C18524p.m3840d(hostname, "hostname");
            if (C18425p.m3957a(this.pattern, "**.", false)) {
                int length = this.pattern.length() - 3;
                int length2 = hostname.length() - length;
                a2 = C18425p.m3962a(hostname, hostname.length() - length, this.pattern, 3, length, false);
                if (!a2) {
                    return false;
                }
                return length2 == 0 || hostname.charAt(length2 - 1) == '.';
            } else if (!C18425p.m3957a(this.pattern, "*.", false)) {
                return C18524p.m3850a((Object) hostname, (Object) this.pattern);
            } else {
                int length3 = this.pattern.length() - 1;
                int length4 = hostname.length();
                a = C18425p.m3962a(hostname, hostname.length() - length3, this.pattern, 1, length3, false);
                return a && C18425p.m3951a((CharSequence) hostname, '.', (length4 - length3) - 1, 4) == -1;
            }
        }

        public final String toString() {
            return this.hashAlgorithm + '/' + this.hash.mo39176c();
        }
    }

    public CertificatePinner(Set<Pin> pins, CertificateChainCleaner certificateChainCleaner) {
        C18524p.m3840d(pins, "pins");
        this.pins = pins;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i & 2) != 0 ? null : certificateChainCleaner);
    }

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final C3208i sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final C3208i sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(String hostname, List<? extends Certificate> peerCertificates) throws SSLPeerUnverifiedException {
        C18524p.m3840d(hostname, "hostname");
        C18524p.m3840d(peerCertificates, "peerCertificates");
        check$okhttp(hostname, new CertificatePinner$check$1(this, peerCertificates, hostname));
    }

    public final void check(String hostname, Certificate... peerCertificates) throws SSLPeerUnverifiedException {
        C18524p.m3840d(hostname, "hostname");
        C18524p.m3840d(peerCertificates, "peerCertificates");
        check(hostname, C18273i.m4183i(peerCertificates));
    }

    public final void check$okhttp(String hostname, Function0<? extends List<? extends X509Certificate>> cleanedPeerCertificatesFn) {
        C18524p.m3840d(hostname, "hostname");
        C18524p.m3840d(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        List<Pin> findMatchingPins = findMatchingPins(hostname);
        if (findMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> invoke = cleanedPeerCertificatesFn.invoke();
        for (X509Certificate x509Certificate : invoke) {
            C3208i c3208i = null;
            C3208i c3208i2 = null;
            for (Pin pin : findMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                int hashCode = hashAlgorithm.hashCode();
                if (hashCode != -903629273) {
                    if (hashCode == 3528965 && hashAlgorithm.equals("sha1")) {
                        C3208i c3208i3 = c3208i2;
                        if (c3208i2 == null) {
                            c3208i3 = Companion.sha1Hash(x509Certificate);
                        }
                        c3208i2 = c3208i3;
                        if (C18524p.m3850a(pin.getHash(), c3208i3)) {
                            return;
                        }
                    }
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                } else if (!hashAlgorithm.equals("sha256")) {
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.getHashAlgorithm());
                } else {
                    C3208i c3208i4 = c3208i;
                    if (c3208i == null) {
                        c3208i4 = Companion.sha256Hash(x509Certificate);
                    }
                    c3208i = c3208i4;
                    if (C18524p.m3850a(pin.getHash(), c3208i4)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : invoke) {
            sb.append("\n    ");
            sb.append(Companion.pin(x509Certificate2));
            sb.append(": ");
            Principal subjectDN = x509Certificate2.getSubjectDN();
            C18524p.m3843b(subjectDN, "element.subjectDN");
            sb.append(subjectDN.getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(hostname);
        sb.append(":");
        for (Pin pin2 : findMatchingPins) {
            sb.append("\n    ");
            sb.append(pin2);
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(sb2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            return C18524p.m3850a(certificatePinner.pins, this.pins) && C18524p.m3850a(certificatePinner.certificateChainCleaner, this.certificateChainCleaner);
        }
        return false;
    }

    public final List<Pin> findMatchingPins(String hostname) {
        C18524p.m3840d(hostname, "hostname");
        Set<Pin> set = this.pins;
        List list = C18297z.f63400a;
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(hostname)) {
                List list2 = list;
                if (list.isEmpty()) {
                    list2 = new ArrayList();
                }
                Objects.requireNonNull(list2, "null cannot be cast to non-null type kotlin.collections.MutableList<T>");
                C18501ah.m3872c(list2).add(obj);
                list = list2;
            }
        }
        return list;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public final int hashCode() {
        int hashCode = this.pins.hashCode();
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return ((hashCode + 1517) * 41) + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        C18524p.m3840d(certificateChainCleaner, "certificateChainCleaner");
        return C18524p.m3850a(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
