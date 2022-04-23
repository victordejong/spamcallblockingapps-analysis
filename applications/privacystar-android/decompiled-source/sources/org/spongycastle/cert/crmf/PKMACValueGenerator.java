package org.spongycastle.cert.crmf;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.crmf.PKMACValue;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.operator.MacCalculator;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/PKMACValueGenerator.class */
class PKMACValueGenerator {
    private PKMACBuilder builder;

    public PKMACValueGenerator(PKMACBuilder pKMACBuilder) {
        this.builder = pKMACBuilder;
    }

    public PKMACValue generate(char[] cArr, SubjectPublicKeyInfo subjectPublicKeyInfo) throws CRMFException {
        MacCalculator build = this.builder.build(cArr);
        OutputStream outputStream = build.getOutputStream();
        try {
            outputStream.write(subjectPublicKeyInfo.getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return new PKMACValue(build.getAlgorithmIdentifier(), new DERBitString(build.getMac()));
        } catch (IOException e) {
            throw new CRMFException("exception encoding mac input: " + e.getMessage(), e);
        }
    }
}
