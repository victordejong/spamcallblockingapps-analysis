package org.spongycastle.bcpg;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/BCPGInputStream.class */
public class BCPGInputStream extends InputStream implements PacketTags {

    /* renamed from: in */
    InputStream f969in;
    boolean next = false;
    int nextB;

    /* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/BCPGInputStream$PartialInputStream.class */
    private static class PartialInputStream extends InputStream {
        private int dataLength;

        /* renamed from: in */
        private BCPGInputStream f970in;
        private boolean partial;

        PartialInputStream(BCPGInputStream bCPGInputStream, boolean z, int i) {
            this.f970in = bCPGInputStream;
            this.partial = z;
            this.dataLength = i;
        }

        private int loadDataLength() throws IOException {
            int read = this.f970in.read();
            if (read < 0) {
                return -1;
            }
            this.partial = false;
            if (read < 192) {
                this.dataLength = read;
            } else if (read <= 223) {
                this.dataLength = ((read - 192) << 8) + this.f970in.read() + 192;
            } else if (read == 255) {
                this.dataLength = (this.f970in.read() << 24) | (this.f970in.read() << 16) | (this.f970in.read() << 8) | this.f970in.read();
            } else {
                this.partial = true;
                this.dataLength = 1 << (read & 31);
            }
            return this.dataLength;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            int available = this.f970in.available();
            if (available <= this.dataLength || this.dataLength < 0) {
                return available;
            }
            if (!this.partial || this.dataLength != 0) {
                return this.dataLength;
            }
            return 1;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
        @Override // java.io.InputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int read() throws java.io.IOException {
            /*
                r4 = this;
            L_0x0000:
                r0 = r4
                int r0 = r0.dataLength
                if (r0 == 0) goto L_0x0029
                r0 = r4
                org.spongycastle.bcpg.BCPGInputStream r0 = r0.f970in
                int r0 = r0.read()
                r5 = r0
                r0 = r5
                if (r0 >= 0) goto L_0x001d
                java.io.EOFException r0 = new java.io.EOFException
                r1 = r0
                java.lang.String r2 = "premature end of stream in PartialInputStream"
                r1.<init>(r2)
                throw r0
            L_0x001d:
                r0 = r4
                r1 = r4
                int r1 = r1.dataLength
                r2 = 1
                int r1 = r1 - r2
                r0.dataLength = r1
                r0 = r5
                return r0
            L_0x0029:
                r0 = r4
                boolean r0 = r0.partial
                if (r0 == 0) goto L_0x0037
                r0 = r4
                int r0 = r0.loadDataLength()
                if (r0 >= 0) goto L_0x0000
            L_0x0037:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.bcpg.BCPGInputStream.PartialInputStream.read():int");
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
        @Override // java.io.InputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int read(byte[] r6, int r7, int r8) throws java.io.IOException {
            /*
                r5 = this;
            L_0x0000:
                r0 = r5
                int r0 = r0.dataLength
                if (r0 == 0) goto L_0x004b
                r0 = r8
                r9 = r0
                r0 = r5
                int r0 = r0.dataLength
                r1 = r8
                if (r0 > r1) goto L_0x0025
                r0 = r5
                int r0 = r0.dataLength
                if (r0 >= 0) goto L_0x001f
                r0 = r8
                r9 = r0
                goto L_0x0025
            L_0x001f:
                r0 = r5
                int r0 = r0.dataLength
                r9 = r0
            L_0x0025:
                r0 = r5
                org.spongycastle.bcpg.BCPGInputStream r0 = r0.f970in
                r1 = r6
                r2 = r7
                r3 = r9
                int r0 = r0.read(r1, r2, r3)
                r7 = r0
                r0 = r7
                if (r0 >= 0) goto L_0x003f
                java.io.EOFException r0 = new java.io.EOFException
                r1 = r0
                java.lang.String r2 = "premature end of stream in PartialInputStream"
                r1.<init>(r2)
                throw r0
            L_0x003f:
                r0 = r5
                r1 = r5
                int r1 = r1.dataLength
                r2 = r7
                int r1 = r1 - r2
                r0.dataLength = r1
                r0 = r7
                return r0
            L_0x004b:
                r0 = r5
                boolean r0 = r0.partial
                if (r0 == 0) goto L_0x0059
                r0 = r5
                int r0 = r0.loadDataLength()
                if (r0 >= 0) goto L_0x0000
            L_0x0059:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.bcpg.BCPGInputStream.PartialInputStream.read(byte[], int, int):int");
        }
    }

    public BCPGInputStream(InputStream inputStream) {
        this.f969in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f969in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f969in.close();
    }

    public int nextPacketTag() throws IOException {
        if (!this.next) {
            try {
                this.nextB = this.f969in.read();
            } catch (EOFException e) {
                this.nextB = -1;
            }
            this.next = true;
        }
        if (this.nextB < 0) {
            return this.nextB;
        }
        int i = this.nextB & 63;
        int i2 = i;
        if ((this.nextB & 64) == 0) {
            i2 = i >> 2;
        }
        return i2;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.next) {
            return this.f969in.read();
        }
        this.next = false;
        return this.nextB;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        if (!this.next) {
            return this.f969in.read(bArr, i, i2);
        }
        if (this.nextB < 0) {
            return -1;
        }
        bArr[i] = (byte) this.nextB;
        this.next = false;
        return 1;
    }

    public byte[] readAll() throws IOException {
        return Streams.readAll(this);
    }

    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        if (Streams.readFully(this, bArr, i, i2) < i2) {
            throw new EOFException();
        }
    }

    public Packet readPacket() throws IOException {
        int i;
        int i2;
        int read = read();
        if (read < 0) {
            return null;
        }
        if ((read & 128) == 0) {
            throw new IOException("invalid header encountered");
        }
        boolean z = false;
        z = true;
        if ((read & 64) != 0) {
            i = read & 63;
            i2 = read();
            if (i2 >= 192) {
                if (i2 <= 223) {
                    i2 = ((i2 - 192) << 8) + this.f969in.read() + 192;
                } else if (i2 == 255) {
                    i2 = (this.f969in.read() << 24) | (this.f969in.read() << 16) | (this.f969in.read() << 8) | this.f969in.read();
                } else {
                    i2 = 1 << (i2 & 31);
                }
            }
            z = false;
        } else {
            i = (read & 63) >> 2;
            switch (read & 3) {
                case 0:
                    i2 = read();
                    break;
                case 1:
                    i2 = (read() << 8) | read();
                    break;
                case 2:
                    i2 = (read() << 24) | (read() << 16) | (read() << 8) | read();
                    break;
                case 3:
                    i2 = 0;
                    z = true;
                    break;
                default:
                    throw new IOException("unknown length type encountered");
            }
        }
        BCPGInputStream bCPGInputStream = (i2 != 0 || !z) ? new BCPGInputStream(new PartialInputStream(this, z, i2)) : this;
        switch (i) {
            case 0:
                return new InputStreamPacket(bCPGInputStream);
            case 1:
                return new PublicKeyEncSessionPacket(bCPGInputStream);
            case 2:
                return new SignaturePacket(bCPGInputStream);
            case 3:
                return new SymmetricKeyEncSessionPacket(bCPGInputStream);
            case 4:
                return new OnePassSignaturePacket(bCPGInputStream);
            case 5:
                return new SecretKeyPacket(bCPGInputStream);
            case 6:
                return new PublicKeyPacket(bCPGInputStream);
            case 7:
                return new SecretSubkeyPacket(bCPGInputStream);
            case 8:
                return new CompressedDataPacket(bCPGInputStream);
            case 9:
                return new SymmetricEncDataPacket(bCPGInputStream);
            case 10:
                return new MarkerPacket(bCPGInputStream);
            case 11:
                return new LiteralDataPacket(bCPGInputStream);
            case 12:
                return new TrustPacket(bCPGInputStream);
            case 13:
                return new UserIDPacket(bCPGInputStream);
            case 14:
                return new PublicSubkeyPacket(bCPGInputStream);
            default:
                switch (i) {
                    case 17:
                        return new UserAttributePacket(bCPGInputStream);
                    case 18:
                        return new SymmetricEncIntegrityPacket(bCPGInputStream);
                    case 19:
                        return new ModDetectionCodePacket(bCPGInputStream);
                    default:
                        switch (i) {
                            case 60:
                            case 61:
                            case 62:
                            case 63:
                                return new ExperimentalPacket(i, bCPGInputStream);
                            default:
                                throw new IOException("unknown packet type encountered: " + i);
                        }
                }
        }
    }
}
