package org.spongycastle.cert.dane;

import java.io.IOException;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/DANEEntry.class */
public class DANEEntry {
    static final int CERT_USAGE = 0;
    static final int MATCHING_TYPE = 2;
    static final int SELECTOR = 1;
    private final X509CertificateHolder certHolder;
    private final String domainName;
    private final byte[] flags;

    public DANEEntry(String str, byte[] bArr) throws IOException {
        this(str, Arrays.copyOfRange(bArr, 0, 3), new X509CertificateHolder(Arrays.copyOfRange(bArr, 3, bArr.length)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DANEEntry(String str, byte[] bArr, X509CertificateHolder x509CertificateHolder) {
        this.flags = bArr;
        this.domainName = str;
        this.certHolder = x509CertificateHolder;
    }

    public static boolean isValidCertificate(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == 3) {
            z = false;
            if (bArr[1] == 0) {
                z = false;
                if (bArr[2] == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    public X509CertificateHolder getCertificate() {
        return this.certHolder;
    }

    public String getDomainName() {
        return this.domainName;
    }

    public byte[] getFlags() {
        return Arrays.clone(this.flags);
    }

    public byte[] getRDATA() throws IOException {
        byte[] encoded = this.certHolder.getEncoded();
        byte[] bArr = new byte[this.flags.length + encoded.length];
        System.arraycopy(this.flags, 0, bArr, 0, this.flags.length);
        System.arraycopy(encoded, 0, bArr, this.flags.length, encoded.length);
        return bArr;
    }
}
