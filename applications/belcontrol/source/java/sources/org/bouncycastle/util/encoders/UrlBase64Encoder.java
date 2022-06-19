package org.bouncycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/encoders/UrlBase64Encoder.class */
public class UrlBase64Encoder extends Base64Encoder {
    public UrlBase64Encoder() {
        byte[] bArr = this.encodingTable;
        bArr[bArr.length - 2] = (byte) 45;
        bArr[bArr.length - 1] = (byte) 95;
        this.padding = (byte) 46;
        initialiseDecodingTable();
    }
}
