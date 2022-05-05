package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import p645m.C15175f;
/* loaded from: classes3-dex2jar.jar:okhttp3/CertificatePinner.class */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    @Nullable
    public final CertificateChainCleaner certificateChainCleaner;
    public final Set<Pin> pins;

    /* loaded from: classes3-dex2jar.jar:okhttp3/CertificatePinner$Builder.class */
    public static final class Builder {
        public final List<Pin> pins = new ArrayList();

        public Builder add(String str, String... strArr) {
            if (str != null) {
                for (String str2 : strArr) {
                    this.pins.add(new Pin(str, str2));
                }
                return this;
            }
            throw new NullPointerException("pattern == null");
        }

        public CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/CertificatePinner$Pin.class */
    public static final class Pin {
        public final String canonicalHostname;
        public final C15175f hash;
        public final String hashAlgorithm;
        public final String pattern;

        public Pin(String str, String str2) {
            String str3;
            this.pattern = str;
            if (str.startsWith("*.")) {
                str3 = HttpUrl.get("http://" + str.substring(2)).host();
            } else {
                str3 = HttpUrl.get("http://" + str).host();
            }
            this.canonicalHostname = str3;
            if (str2.startsWith("sha1/")) {
                this.hashAlgorithm = "sha1/";
                this.hash = C15175f.m339b(str2.substring(5));
            } else if (str2.startsWith("sha256/")) {
                this.hashAlgorithm = "sha256/";
                this.hash = C15175f.m339b(str2.substring(7));
            } else {
                throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
            }
            if (this.hash == null) {
                throw new IllegalArgumentException("pins must be base64: " + str2);
            }
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
            if (r8.regionMatches(false, r0 + 1, r0, 0, r0.length()) != false) goto L_0x0049;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean matches(java.lang.String r8) {
            /*
                r7 = this;
                r0 = r7
                java.lang.String r0 = r0.pattern
                java.lang.String r1 = "*."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L_0x004c
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
                if (r0 != r1) goto L_0x0046
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
                if (r0 == 0) goto L_0x0046
                goto L_0x0049
            L_0x0046:
                r0 = 0
                r11 = r0
            L_0x0049:
                r0 = r11
                return r0
            L_0x004c:
                r0 = r8
                r1 = r7
                java.lang.String r1 = r1.canonicalHostname
                boolean r0 = r0.equals(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.Pin.matches(java.lang.String):boolean");
        }

        public String toString() {
            return this.hashAlgorithm + this.hash.mo279a();
        }
    }

    public CertificatePinner(Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + sha256((X509Certificate) certificate).mo279a();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public static C15175f sha1(X509Certificate x509Certificate) {
        return C15175f.m340a(x509Certificate.getPublicKey().getEncoded()).mo270d();
    }

    public static C15175f sha256(X509Certificate x509Certificate) {
        return C15175f.m340a(x509Certificate.getPublicKey().getEncoded()).mo269e();
    }

    public void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<Pin> findMatchingPins = findMatchingPins(str);
        if (!findMatchingPins.isEmpty()) {
            CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
            List<Certificate> list2 = list;
            if (certificateChainCleaner != null) {
                list2 = certificateChainCleaner.clean(list, str);
            }
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list2.get(i);
                int size2 = findMatchingPins.size();
                C15175f fVar = null;
                C15175f fVar2 = null;
                for (int i2 = 0; i2 < size2; i2++) {
                    Pin pin = findMatchingPins.get(i2);
                    if (pin.hashAlgorithm.equals("sha256/")) {
                        C15175f fVar3 = fVar;
                        if (fVar == null) {
                            fVar3 = sha256(x509Certificate);
                        }
                        fVar = fVar3;
                        if (pin.hash.equals(fVar3)) {
                            return;
                        }
                    } else if (pin.hashAlgorithm.equals("sha1/")) {
                        C15175f fVar4 = fVar2;
                        if (fVar2 == null) {
                            fVar4 = sha1(x509Certificate);
                        }
                        fVar2 = fVar4;
                        if (pin.hash.equals(fVar4)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + pin.hashAlgorithm);
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
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.pins.equals(r0.pins) != false) goto L_0x003a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@javax.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof okhttp3.CertificatePinner
            if (r0 == 0) goto L_0x0038
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
            if (r0 == 0) goto L_0x0038
            r0 = r3
            java.util.Set<okhttp3.CertificatePinner$Pin> r0 = r0.pins
            r1 = r4
            java.util.Set<okhttp3.CertificatePinner$Pin> r1 = r1.pins
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0038
            goto L_0x003a
        L_0x0038:
            r0 = 0
            r5 = r0
        L_0x003a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner.equals(java.lang.Object):boolean");
    }

    public List<Pin> findMatchingPins(String str) {
        List<Pin> emptyList = Collections.emptyList();
        for (Pin pin : this.pins) {
            if (pin.matches(str)) {
                List<Pin> list = emptyList;
                if (emptyList.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(pin);
                emptyList = list;
            }
        }
        return emptyList;
    }

    public int hashCode() {
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return ((certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    public CertificatePinner withCertificateChainCleaner(@Nullable CertificateChainCleaner certificateChainCleaner) {
        return Util.equal(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
