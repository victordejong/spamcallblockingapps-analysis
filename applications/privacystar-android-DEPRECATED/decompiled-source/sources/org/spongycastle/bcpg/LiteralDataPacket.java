package org.spongycastle.bcpg;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/LiteralDataPacket.class */
public class LiteralDataPacket extends InputStreamPacket {
    byte[] fileName;
    int format;
    long modDate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiteralDataPacket(BCPGInputStream bCPGInputStream) throws IOException {
        super(bCPGInputStream);
        this.format = bCPGInputStream.read();
        this.fileName = new byte[bCPGInputStream.read()];
        for (int i = 0; i != this.fileName.length; i++) {
            this.fileName[i] = (byte) bCPGInputStream.read();
        }
        this.modDate = (bCPGInputStream.read() << 24) | (bCPGInputStream.read() << 16) | (bCPGInputStream.read() << 8) | bCPGInputStream.read();
    }

    public String getFileName() {
        return Strings.fromUTF8ByteArray(this.fileName);
    }

    public int getFormat() {
        return this.format;
    }

    public long getModificationTime() {
        return this.modDate * 1000;
    }

    public byte[] getRawFileName() {
        return Arrays.clone(this.fileName);
    }
}
