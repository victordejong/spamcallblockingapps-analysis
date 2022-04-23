package org.spongycastle.cms;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/PKCS7TypedStream.class */
public class PKCS7TypedStream extends CMSTypedStream {
    private final ASN1Encodable content;

    public PKCS7TypedStream(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1ObjectIdentifier);
        this.content = aSN1Encodable;
    }

    private InputStream getContentStream(ASN1Encodable aSN1Encodable) throws IOException {
        byte[] encoded = aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        int i = 1;
        while ((encoded[i] & 255) > 127) {
            i++;
        }
        int i2 = i + 1;
        return new ByteArrayInputStream(encoded, i2, encoded.length - i2);
    }

    @Override // org.spongycastle.cms.CMSTypedStream
    public void drain() throws IOException {
        getContentStream(this.content);
    }

    public ASN1Encodable getContent() {
        return this.content;
    }

    @Override // org.spongycastle.cms.CMSTypedStream
    public InputStream getContentStream() {
        try {
            return getContentStream(this.content);
        } catch (IOException e) {
            throw new CMSRuntimeException("unable to convert content to stream: " + e.getMessage(), e);
        }
    }
}
