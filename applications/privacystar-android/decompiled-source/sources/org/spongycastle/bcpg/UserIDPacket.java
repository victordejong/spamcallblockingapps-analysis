package org.spongycastle.bcpg;

import java.io.IOException;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/UserIDPacket.class */
public class UserIDPacket extends ContainedPacket {
    private byte[] idData;

    public UserIDPacket(String str) {
        this.idData = Strings.toUTF8ByteArray(str);
    }

    public UserIDPacket(BCPGInputStream bCPGInputStream) throws IOException {
        this.idData = bCPGInputStream.readAll();
    }

    public UserIDPacket(byte[] bArr) {
        this.idData = Arrays.clone(bArr);
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writePacket(13, this.idData, true);
    }

    public boolean equals(Object obj) {
        if (obj instanceof UserIDPacket) {
            return Arrays.areEqual(this.idData, ((UserIDPacket) obj).idData);
        }
        return false;
    }

    public String getID() {
        return Strings.fromUTF8ByteArray(this.idData);
    }

    public byte[] getRawID() {
        return Arrays.clone(this.idData);
    }

    public int hashCode() {
        return Arrays.hashCode(this.idData);
    }
}
