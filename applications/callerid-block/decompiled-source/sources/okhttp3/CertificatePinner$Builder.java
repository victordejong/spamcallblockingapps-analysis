package okhttp3;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
/* loaded from: classes2-dex2jar.jar:okhttp3/CertificatePinner$Builder.class */
public final class CertificatePinner$Builder {
    private final List<CertificatePinner$Pin> pins = new ArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    public CertificatePinner$Builder add(final String str, String... strArr) {
        if (str != null) {
            for (final String str2 : strArr) {
                this.pins.add(new Object(str, str2) { // from class: okhttp3.CertificatePinner$Pin
                    private static final String WILDCARD = "*.";
                    final String canonicalHostname;
                    final ByteString hash;
                    final String hashAlgorithm;
                    final String pattern;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        StringBuilder sb;
                        int i;
                        this.pattern = str;
                        if (str.startsWith(WILDCARD)) {
                            sb = new StringBuilder();
                            sb.append("http://");
                            r5 = str.substring(2);
                        } else {
                            sb = new StringBuilder();
                            sb.append("http://");
                        }
                        sb.append(r5);
                        this.canonicalHostname = HttpUrl.get(sb.toString()).host();
                        if (str2.startsWith("sha1/")) {
                            this.hashAlgorithm = "sha1/";
                            i = 5;
                        } else if (str2.startsWith("sha256/")) {
                            this.hashAlgorithm = "sha256/";
                            i = 7;
                        } else {
                            throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
                        }
                        this.hash = ByteString.decodeBase64(str2.substring(i));
                        if (this.hash == null) {
                            throw new IllegalArgumentException("pins must be base64: " + str2);
                        }
                    }

                    public boolean equals(Object obj) {
                        boolean z;
                        if (obj instanceof CertificatePinner$Pin) {
                            CertificatePinner$Pin certificatePinner$Pin = (CertificatePinner$Pin) obj;
                            if (this.pattern.equals(certificatePinner$Pin.pattern) && this.hashAlgorithm.equals(certificatePinner$Pin.hashAlgorithm) && this.hash.equals(certificatePinner$Pin.hash)) {
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
                    boolean matches(java.lang.String r8) {
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
                        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CertificatePinner$Pin.matches(java.lang.String):boolean");
                    }

                    public String toString() {
                        return this.hashAlgorithm + this.hash.base64();
                    }
                });
            }
            return this;
        }
        throw new NullPointerException("pattern == null");
    }

    public CertificatePinner build() {
        return new CertificatePinner(new LinkedHashSet(this.pins), (CertificateChainCleaner) null);
    }
}
