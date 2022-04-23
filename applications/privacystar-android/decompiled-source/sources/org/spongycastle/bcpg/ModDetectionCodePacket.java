package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ModDetectionCodePacket.class */
public class ModDetectionCodePacket extends ContainedPacket {
    private byte[] digest;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ModDetectionCodePacket(BCPGInputStream bCPGInputStream) throws IOException {
        this.digest = new byte[20];
        bCPGInputStream.readFully(this.digest);
    }

    public ModDetectionCodePacket(byte[] bArr) throws IOException {
        this.digest = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.digest, 0, this.digest.length);
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(19, this.digest, false);
    }

    public byte[] getDigest() {
        byte[] bArr = new byte[this.digest.length];
        System.arraycopy(this.digest, 0, bArr, 0, bArr.length);
        return bArr;
    }
}
