package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSEpoch.class */
class DTLSEpoch {
    private final TlsCipher cipher;
    private final int epoch;
    private final DTLSReplayWindow replayWindow = new DTLSReplayWindow();
    private long sequenceNumber = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTLSEpoch(int i, TlsCipher tlsCipher) {
        if (i < 0) {
            throw new IllegalArgumentException("'epoch' must be >= 0");
        } else if (tlsCipher == null) {
            throw new IllegalArgumentException("'cipher' cannot be null");
        } else {
            this.epoch = i;
            this.cipher = tlsCipher;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long allocateSequenceNumber() {
        long j = this.sequenceNumber;
        this.sequenceNumber = 1 + j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TlsCipher getCipher() {
        return this.cipher;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getEpoch() {
        return this.epoch;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTLSReplayWindow getReplayWindow() {
        return this.replayWindow;
    }

    long getSequenceNumber() {
        return this.sequenceNumber;
    }
}
