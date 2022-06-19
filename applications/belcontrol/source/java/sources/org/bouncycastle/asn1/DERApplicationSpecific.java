package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERApplicationSpecific.class */
public class DERApplicationSpecific extends ASN1Object {
    private final boolean isConstructed;
    private final byte[] octets;
    private final int tag;

    public DERApplicationSpecific(int i, ASN1EncodableVector aSN1EncodableVector) {
        this.tag = i;
        this.isConstructed = true;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 != aSN1EncodableVector.size(); i2++) {
            try {
                byteArrayOutputStream.write(((ASN1Encodable) aSN1EncodableVector.get(i2)).getEncoded());
            } catch (IOException e) {
                throw new ASN1ParsingException("malformed object: " + e, e);
            }
        }
        this.octets = byteArrayOutputStream.toByteArray();
    }

    public DERApplicationSpecific(int i, DEREncodable dEREncodable) {
        this(true, i, dEREncodable);
    }

    public DERApplicationSpecific(int i, byte[] bArr) {
        this(false, i, bArr);
    }

    public DERApplicationSpecific(boolean z, int i, DEREncodable dEREncodable) {
        byte[] dEREncoded = dEREncodable.getDERObject().getDEREncoded();
        this.isConstructed = z;
        this.tag = i;
        if (z) {
            this.octets = dEREncoded;
            return;
        }
        int lengthOfLength = getLengthOfLength(dEREncoded);
        int length = dEREncoded.length - lengthOfLength;
        byte[] bArr = new byte[length];
        System.arraycopy(dEREncoded, lengthOfLength, bArr, 0, length);
        this.octets = bArr;
    }

    public DERApplicationSpecific(boolean z, int i, byte[] bArr) {
        this.isConstructed = z;
        this.tag = i;
        this.octets = bArr;
    }

    private int getLengthOfLength(byte[] bArr) {
        int i = 2;
        while ((bArr[i - 1] & 128) != 0) {
            i++;
        }
        return i;
    }

    private byte[] replaceTagNumber(int i, byte[] bArr) {
        int i2;
        if ((bArr[0] & 31) == 31) {
            int i3 = 2;
            int i4 = bArr[1] & 255;
            if ((i4 & 127) == 0) {
                throw new ASN1ParsingException("corrupted stream - invalid high tag number found");
            }
            while (true) {
                i2 = i3;
                if (i4 < 0) {
                    break;
                }
                i2 = i3;
                if ((i4 & 128) == 0) {
                    break;
                }
                i4 = bArr[i3] & 255;
                i3++;
            }
        } else {
            i2 = 1;
        }
        int length = (bArr.length - i2) + 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i2, bArr2, 1, length - 1);
        bArr2[0] = (byte) i;
        return bArr2;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERApplicationSpecific)) {
            return false;
        }
        DERApplicationSpecific dERApplicationSpecific = (DERApplicationSpecific) dERObject;
        boolean z = false;
        if (this.isConstructed == dERApplicationSpecific.isConstructed) {
            z = false;
            if (this.tag == dERApplicationSpecific.tag) {
                z = false;
                if (Arrays.areEqual(this.octets, dERApplicationSpecific.octets)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(this.isConstructed ? 96 : 64, this.tag, this.octets);
    }

    public int getApplicationTag() {
        return this.tag;
    }

    public byte[] getContents() {
        return this.octets;
    }

    public DERObject getObject() {
        return new ASN1InputStream(getContents()).readObject();
    }

    public DERObject getObject(int i) {
        if (i < 31) {
            byte[] encoded = getEncoded();
            byte[] replaceTagNumber = replaceTagNumber(i, encoded);
            if ((encoded[0] & 32) != 0) {
                replaceTagNumber[0] = (byte) (replaceTagNumber[0] | 32);
            }
            return new ASN1InputStream(replaceTagNumber).readObject();
        }
        throw new IOException("unsupported tag number");
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        boolean z = this.isConstructed;
        return ((z ? 1 : 0) ^ this.tag) ^ Arrays.hashCode(this.octets);
    }

    public boolean isConstructed() {
        return this.isConstructed;
    }
}
