package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/IssuerKeyID.class */
public class IssuerKeyID extends SignatureSubpacket {
    public IssuerKeyID(boolean z, long j) {
        super(16, z, false, keyIDToBytes(j));
    }

    public IssuerKeyID(boolean z, boolean z2, byte[] bArr) {
        super(16, z, z2, bArr);
    }

    protected static byte[] keyIDToBytes(long j) {
        return new byte[]{(byte) (j >> 56), (byte) (j >> 48), (byte) (j >> 40), (byte) (j >> 32), (byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j};
    }

    public long getKeyID() {
        return ((this.data[0] & 255) << 56) | ((this.data[1] & 255) << 48) | ((this.data[2] & 255) << 40) | ((this.data[3] & 255) << 32) | ((this.data[4] & 255) << 24) | ((this.data[5] & 255) << 16) | ((this.data[6] & 255) << 8) | (this.data[7] & 255);
    }
}
