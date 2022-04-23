package org.spongycastle.bcpg.attr;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.bcpg.UserAttributeSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/attr/ImageAttribute.class */
public class ImageAttribute extends UserAttributeSubpacket {
    public static final int JPEG = 1;
    private static final byte[] ZEROES = new byte[12];
    private int encoding;
    private int hdrLength;
    private byte[] imageData;
    private int version;

    public ImageAttribute(int i, byte[] bArr) {
        this(toByteArray(i, bArr));
    }

    public ImageAttribute(boolean z, byte[] bArr) {
        super(1, z, bArr);
        this.hdrLength = ((bArr[1] & 255) << 8) | (bArr[0] & 255);
        this.version = bArr[2] & 255;
        this.encoding = bArr[3] & 255;
        this.imageData = new byte[bArr.length - this.hdrLength];
        System.arraycopy(bArr, this.hdrLength, this.imageData, 0, this.imageData.length);
    }

    public ImageAttribute(byte[] bArr) {
        this(false, bArr);
    }

    private static byte[] toByteArray(int i, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(16);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(1);
            byteArrayOutputStream.write(i);
            byteArrayOutputStream.write(ZEROES);
            byteArrayOutputStream.write(bArr);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException("unable to encode to byte array!");
        }
    }

    public int getEncoding() {
        return this.encoding;
    }

    public byte[] getImageData() {
        return this.imageData;
    }

    public int version() {
        return this.version;
    }
}
