package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ASN1ApplicationSpecific.class */
public abstract class ASN1ApplicationSpecific extends ASN1Primitive {
    protected final boolean isConstructed;
    protected final byte[] octets;
    protected final int tag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ASN1ApplicationSpecific(boolean z, int i, byte[] bArr) {
        this.isConstructed = z;
        this.tag = i;
        this.octets = Arrays.clone(bArr);
    }

    public static ASN1ApplicationSpecific getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1ApplicationSpecific)) {
            return (ASN1ApplicationSpecific) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return getInstance(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to construct object from byte[]: " + e.getMessage());
            }
        } else {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int getLengthOfHeader(byte[] bArr) {
        int i = bArr[1] & 255;
        if (i == 128 || i <= 127) {
            return 2;
        }
        int i2 = i & 127;
        if (i2 <= 4) {
            return i2 + 2;
        }
        throw new IllegalStateException("DER length more than 4 bytes: " + i2);
    }

    private byte[] replaceTagNumber(int i, byte[] bArr) throws IOException {
        int i2;
        if ((bArr[0] & 31) == 31) {
            int i3 = 2;
            int i4 = bArr[1] & 255;
            int i5 = i4;
            if ((i4 & 127) != 0) {
                while (true) {
                    i2 = i3;
                    if (i5 < 0) {
                        break;
                    }
                    i2 = i3;
                    if ((i5 & 128) == 0) {
                        break;
                    }
                    i5 = bArr[i3] & 255;
                    i3++;
                }
            } else {
                throw new ASN1ParsingException("corrupted stream - invalid high tag number found");
            }
        } else {
            i2 = 1;
        }
        byte[] bArr2 = new byte[(bArr.length - i2) + 1];
        System.arraycopy(bArr, i2, bArr2, 1, bArr2.length - 1);
        bArr2[0] = (byte) i;
        return bArr2;
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1ApplicationSpecific)) {
            return false;
        }
        ASN1ApplicationSpecific aSN1ApplicationSpecific = (ASN1ApplicationSpecific) aSN1Primitive;
        boolean z = false;
        if (this.isConstructed == aSN1ApplicationSpecific.isConstructed) {
            z = false;
            if (this.tag == aSN1ApplicationSpecific.tag) {
                z = false;
                if (Arrays.areEqual(this.octets, aSN1ApplicationSpecific.octets)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream) throws IOException {
        aSN1OutputStream.writeEncoded(this.isConstructed ? 96 : 64, this.tag, this.octets);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.asn1.ASN1Primitive
    public int encodedLength() throws IOException {
        return StreamUtil.calculateTagLength(this.tag) + StreamUtil.calculateBodyLength(this.octets.length) + this.octets.length;
    }

    public int getApplicationTag() {
        return this.tag;
    }

    public byte[] getContents() {
        return Arrays.clone(this.octets);
    }

    public ASN1Primitive getObject() throws IOException {
        return ASN1Primitive.fromByteArray(getContents());
    }

    public ASN1Primitive getObject(int i) throws IOException {
        if (i >= 31) {
            throw new IOException("unsupported tag number");
        }
        byte[] encoded = getEncoded();
        byte[] replaceTagNumber = replaceTagNumber(i, encoded);
        if ((encoded[0] & 32) != 0) {
            replaceTagNumber[0] = (byte) (replaceTagNumber[0] | 32);
        }
        return ASN1Primitive.fromByteArray(replaceTagNumber);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive, org.spongycastle.asn1.ASN1Object
    public int hashCode() {
        boolean z = this.isConstructed;
        return ((z ? 1 : 0) ^ this.tag) ^ Arrays.hashCode(this.octets);
    }

    @Override // org.spongycastle.asn1.ASN1Primitive
    public boolean isConstructed() {
        return this.isConstructed;
    }
}
