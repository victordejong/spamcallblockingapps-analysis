package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/MarkerPacket.class */
public class MarkerPacket extends ContainedPacket {
    byte[] marker = {80, 71, 80};

    public MarkerPacket(BCPGInputStream bCPGInputStream) throws IOException {
        bCPGInputStream.readFully(this.marker);
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(10, this.marker, true);
    }
}
