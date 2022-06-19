package org.bouncycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/encoders/BufferedEncoder.class */
public class BufferedEncoder {
    public byte[] buf;
    public int bufOff;
    public Translator translator;

    public BufferedEncoder(Translator translator, int i) {
        this.translator = translator;
        if (i % translator.getEncodedBlockSize() == 0) {
            this.buf = new byte[i];
            this.bufOff = 0;
            return;
        }
        throw new IllegalArgumentException("buffer size not multiple of input block size");
    }

    public int processByte(byte b, byte[] bArr, int i) {
        byte[] bArr2 = this.buf;
        int i2 = this.bufOff;
        int i3 = i2 + 1;
        this.bufOff = i3;
        bArr2[i2] = b;
        int i4 = 0;
        if (i3 == bArr2.length) {
            i4 = this.translator.encode(bArr2, 0, bArr2.length, bArr, i);
            this.bufOff = 0;
        }
        return i4;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 >= 0) {
            byte[] bArr3 = this.buf;
            int length = bArr3.length;
            int i4 = this.bufOff;
            int i5 = length - i4;
            int i6 = 0;
            int i7 = i;
            int i8 = i2;
            if (i2 > i5) {
                System.arraycopy(bArr, i, bArr3, i4, i5);
                Translator translator = this.translator;
                byte[] bArr4 = this.buf;
                int encode = translator.encode(bArr4, 0, bArr4.length, bArr2, i3) + 0;
                this.bufOff = 0;
                int i9 = i2 - i5;
                int i10 = i + i5;
                int length2 = i9 - (i9 % this.buf.length);
                i6 = encode + this.translator.encode(bArr, i10, length2, bArr2, i3 + encode);
                i8 = i9 - length2;
                i7 = i10 + length2;
            }
            if (i8 != 0) {
                System.arraycopy(bArr, i7, this.buf, this.bufOff, i8);
                this.bufOff += i8;
            }
            return i6;
        }
        throw new IllegalArgumentException("Can't have a negative input length!");
    }
}
