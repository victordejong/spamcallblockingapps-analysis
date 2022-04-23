package org.spongycastle.bcpg;

import java.io.IOException;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/PublicSubkeyPacket.class */
public class PublicSubkeyPacket extends PublicKeyPacket {
    public PublicSubkeyPacket(int i, Date date, BCPGKey bCPGKey) {
        super(i, date, bCPGKey);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PublicSubkeyPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.PublicKeyPacket, org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(14, getEncodedContents(), true);
    }
}
