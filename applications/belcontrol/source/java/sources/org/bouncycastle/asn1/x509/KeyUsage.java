package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.DERBitString;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/KeyUsage.class */
public class KeyUsage extends DERBitString {
    public static final int cRLSign = 2;
    public static final int dataEncipherment = 16;
    public static final int decipherOnly = 32768;
    public static final int digitalSignature = 128;
    public static final int encipherOnly = 1;
    public static final int keyAgreement = 8;
    public static final int keyCertSign = 4;
    public static final int keyEncipherment = 32;
    public static final int nonRepudiation = 64;

    public KeyUsage(int i) {
        super(DERBitString.getBytes(i), DERBitString.getPadBits(i));
    }

    public KeyUsage(DERBitString dERBitString) {
        super(dERBitString.getBytes(), dERBitString.getPadBits());
    }

    public static DERBitString getInstance(Object obj) {
        return obj instanceof KeyUsage ? (KeyUsage) obj : obj instanceof X509Extension ? new KeyUsage(DERBitString.getInstance(X509Extension.convertValueToObject((X509Extension) obj))) : new KeyUsage(DERBitString.getInstance(obj));
    }

    @Override // org.bouncycastle.asn1.DERBitString
    public String toString() {
        StringBuilder sb;
        int i;
        if (this.data.length == 1) {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            i = this.data[0] & 255;
        } else {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            byte[] bArr = this.data;
            i = (bArr[0] & 255) | ((bArr[1] & 255) << 8);
        }
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }
}
