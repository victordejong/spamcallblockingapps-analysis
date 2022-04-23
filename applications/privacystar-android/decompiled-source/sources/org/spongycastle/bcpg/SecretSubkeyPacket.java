package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SecretSubkeyPacket.class */
public class SecretSubkeyPacket extends SecretKeyPacket {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SecretSubkeyPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
    }

    public SecretSubkeyPacket(PublicKeyPacket publicKeyPacket, int i, int i2, S2K s2k, byte[] bArr, byte[] bArr2) {
        super(publicKeyPacket, i, i2, s2k, bArr, bArr2);
    }

    public SecretSubkeyPacket(PublicKeyPacket publicKeyPacket, int i, S2K s2k, byte[] bArr, byte[] bArr2) {
        super(publicKeyPacket, i, s2k, bArr, bArr2);
    }

    @Override // org.spongycastle.bcpg.SecretKeyPacket, org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(7, getEncodedContents(), true);
    }
}
