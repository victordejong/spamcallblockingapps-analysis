package org.spongycastle.bcpg;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/S2K.class */
public class S2K extends BCPGObject {
    private static final int EXPBIAS = 6;
    public static final int GNU_DUMMY_S2K = 101;
    public static final int GNU_PROTECTION_MODE_DIVERT_TO_CARD = 2;
    public static final int GNU_PROTECTION_MODE_NO_PRIVATE_KEY = 1;
    public static final int SALTED = 1;
    public static final int SALTED_AND_ITERATED = 3;
    public static final int SIMPLE = 0;
    int algorithm;
    int itCount;

    /* renamed from: iv */
    byte[] f989iv;
    int protectionMode;
    int type;

    public S2K(int i) {
        this.itCount = -1;
        this.protectionMode = -1;
        this.type = 0;
        this.algorithm = i;
    }

    public S2K(int i, byte[] bArr) {
        this.itCount = -1;
        this.protectionMode = -1;
        this.type = 1;
        this.algorithm = i;
        this.f989iv = bArr;
    }

    public S2K(int i, byte[] bArr, int i2) {
        this.itCount = -1;
        this.protectionMode = -1;
        this.type = 3;
        this.algorithm = i;
        this.f989iv = bArr;
        this.itCount = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S2K(InputStream inputStream) throws IOException {
        this.itCount = -1;
        this.protectionMode = -1;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.type = dataInputStream.read();
        this.algorithm = dataInputStream.read();
        if (this.type == 101) {
            dataInputStream.read();
            dataInputStream.read();
            dataInputStream.read();
            this.protectionMode = dataInputStream.read();
        } else if (this.type != 0) {
            this.f989iv = new byte[8];
            dataInputStream.readFully(this.f989iv, 0, this.f989iv.length);
            if (this.type == 3) {
                this.itCount = dataInputStream.read();
            }
        }
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.write(this.type);
        bCPGOutputStream.write(this.algorithm);
        if (this.type != 101) {
            if (this.type != 0) {
                bCPGOutputStream.write(this.f989iv);
            }
            if (this.type == 3) {
                bCPGOutputStream.write(this.itCount);
                return;
            }
            return;
        }
        bCPGOutputStream.write(71);
        bCPGOutputStream.write(78);
        bCPGOutputStream.write(85);
        bCPGOutputStream.write(this.protectionMode);
    }

    public int getHashAlgorithm() {
        return this.algorithm;
    }

    public byte[] getIV() {
        return this.f989iv;
    }

    public long getIterationCount() {
        return ((this.itCount & 15) + 16) << ((this.itCount >> 4) + 6);
    }

    public int getProtectionMode() {
        return this.protectionMode;
    }

    public int getType() {
        return this.type;
    }
}
