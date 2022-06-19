package org.bouncycastle.asn1;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DEROutputStream.class */
public class DEROutputStream extends FilterOutputStream implements DERTags {
    public DEROutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    private void writeLength(int i) {
        if (i <= 127) {
            write((byte) i);
            return;
        }
        int i2 = i;
        int i3 = 1;
        while (true) {
            i2 >>>= 8;
            if (i2 == 0) {
                break;
            }
            i3++;
        }
        write((byte) (i3 | 128));
        for (int i4 = (i3 - 1) * 8; i4 >= 0; i4 -= 8) {
            write((byte) (i >> i4));
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        ((FilterOutputStream) this).out.write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }

    public void writeEncoded(int i, int i2, byte[] bArr) {
        writeTag(i, i2);
        writeLength(bArr.length);
        write(bArr);
    }

    public void writeEncoded(int i, byte[] bArr) {
        write(i);
        writeLength(bArr.length);
        write(bArr);
    }

    public void writeNull() {
        write(5);
        write(0);
    }

    public void writeObject(Object obj) {
        DERObject dERObject;
        if (obj == null) {
            writeNull();
            return;
        }
        if (obj instanceof DERObject) {
            dERObject = (DERObject) obj;
        } else if (!(obj instanceof DEREncodable)) {
            throw new IOException("object not DEREncodable");
        } else {
            dERObject = ((DEREncodable) obj).getDERObject();
        }
        dERObject.encode(this);
    }

    public void writeTag(int i, int i2) {
        int i3;
        int i4;
        if (i2 < 31) {
            write(i | i2);
            return;
        }
        write(i | 31);
        if (i2 < 128) {
            write(i2);
            return;
        }
        byte[] bArr = new byte[5];
        int i5 = 4;
        bArr[4] = (byte) (i2 & 127);
        do {
            i3 = i2 >> 7;
            i4 = i5 - 1;
            bArr[i4] = (byte) ((i3 & 127) | 128);
            i5 = i4;
            i2 = i3;
        } while (i3 > 127);
        write(bArr, i4, 5 - i4);
    }
}
