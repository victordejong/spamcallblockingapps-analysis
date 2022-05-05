package org.spongycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/encoders/BufferedDecoder.class */
public class BufferedDecoder {
    protected byte[] buf;
    protected int bufOff;
    protected Translator translator;

    public BufferedDecoder(Translator translator, int i) {
        this.translator = translator;
        if (i % translator.getEncodedBlockSize() != 0) {
            throw new IllegalArgumentException("buffer size not multiple of input block size");
        }
        this.buf = new byte[i];
        this.bufOff = 0;
    }

    public int processByte(byte b, byte[] bArr, int i) {
        int i2;
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        this.bufOff = i3 + 1;
        bArr2[i3] = b;
        if (this.bufOff == this.buf.length) {
            i2 = this.translator.decode(this.buf, 0, this.buf.length, bArr, i);
            this.bufOff = 0;
        } else {
            i2 = 0;
        }
        return i2;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int length = this.buf.length - this.bufOff;
        int i4 = 0;
        int i5 = i;
        int i6 = i2;
        if (i2 > length) {
            System.arraycopy(bArr, i, this.buf, this.bufOff, length);
            int decode = this.translator.decode(this.buf, 0, this.buf.length, bArr2, i3) + 0;
            this.bufOff = 0;
            int i7 = i2 - length;
            int i8 = i + length;
            int length2 = i7 - (i7 % this.buf.length);
            i4 = decode + this.translator.decode(bArr, i8, length2, bArr2, i3 + decode);
            i6 = i7 - length2;
            i5 = i8 + length2;
        }
        if (i6 != 0) {
            System.arraycopy(bArr, i5, this.buf, this.bufOff, i6);
            this.bufOff += i6;
        }
        return i4;
    }
}
