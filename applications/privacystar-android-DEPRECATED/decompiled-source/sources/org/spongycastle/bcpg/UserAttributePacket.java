package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/UserAttributePacket.class */
public class UserAttributePacket extends ContainedPacket {
    private UserAttributeSubpacket[] subpackets;

    public UserAttributePacket(BCPGInputStream bCPGInputStream) throws IOException {
        UserAttributeSubpacketInputStream userAttributeSubpacketInputStream = new UserAttributeSubpacketInputStream(bCPGInputStream);
        Vector vector = new Vector();
        while (true) {
            UserAttributeSubpacket readPacket = userAttributeSubpacketInputStream.readPacket();
            if (readPacket == null) {
                break;
            }
            vector.addElement(readPacket);
        }
        this.subpackets = new UserAttributeSubpacket[vector.size()];
        for (int i = 0; i != this.subpackets.length; i++) {
            this.subpackets[i] = (UserAttributeSubpacket) vector.elementAt(i);
        }
    }

    public UserAttributePacket(UserAttributeSubpacket[] userAttributeSubpacketArr) {
        this.subpackets = userAttributeSubpacketArr;
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != this.subpackets.length; i++) {
            this.subpackets[i].encode(byteArrayOutputStream);
        }
        bCPGOutputStream.writePacket(17, byteArrayOutputStream.toByteArray(), false);
    }

    public UserAttributeSubpacket[] getSubpackets() {
        return this.subpackets;
    }
}
