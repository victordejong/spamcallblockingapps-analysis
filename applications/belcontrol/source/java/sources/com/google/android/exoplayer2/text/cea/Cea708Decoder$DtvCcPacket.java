package com.google.android.exoplayer2.text.cea;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/cea/Cea708Decoder$DtvCcPacket.class */
public final class Cea708Decoder$DtvCcPacket {
    public int currentIndex = 0;
    public final byte[] packetData;
    public final int packetSize;
    public final int sequenceNumber;

    public Cea708Decoder$DtvCcPacket(int i, int i2) {
        this.sequenceNumber = i;
        this.packetSize = i2;
        this.packetData = new byte[(i2 * 2) - 1];
    }
}
