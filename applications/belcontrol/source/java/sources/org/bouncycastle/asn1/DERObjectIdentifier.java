package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.math.BigInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERObjectIdentifier.class */
public class DERObjectIdentifier extends ASN1Object {
    public String identifier;

    public DERObjectIdentifier(String str) {
        if (isValidIdentifier(str)) {
            this.identifier = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not an OID");
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    public DERObjectIdentifier(byte[] bArr) {
        boolean z;
        Object obj;
        char c;
        StringBuffer stringBuffer = new StringBuffer();
        Object obj2 = null;
        char c2 = 0;
        int i = 0;
        boolean z2 = true;
        while (true) {
            boolean z3 = z2;
            if (i == bArr.length) {
                this.identifier = stringBuffer.toString();
                return;
            }
            int i2 = bArr[i] & 255;
            if (c2 < 36028797018963968L) {
                char c3 = (c2 * 128) + (i2 & 127);
                c2 = c3;
                obj = obj2;
                z = z3;
                if ((i2 & 128) == 0) {
                    char c4 = c3;
                    boolean z4 = z3;
                    if (z3) {
                        int i3 = c3 / 40;
                        if (i3 != 0) {
                            if (i3 != 1) {
                                stringBuffer.append('2');
                                c = 'P';
                            } else {
                                stringBuffer.append('1');
                                c = '(';
                            }
                            c3 -= c;
                        } else {
                            stringBuffer.append('0');
                        }
                        z4 = false;
                        c4 = c3;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append((long) c4);
                    z3 = z4;
                    c2 = 0;
                    z = z3;
                    obj = obj2;
                    i++;
                    obj2 = obj;
                    z2 = z;
                } else {
                    i++;
                    obj2 = obj;
                    z2 = z;
                }
            } else {
                Object or = (obj2 == null ? BigInteger.valueOf(c2) : obj2).shiftLeft(7).or(BigInteger.valueOf(i2 & 127));
                obj = or;
                z = z3;
                if ((i2 & 128) == 0) {
                    stringBuffer.append('.');
                    stringBuffer.append(or);
                    obj2 = null;
                    c2 = 0;
                    z = z3;
                    obj = obj2;
                    i++;
                    obj2 = obj;
                    z2 = z;
                } else {
                    i++;
                    obj2 = obj;
                    z2 = z;
                }
            }
        }
    }

    public static DERObjectIdentifier getInstance(Object obj) {
        if (obj == null || (obj instanceof DERObjectIdentifier)) {
            return (DERObjectIdentifier) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERObjectIdentifier getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERObjectIdentifier)) ? getInstance(object) : new ASN1ObjectIdentifier(ASN1OctetString.getInstance(aSN1TaggedObject.getObject()).getOctets());
    }

    private static boolean isValidIdentifier(String str) {
        char charAt;
        boolean z;
        if (str.length() < 3 || str.charAt(1) != '.' || (charAt = str.charAt(0)) < '0' || charAt > '2') {
            return false;
        }
        boolean z2 = false;
        for (int length = str.length() - 1; length >= 2; length--) {
            char charAt2 = str.charAt(length);
            if ('0' <= charAt2 && charAt2 <= '9') {
                z = true;
            } else if (charAt2 != '.' || !z2) {
                return false;
            } else {
                z = false;
            }
            z2 = z;
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private void writeField(OutputStream outputStream, long j) {
        char c;
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        for (char c2 = j; c2 >= 128; c2 >>= 7) {
            i--;
            bArr[i] = (byte) ((c & 127) | 128);
        }
        outputStream.write(bArr, i, 9 - i);
    }

    private void writeField(OutputStream outputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            outputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i = bitLength - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            bArr[i2] = (byte) ((bigInteger.intValue() & 127) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i] = (byte) (bArr[i] & Byte.MAX_VALUE);
        outputStream.write(bArr);
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERObjectIdentifier)) {
            return false;
        }
        return this.identifier.equals(((DERObjectIdentifier) dERObject).identifier);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.bouncycastle.asn1.DERObjectIdentifier] */
    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        String nextToken;
        OIDTokenizer oIDTokenizer = new OIDTokenizer(this.identifier);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DEROutputStream dEROutputStream2 = new DEROutputStream(byteArrayOutputStream);
        ?? r0 = (Integer.parseInt(oIDTokenizer.nextToken()) * 40) + Integer.parseInt(oIDTokenizer.nextToken());
        while (true) {
            writeField(byteArrayOutputStream, r0);
            while (oIDTokenizer.hasMoreTokens()) {
                nextToken = oIDTokenizer.nextToken();
                if (nextToken.length() < 18) {
                    break;
                }
                writeField(byteArrayOutputStream, new BigInteger(nextToken));
            }
            dEROutputStream2.close();
            dEROutputStream.writeEncoded(6, byteArrayOutputStream.toByteArray());
            return;
            r0 = Long.parseLong(nextToken);
        }
    }

    public String getId() {
        return this.identifier;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return this.identifier.hashCode();
    }

    public String toString() {
        return getId();
    }
}
