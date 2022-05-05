package org.spongycastle.bcpg.sig;

import java.util.Date;
import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/SignatureCreationTime.class */
public class SignatureCreationTime extends SignatureSubpacket {
    public SignatureCreationTime(boolean z, Date date) {
        super(2, z, false, timeToBytes(date));
    }

    public SignatureCreationTime(boolean z, boolean z2, byte[] bArr) {
        super(2, z, z2, bArr);
    }

    protected static byte[] timeToBytes(Date date) {
        long time = date.getTime() / 1000;
        return new byte[]{(byte) (time >> 24), (byte) (time >> 16), (byte) (time >> 8), (byte) time};
    }

    public Date getTime() {
        return new Date((((this.data[0] & 255) << 24) | ((this.data[1] & 255) << 16) | ((this.data[2] & 255) << 8) | (this.data[3] & 255)) * 1000);
    }
}
