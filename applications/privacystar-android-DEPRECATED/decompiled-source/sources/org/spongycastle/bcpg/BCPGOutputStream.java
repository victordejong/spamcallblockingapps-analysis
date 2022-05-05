package org.spongycastle.bcpg;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/BCPGOutputStream.class */
public class BCPGOutputStream extends OutputStream implements PacketTags, CompressionAlgorithmTags {
    private static final int BUF_SIZE_POWER = 16;
    OutputStream out;
    private byte[] partialBuffer;
    private int partialBufferLength;
    private int partialOffset;
    private int partialPower;

    public BCPGOutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    public BCPGOutputStream(OutputStream outputStream, int i) throws IOException {
        this.out = outputStream;
        writeHeader(i, true, true, 0L);
    }

    public BCPGOutputStream(OutputStream outputStream, int i, long j) throws IOException {
        this.out = outputStream;
        writeHeader(i, false, false, j);
    }

    public BCPGOutputStream(OutputStream outputStream, int i, long j, boolean z) throws IOException {
        this.out = outputStream;
        if (j > BodyPartID.bodyIdMax) {
            writeHeader(i, false, true, 0L);
            this.partialBufferLength = 65536;
            this.partialBuffer = new byte[this.partialBufferLength];
            this.partialPower = 16;
            this.partialOffset = 0;
            return;
        }
        writeHeader(i, z, false, j);
    }

    public BCPGOutputStream(OutputStream outputStream, int i, byte[] bArr) throws IOException {
        this.out = outputStream;
        writeHeader(i, false, true, 0L);
        this.partialBuffer = bArr;
        int length = this.partialBuffer.length;
        this.partialPower = 0;
        while (length != 1) {
            length >>>= 1;
            this.partialPower++;
        }
        if (this.partialPower > 30) {
            throw new IOException("Buffer cannot be greater than 2^30 in length.");
        }
        this.partialBufferLength = 1 << this.partialPower;
        this.partialOffset = 0;
    }

    private void partialFlush(boolean z) throws IOException {
        if (z) {
            writeNewPacketLength(this.partialOffset);
            this.out.write(this.partialBuffer, 0, this.partialOffset);
        } else {
            this.out.write(this.partialPower | 224);
            this.out.write(this.partialBuffer, 0, this.partialBufferLength);
        }
        this.partialOffset = 0;
    }

    private void writeHeader(int i, boolean z, boolean z2, long j) throws IOException {
        if (this.partialBuffer != null) {
            partialFlush(true);
            this.partialBuffer = null;
        }
        if (z) {
            int i2 = (i << 2) | 128;
            if (z2) {
                write(i2 | 3);
            } else if (j <= 255) {
                write(i2);
                write((byte) j);
            } else if (j <= 65535) {
                write(i2 | 1);
                write((byte) (j >> 8));
                write((byte) j);
            } else {
                write(i2 | 2);
                write((byte) (j >> 24));
                write((byte) (j >> 16));
                write((byte) (j >> 8));
                write((byte) j);
            }
        } else {
            write(i | 64 | 128);
            if (z2) {
                this.partialOffset = 0;
            } else {
                writeNewPacketLength(j);
            }
        }
    }

    private void writeNewPacketLength(long j) throws IOException {
        if (j < 192) {
            this.out.write((byte) j);
        } else if (j <= 8383) {
            long j2 = j - 192;
            this.out.write((byte) (((j2 >> 8) & 255) + 192));
            this.out.write((byte) j2);
        } else {
            this.out.write(255);
            this.out.write((byte) (j >> 24));
            this.out.write((byte) (j >> 16));
            this.out.write((byte) (j >> 8));
            this.out.write((byte) j);
        }
    }

    private void writePartial(byte b) throws IOException {
        if (this.partialOffset == this.partialBufferLength) {
            partialFlush(false);
        }
        byte[] bArr = this.partialBuffer;
        int i = this.partialOffset;
        this.partialOffset = i + 1;
        bArr[i] = b;
    }

    private void writePartial(byte[] bArr, int i, int i2) throws IOException {
        if (this.partialOffset == this.partialBufferLength) {
            partialFlush(false);
        }
        if (i2 <= this.partialBufferLength - this.partialOffset) {
            System.arraycopy(bArr, i, this.partialBuffer, this.partialOffset, i2);
            this.partialOffset += i2;
            return;
        }
        System.arraycopy(bArr, i, this.partialBuffer, this.partialOffset, this.partialBufferLength - this.partialOffset);
        int i3 = i + (this.partialBufferLength - this.partialOffset);
        int i4 = i2 - (this.partialBufferLength - this.partialOffset);
        partialFlush(false);
        while (i4 > this.partialBufferLength) {
            System.arraycopy(bArr, i3, this.partialBuffer, 0, this.partialBufferLength);
            i3 += this.partialBufferLength;
            i4 -= this.partialBufferLength;
            partialFlush(false);
        }
        System.arraycopy(bArr, i3, this.partialBuffer, 0, i4);
        this.partialOffset += i4;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        this.out.flush();
        this.out.close();
    }

    public void finish() throws IOException {
        if (this.partialBuffer != null) {
            partialFlush(true);
            this.partialBuffer = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (this.partialBuffer != null) {
            writePartial((byte) i);
        } else {
            this.out.write(i);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.partialBuffer != null) {
            writePartial(bArr, i, i2);
        } else {
            this.out.write(bArr, i, i2);
        }
    }

    public void writeObject(BCPGObject bCPGObject) throws IOException {
        bCPGObject.encode(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writePacket(int i, byte[] bArr, boolean z) throws IOException {
        writeHeader(i, z, false, bArr.length);
        write(bArr);
    }

    public void writePacket(ContainedPacket containedPacket) throws IOException {
        containedPacket.encode(this);
    }
}
