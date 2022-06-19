package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
/* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner.class */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    /* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$Builder.class */
    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public Builder add(String str, String... strArr) {
            Objects.requireNonNull(str, "pattern == null");
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        public CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$Pin.class */
    public static final class Pin {
        private static final String WILDCARD = "*.";
        final String canonicalHostname;
        final ByteString hash;
        final String hashAlgorithm;
        final String pattern;

        Pin(String str, String str2) {
            String str3;
            this.pattern = str;
            if (str.startsWith(WILDCARD)) {
                str3 = HttpUrl.parse("http://" + str.substring(2)).host();
            } else {
                str3 = HttpUrl.parse("http://" + str).host();
            }
            this.canonicalHostname = str3;
            if (str2.startsWith("sha1/")) {
                this.hashAlgorithm = "sha1/";
                this.hash = ByteString.decodeBase64(str2.substring(5));
            } else if (!str2.startsWith("sha256/")) {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
            } else {
                this.hashAlgorithm = "sha256/";
                this.hash = ByteString.decodeBase64(str2.substring(7));
            }
            if (this.hash != null) {
                return;
            }
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj instanceof Pin) {
                Pin pin = (Pin) obj;
                if (this.pattern.equals(pin.pattern) && this.hashAlgorithm.equals(pin.hashAlgorithm) && this.hash.equals(pin.hash)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            return ((((527 + this.pattern.hashCode()) * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
            if (r8.regionMatches(false, r0 + 1, r0, 0, r0.length()) != false) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean matches(java.lang.String r8) {
            /*
                r7 = this;
                r0 = r7
                java.lang.String r0 = r0.pattern
                java.lang.String r1 = "*."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L4c
                r0 = r8
                r1 = 46
                int r0 = r0.indexOf(r1)
                r9 = r0
                r0 = r8
                int r0 = r0.length()
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r10
                r1 = r9
                int r0 = r0 - r1
                r1 = 1
                int r0 = r0 - r1
                r1 = r7
                java.lang.String r1 = r1.canonicalHostname
                int r1 = r1.length()
                if (r0 != r1) goto L46
                r0 = r7
                java.lang.String r0 = r0.canonicalHostname
                r12 = r0
                r0 = r8
                r1 = 0
                r2 = r9
                r3 = 1
                int r2 = r2 + r3
                r3 = r12
                r4 = 0
                r5 = r12
                int r5 = r5.length()
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L46
                goto L49
            L46:
                r0 = 0
                r11 = r0
            L49:
                r0 = r11
                return r0
            L4c:
                r0 = r8
                r1 = r7
                java.lang.String r1 = r1.canonicalHostname
                boolean r0 = r0.equals(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.Pin.matches(java.lang.String):boolean");
        }

        public String toString() {
            return this.hashAlgorithm + this.hash.base64();
        }
    }

    CertificatePinner(Set<Pin> set, CertificateChainCleaner certificateChainCleaner) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + sha256((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    static ByteString sha1(X509Certificate x509Certificate) {
        return ByteString.m363of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    static ByteString sha256(X509Certificate x509Certificate) {
        return ByteString.m363of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    public void check(String str, List<Certificate> list) {
        List<Pin> findMatchingPins = findMatchingPins(str);
        if (findMatchingPins.isEmpty()) {
            return;
        }
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        List<Certificate> list2 = list;
        if (certificateChainCleaner != null) {
            list2 = certificateChainCleaner.clean(list, str);
        }
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list2.get(i);
            int size2 = findMatchingPins.size();
            ByteString byteString = null;
            ByteString byteString2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                Pin pin = findMatchingPins.get(i2);
                if (pin.hashAlgorithm.equals("sha256/")) {
                    ByteString byteString3 = byteString;
                    if (byteString == null) {
                        byteString3 = sha256(x509Certificate);
                    }
                    byteString = byteString3;
                    if (pin.hash.equals(byteString3)) {
                        return;
                    }
                } else if (!pin.hashAlgorithm.equals("sha1/")) {
                    throw new AssertionError("unsupported hashAlgorithm: " + pin.hashAlgorithm);
                } else {
                    ByteString byteString4 = byteString2;
                    if (byteString2 == null) {
                        byteString4 = sha1(x509Certificate);
                    }
                    byteString2 = byteString4;
                    if (pin.hash.equals(byteString4)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
            sb.append("\n    ");
            sb.append(pin(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = findMatchingPins.size();
        for (int i4 = 0; i4 < size4; i4++) {
            sb.append("\n    ");
            sb.append(findMatchingPins.get(i4));
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public void check(String str, Certificate... certificateArr) {
        check(str, Arrays.asList(certificateArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.pins.equals(r0.pins) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof okhttp3.CertificatePinner
            if (r0 == 0) goto L38
            r0 = r3
            okhttp3.internal.tls.CertificateChainCleaner r0 = r0.certificateChainCleaner
            r6 = r0
            r0 = r4
            okhttp3.CertificatePinner r0 = (okhttp3.CertificatePinner) r0
            r4 = r0
            r0 = r6
            r1 = r4
            okhttp3.internal.tls.CertificateChainCleaner r1 = r1.certificateChainCleaner
            boolean r0 = okhttp3.internal.Util.equal(r0, r1)
            if (r0 == 0) goto L38
            r0 = r3
            java.util.Set<okhttp3.CertificatePinner$Pin> r0 = r0.pins
            r1 = r4
            java.util.Set<okhttp3.CertificatePinner$Pin> r1 = r1.pins
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            goto L3a
        L38:
            r0 = 0
            r5 = r0
        L3a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.equals(java.lang.Object):boolean");
    }

    List<Pin> findMatchingPins(String str) {
        List<Pin> emptyList = Collections.emptyList();
        for (Pin pin : this.pins) {
            if (pin.matches(str)) {
                ArrayList arrayList = emptyList;
                if (emptyList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(pin);
                emptyList = arrayList;
            }
        }
        return emptyList;
    }

    public int hashCode() {
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return ((certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    public CertificatePinner withCertificateChainCleaner(CertificateChainCleaner certificateChainCleaner) {
        return Util.equal(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
