package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/OnePassSignaturePacket.class */
public class OnePassSignaturePacket extends ContainedPacket {
    private int hashAlgorithm;
    private int keyAlgorithm;
    private long keyID;
    private int nested;
    private int sigType;
    private int version;

    public OnePassSignaturePacket(int i, int i2, int i3, long j, boolean z) {
        this.version = 3;
        this.sigType = i;
        this.hashAlgorithm = i2;
        this.keyAlgorithm = i3;
        this.keyID = j;
        this.nested = !z ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OnePassSignaturePacket(BCPGInputStream bCPGInputStream) throws IOException {
        this.version = bCPGInputStream.read();
        this.sigType = bCPGInputStream.read();
        this.hashAlgorithm = bCPGInputStream.read();
        this.keyAlgorithm = bCPGInputStream.read();
        this.keyID |= bCPGInputStream.read() << 56;
        this.keyID |= bCPGInputStream.read() << 48;
        this.keyID |= bCPGInputStream.read() << 40;
        this.keyID |= bCPGInputStream.read() << 32;
        this.keyID |= bCPGInputStream.read() << 24;
        this.keyID |= bCPGInputStream.read() << 16;
        this.keyID |= bCPGInputStream.read() << 8;
        this.keyID |= bCPGInputStream.read();
        this.nested = bCPGInputStream.read();
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream2 = new BCPGOutputStream(byteArrayOutputStream);
        bCPGOutputStream2.write(this.version);
        bCPGOutputStream2.write(this.sigType);
        bCPGOutputStream2.write(this.hashAlgorithm);
        bCPGOutputStream2.write(this.keyAlgorithm);
        bCPGOutputStream2.write((byte) (this.keyID >> 56));
        bCPGOutputStream2.write((byte) (this.keyID >> 48));
        bCPGOutputStream2.write((byte) (this.keyID >> 40));
        bCPGOutputStream2.write((byte) (this.keyID >> 32));
        bCPGOutputStream2.write((byte) (this.keyID >> 24));
        bCPGOutputStream2.write((byte) (this.keyID >> 16));
        bCPGOutputStream2.write((byte) (this.keyID >> 8));
        bCPGOutputStream2.write((byte) this.keyID);
        bCPGOutputStream2.write(this.nested);
        bCPGOutputStream2.close();
        bCPGOutputStream.writePacket(4, byteArrayOutputStream.toByteArray(), true);
    }

    public int getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public int getKeyAlgorithm() {
        return this.keyAlgorithm;
    }

    public long getKeyID() {
        return this.keyID;
    }

    public int getSignatureType() {
        return this.sigType;
    }
}
