package org.spongycastle.bcpg;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/UserAttributeSubpacket.class */
public class UserAttributeSubpacket {
    protected byte[] data;
    private boolean forceLongLength;
    int type;

    /* JADX INFO: Access modifiers changed from: protected */
    public UserAttributeSubpacket(int i, boolean z, byte[] bArr) {
        this.type = i;
        this.forceLongLength = z;
        this.data = bArr;
    }

    protected UserAttributeSubpacket(int i, byte[] bArr) {
        this(i, false, bArr);
    }

    public void encode(OutputStream outputStream) throws IOException {
        int length = this.data.length + 1;
        if (length < 192 && !this.forceLongLength) {
            outputStream.write((byte) length);
        } else if (length > 8383 || this.forceLongLength) {
            outputStream.write(255);
            outputStream.write((byte) (length >> 24));
            outputStream.write((byte) (length >> 16));
            outputStream.write((byte) (length >> 8));
            outputStream.write((byte) length);
        } else {
            int i = length - 192;
            outputStream.write((byte) (((i >> 8) & 255) + 192));
            outputStream.write((byte) i);
        }
        outputStream.write(this.type);
        outputStream.write(this.data);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserAttributeSubpacket)) {
            return false;
        }
        UserAttributeSubpacket userAttributeSubpacket = (UserAttributeSubpacket) obj;
        if (this.type != userAttributeSubpacket.type || !Arrays.areEqual(this.data, userAttributeSubpacket.data)) {
            z = false;
        }
        return z;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type ^ Arrays.hashCode(this.data);
    }
}
