package org.spongycastle.bcpg;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SignatureSubpacket.class */
public class SignatureSubpacket {
    boolean critical;
    protected byte[] data;
    boolean isLongLength;
    int type;

    /* JADX INFO: Access modifiers changed from: protected */
    public SignatureSubpacket(int i, boolean z, boolean z2, byte[] bArr) {
        this.type = i;
        this.critical = z;
        this.isLongLength = z2;
        this.data = bArr;
    }

    public void encode(OutputStream outputStream) throws IOException {
        int length = this.data.length + 1;
        if (this.isLongLength) {
            outputStream.write(255);
            outputStream.write((byte) (length >> 24));
            outputStream.write((byte) (length >> 16));
            outputStream.write((byte) (length >> 8));
            outputStream.write((byte) length);
        } else if (length < 192) {
            outputStream.write((byte) length);
        } else if (length <= 8383) {
            int i = length - 192;
            outputStream.write((byte) ((255 & (i >> 8)) + 192));
            outputStream.write((byte) i);
        } else {
            outputStream.write(255);
            outputStream.write((byte) (length >> 24));
            outputStream.write((byte) (length >> 16));
            outputStream.write((byte) (length >> 8));
            outputStream.write((byte) length);
        }
        if (this.critical) {
            outputStream.write(this.type | 128);
        } else {
            outputStream.write(this.type);
        }
        outputStream.write(this.data);
    }

    public byte[] getData() {
        return this.data;
    }

    public int getType() {
        return this.type;
    }

    public boolean isCritical() {
        return this.critical;
    }

    public boolean isLongLength() {
        return this.isLongLength;
    }
}
