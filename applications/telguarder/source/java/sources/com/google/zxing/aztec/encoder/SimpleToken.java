package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/zxing/aztec/encoder/SimpleToken.class */
public final class SimpleToken extends Token {
    private final short bitCount;
    private final short value;

    public SimpleToken(Token token, int i, int i2) {
        super(token);
        this.value = (short) i;
        this.bitCount = (short) i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.zxing.aztec.encoder.Token
    public void appendTo(BitArray bitArray, byte[] bArr) {
        bitArray.appendBits(this.value, this.bitCount);
    }

    public String toString() {
        short s = this.value;
        short s2 = this.bitCount;
        return SimpleComparison.LESS_THAN_OPERATION + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.bitCount)).substring(1) + '>';
    }
}
