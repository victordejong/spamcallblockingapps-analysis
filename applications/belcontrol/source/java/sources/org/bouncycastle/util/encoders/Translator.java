package org.bouncycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/encoders/Translator.class */
public interface Translator {
    int decode(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    int encode(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    int getDecodedBlockSize();

    int getEncodedBlockSize();
}
