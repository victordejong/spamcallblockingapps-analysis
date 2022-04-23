package org.spongycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/DLSet.class */
public class DLSet extends ASN1Set {
    private int bodyLength = -1;

    public DLSet() {
    }

    public DLSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public DLSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    public DLSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }

    private int getBodyLength() throws IOException {
        if (this.bodyLength < 0) {
            int i = 0;
            Enumeration objects = getObjects();
            while (objects.hasMoreElements()) {
                i += ((ASN1Encodable) objects.nextElement()).toASN1Primitive().toDLObject().encodedLength();
            }
            this.bodyLength = i;
        }
        return this.bodyLength;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Set, org.spongycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        ASN1OutputStream dLSubStream = aSN1OutputStream.getDLSubStream();
        int bodyLength = getBodyLength();
        aSN1OutputStream.write(49);
        aSN1OutputStream.writeLength(bodyLength);
        Enumeration objects = getObjects();
        while (objects.hasMoreElements()) {
            dLSubStream.writeObject((ASN1Encodable) objects.nextElement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public int encodedLength() throws IOException {
        int bodyLength = getBodyLength();
        return StreamUtil.calculateBodyLength(bodyLength) + 1 + bodyLength;
    }
}
