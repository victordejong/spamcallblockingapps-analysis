package org.spongycastle.bcpg;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/CRC24.class */
public class CRC24 {
    private static final int CRC24_INIT = 11994318;
    private static final int CRC24_POLY = 25578747;
    private int crc = CRC24_INIT;

    public int getValue() {
        return this.crc;
    }

    public void reset() {
        this.crc = CRC24_INIT;
    }

    public void update(int i) {
        this.crc = (i << 16) ^ this.crc;
        for (int i2 = 0; i2 < 8; i2++) {
            this.crc <<= 1;
            if ((this.crc & 16777216) != 0) {
                this.crc ^= CRC24_POLY;
            }
        }
    }
}
