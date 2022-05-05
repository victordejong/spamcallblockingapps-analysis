package org.spongycastle.bcpg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Encodable;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/BCPGObject.class */
public abstract class BCPGObject implements Encodable {
    public abstract void encode(BCPGOutputStream bCPGOutputStream) throws IOException;

    @Override // org.spongycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(byteArrayOutputStream);
        bCPGOutputStream.writeObject(this);
        bCPGOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }
}
