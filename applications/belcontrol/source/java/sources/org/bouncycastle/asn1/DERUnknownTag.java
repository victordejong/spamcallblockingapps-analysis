package org.bouncycastle.asn1;

import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERUnknownTag.class */
public class DERUnknownTag extends DERObject {
    private byte[] data;
    private boolean isConstructed;
    private int tag;

    public DERUnknownTag(int i, byte[] bArr) {
        this(false, i, bArr);
    }

    public DERUnknownTag(boolean z, int i, byte[] bArr) {
        this.isConstructed = z;
        this.tag = i;
        this.data = bArr;
    }

    @Override // org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(this.isConstructed ? 32 : 0, this.tag, this.data);
    }

    @Override // org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public boolean equals(Object obj) {
        if (!(obj instanceof DERUnknownTag)) {
            return false;
        }
        DERUnknownTag dERUnknownTag = (DERUnknownTag) obj;
        boolean z = false;
        if (this.isConstructed == dERUnknownTag.isConstructed) {
            z = false;
            if (this.tag == dERUnknownTag.tag) {
                z = false;
                if (Arrays.areEqual(this.data, dERUnknownTag.data)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getTag() {
        return this.tag;
    }

    @Override // org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return ((this.isConstructed ? -1 : 0) ^ this.tag) ^ Arrays.hashCode(this.data);
    }

    public boolean isConstructed() {
        return this.isConstructed;
    }
}
