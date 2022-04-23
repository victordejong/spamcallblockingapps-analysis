package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/PublicKeyEncSessionPacket.class */
public class PublicKeyEncSessionPacket extends ContainedPacket implements PublicKeyAlgorithmTags {
    private int algorithm;
    private byte[][] data;
    private long keyID;
    private int version;

    /* JADX WARN: Type inference failed for: r1v5, types: [byte[], byte[][]] */
    public PublicKeyEncSessionPacket(long j, int i, byte[][] bArr) {
        this.version = 3;
        this.keyID = j;
        this.algorithm = i;
        this.data = new byte[bArr.length];
        for (int i2 = 0; i2 != bArr.length; i2++) {
            this.data[i2] = Arrays.clone(bArr[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r1v30, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v35, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v39, types: [byte[], byte[][]] */
    public PublicKeyEncSessionPacket(BCPGInputStream bCPGInputStream) throws IOException {
        this.version = bCPGInputStream.read();
        this.keyID |= bCPGInputStream.read() << 56;
        this.keyID |= bCPGInputStream.read() << 48;
        this.keyID |= bCPGInputStream.read() << 40;
        this.keyID |= bCPGInputStream.read() << 32;
        this.keyID |= bCPGInputStream.read() << 24;
        this.keyID |= bCPGInputStream.read() << 16;
        this.keyID |= bCPGInputStream.read() << 8;
        this.keyID |= bCPGInputStream.read();
        this.algorithm = bCPGInputStream.read();
        int i = this.algorithm;
        if (i != 16) {
            if (i == 18) {
                this.data = new byte[1];
                this.data[0] = Streams.readAll(bCPGInputStream);
                return;
            } else if (i != 20) {
                switch (i) {
                    case 1:
                    case 2:
                        this.data = new byte[1];
                        this.data[0] = new MPInteger(bCPGInputStream).getEncoded();
                        return;
                    default:
                        throw new IOException("unknown PGP public key algorithm encountered");
                }
            }
        }
        this.data = new byte[2];
        this.data[0] = new MPInteger(bCPGInputStream).getEncoded();
        this.data[1] = new MPInteger(bCPGInputStream).getEncoded();
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream2 = new BCPGOutputStream(byteArrayOutputStream);
        bCPGOutputStream2.write(this.version);
        bCPGOutputStream2.write((byte) (this.keyID >> 56));
        bCPGOutputStream2.write((byte) (this.keyID >> 48));
        bCPGOutputStream2.write((byte) (this.keyID >> 40));
        bCPGOutputStream2.write((byte) (this.keyID >> 32));
        bCPGOutputStream2.write((byte) (this.keyID >> 24));
        bCPGOutputStream2.write((byte) (this.keyID >> 16));
        bCPGOutputStream2.write((byte) (this.keyID >> 8));
        bCPGOutputStream2.write((byte) this.keyID);
        bCPGOutputStream2.write(this.algorithm);
        for (int i = 0; i != this.data.length; i++) {
            bCPGOutputStream2.write(this.data[i]);
        }
        bCPGOutputStream2.close();
        bCPGOutputStream.writePacket(1, byteArrayOutputStream.toByteArray(), true);
    }

    public int getAlgorithm() {
        return this.algorithm;
    }

    public byte[][] getEncSessionKey() {
        return this.data;
    }

    public long getKeyID() {
        return this.keyID;
    }

    public int getVersion() {
        return this.version;
    }
}
