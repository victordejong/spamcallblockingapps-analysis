package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CramerShoupCiphertext.class */
public class CramerShoupCiphertext {

    /* renamed from: e */
    BigInteger f1235e;

    /* renamed from: u1 */
    BigInteger f1236u1;

    /* renamed from: u2 */
    BigInteger f1237u2;

    /* renamed from: v */
    BigInteger f1238v;

    public CramerShoupCiphertext() {
    }

    public CramerShoupCiphertext(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f1236u1 = bigInteger;
        this.f1237u2 = bigInteger2;
        this.f1235e = bigInteger3;
        this.f1238v = bigInteger4;
    }

    public CramerShoupCiphertext(byte[] bArr) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, 0) + 4;
        this.f1236u1 = new BigInteger(Arrays.copyOfRange(bArr, 4, bigEndianToInt));
        int i = bigEndianToInt + 4;
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, bigEndianToInt) + i;
        this.f1237u2 = new BigInteger(Arrays.copyOfRange(bArr, i, bigEndianToInt2));
        int bigEndianToInt3 = Pack.bigEndianToInt(bArr, bigEndianToInt2);
        int i2 = bigEndianToInt2 + 4;
        int i3 = bigEndianToInt3 + i2;
        this.f1235e = new BigInteger(Arrays.copyOfRange(bArr, i2, i3));
        int i4 = i3 + 4;
        this.f1238v = new BigInteger(Arrays.copyOfRange(bArr, i4, Pack.bigEndianToInt(bArr, i3) + i4));
    }

    public BigInteger getE() {
        return this.f1235e;
    }

    public BigInteger getU1() {
        return this.f1236u1;
    }

    public BigInteger getU2() {
        return this.f1237u2;
    }

    public BigInteger getV() {
        return this.f1238v;
    }

    public void setE(BigInteger bigInteger) {
        this.f1235e = bigInteger;
    }

    public void setU1(BigInteger bigInteger) {
        this.f1236u1 = bigInteger;
    }

    public void setU2(BigInteger bigInteger) {
        this.f1237u2 = bigInteger;
    }

    public void setV(BigInteger bigInteger) {
        this.f1238v = bigInteger;
    }

    public byte[] toByteArray() {
        byte[] byteArray = this.f1236u1.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.f1237u2.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.f1235e.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.f1238v.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[length + length2 + length3 + length4 + 16];
        Pack.intToBigEndian(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        int i = length + 4;
        Pack.intToBigEndian(length2, bArr, i);
        int i2 = i + 4;
        System.arraycopy(byteArray2, 0, bArr, i2, length2);
        int i3 = i2 + length2;
        Pack.intToBigEndian(length3, bArr, i3);
        int i4 = i3 + 4;
        System.arraycopy(byteArray3, 0, bArr, i4, length3);
        int i5 = i4 + length3;
        Pack.intToBigEndian(length4, bArr, i5);
        System.arraycopy(byteArray4, 0, bArr, i5 + 4, length4);
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.f1236u1.toString());
        stringBuffer.append("\nu2: " + this.f1237u2.toString());
        stringBuffer.append("\ne: " + this.f1235e.toString());
        stringBuffer.append("\nv: " + this.f1238v.toString());
        return stringBuffer.toString();
    }
}
