package org.spongycastle.bcpg;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/CompressedDataPacket.class */
public class CompressedDataPacket extends InputStreamPacket {
    int algorithm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompressedDataPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
        this.algorithm = bCPGInputStream.read();
    }

    public int getAlgorithm() {
        return this.algorithm;
    }
}
