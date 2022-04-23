package org.spongycastle.bcpg;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Vector;
import org.spongycastle.bcpg.sig.IssuerKeyID;
import org.spongycastle.bcpg.sig.SignatureCreationTime;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/SignaturePacket.class */
public class SignaturePacket extends ContainedPacket implements PublicKeyAlgorithmTags {
    private long creationTime;
    private byte[] fingerPrint;
    private int hashAlgorithm;
    private SignatureSubpacket[] hashedData;
    private int keyAlgorithm;
    private long keyID;
    private MPInteger[] signature;
    private byte[] signatureEncoding;
    private int signatureType;
    private SignatureSubpacket[] unhashedData;
    private int version;

    public SignaturePacket(int i, int i2, long j, int i3, int i4, long j2, byte[] bArr, MPInteger[] mPIntegerArr) {
        this(i, i2, j, i3, i4, null, null, bArr, mPIntegerArr);
        this.creationTime = j2;
    }

    public SignaturePacket(int i, int i2, long j, int i3, int i4, SignatureSubpacket[] signatureSubpacketArr, SignatureSubpacket[] signatureSubpacketArr2, byte[] bArr, MPInteger[] mPIntegerArr) {
        this.version = i;
        this.signatureType = i2;
        this.keyID = j;
        this.keyAlgorithm = i3;
        this.hashAlgorithm = i4;
        this.hashedData = signatureSubpacketArr;
        this.unhashedData = signatureSubpacketArr2;
        this.fingerPrint = bArr;
        this.signature = mPIntegerArr;
        if (signatureSubpacketArr != null) {
            setCreationTime();
        }
    }

    public SignaturePacket(int i, long j, int i2, int i3, SignatureSubpacket[] signatureSubpacketArr, SignatureSubpacket[] signatureSubpacketArr2, byte[] bArr, MPInteger[] mPIntegerArr) {
        this(4, i, j, i2, i3, signatureSubpacketArr, signatureSubpacketArr2, bArr, mPIntegerArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignaturePacket(BCPGInputStream bCPGInputStream) throws IOException {
        this.version = bCPGInputStream.read();
        if (this.version == 3 || this.version == 2) {
            bCPGInputStream.read();
            this.signatureType = bCPGInputStream.read();
            this.creationTime = ((bCPGInputStream.read() << 24) | (bCPGInputStream.read() << 16) | (bCPGInputStream.read() << 8) | bCPGInputStream.read()) * 1000;
            this.keyID |= bCPGInputStream.read() << 56;
            this.keyID |= bCPGInputStream.read() << 48;
            this.keyID |= bCPGInputStream.read() << 40;
            this.keyID |= bCPGInputStream.read() << 32;
            this.keyID |= bCPGInputStream.read() << 24;
            this.keyID |= bCPGInputStream.read() << 16;
            this.keyID |= bCPGInputStream.read() << 8;
            this.keyID |= bCPGInputStream.read();
            this.keyAlgorithm = bCPGInputStream.read();
            this.hashAlgorithm = bCPGInputStream.read();
        } else if (this.version == 4) {
            this.signatureType = bCPGInputStream.read();
            this.keyAlgorithm = bCPGInputStream.read();
            this.hashAlgorithm = bCPGInputStream.read();
            byte[] bArr = new byte[(bCPGInputStream.read() << 8) | bCPGInputStream.read()];
            bCPGInputStream.readFully(bArr);
            SignatureSubpacketInputStream signatureSubpacketInputStream = new SignatureSubpacketInputStream(new ByteArrayInputStream(bArr));
            Vector vector = new Vector();
            while (true) {
                SignatureSubpacket readPacket = signatureSubpacketInputStream.readPacket();
                if (readPacket == null) {
                    break;
                }
                vector.addElement(readPacket);
            }
            this.hashedData = new SignatureSubpacket[vector.size()];
            for (int i = 0; i != this.hashedData.length; i++) {
                SignatureSubpacket signatureSubpacket = (SignatureSubpacket) vector.elementAt(i);
                if (signatureSubpacket instanceof IssuerKeyID) {
                    this.keyID = ((IssuerKeyID) signatureSubpacket).getKeyID();
                } else if (signatureSubpacket instanceof SignatureCreationTime) {
                    this.creationTime = ((SignatureCreationTime) signatureSubpacket).getTime().getTime();
                }
                this.hashedData[i] = signatureSubpacket;
            }
            byte[] bArr2 = new byte[(bCPGInputStream.read() << 8) | bCPGInputStream.read()];
            bCPGInputStream.readFully(bArr2);
            SignatureSubpacketInputStream signatureSubpacketInputStream2 = new SignatureSubpacketInputStream(new ByteArrayInputStream(bArr2));
            vector.removeAllElements();
            while (true) {
                SignatureSubpacket readPacket2 = signatureSubpacketInputStream2.readPacket();
                if (readPacket2 == null) {
                    break;
                }
                vector.addElement(readPacket2);
            }
            this.unhashedData = new SignatureSubpacket[vector.size()];
            for (int i2 = 0; i2 != this.unhashedData.length; i2++) {
                SignatureSubpacket signatureSubpacket2 = (SignatureSubpacket) vector.elementAt(i2);
                if (signatureSubpacket2 instanceof IssuerKeyID) {
                    this.keyID = ((IssuerKeyID) signatureSubpacket2).getKeyID();
                }
                this.unhashedData[i2] = signatureSubpacket2;
            }
        } else {
            throw new RuntimeException("unsupported version: " + this.version);
        }
        this.fingerPrint = new byte[2];
        bCPGInputStream.readFully(this.fingerPrint);
        int i3 = this.keyAlgorithm;
        if (i3 == 1 || i3 == 3) {
            MPInteger mPInteger = new MPInteger(bCPGInputStream);
            this.signature = new MPInteger[1];
            this.signature[0] = mPInteger;
            return;
        }
        switch (i3) {
            case 16:
                break;
            case 17:
                MPInteger mPInteger2 = new MPInteger(bCPGInputStream);
                MPInteger mPInteger3 = new MPInteger(bCPGInputStream);
                this.signature = new MPInteger[2];
                this.signature[0] = mPInteger2;
                this.signature[1] = mPInteger3;
                return;
            default:
                switch (i3) {
                    case 19:
                        MPInteger mPInteger4 = new MPInteger(bCPGInputStream);
                        MPInteger mPInteger5 = new MPInteger(bCPGInputStream);
                        this.signature = new MPInteger[2];
                        this.signature[0] = mPInteger4;
                        this.signature[1] = mPInteger5;
                        return;
                    case 20:
                        break;
                    default:
                        if (this.keyAlgorithm < 100 || this.keyAlgorithm > 110) {
                            throw new IOException("unknown signature key algorithm: " + this.keyAlgorithm);
                        }
                        this.signature = null;
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            int read = bCPGInputStream.read();
                            if (read >= 0) {
                                byteArrayOutputStream.write(read);
                            } else {
                                this.signatureEncoding = byteArrayOutputStream.toByteArray();
                                return;
                            }
                        }
                        break;
                }
        }
        MPInteger mPInteger6 = new MPInteger(bCPGInputStream);
        MPInteger mPInteger7 = new MPInteger(bCPGInputStream);
        MPInteger mPInteger8 = new MPInteger(bCPGInputStream);
        this.signature = new MPInteger[3];
        this.signature[0] = mPInteger6;
        this.signature[1] = mPInteger7;
        this.signature[2] = mPInteger8;
    }

    public static SignaturePacket fromByteArray(byte[] bArr) throws IOException {
        return new SignaturePacket(new BCPGInputStream(new ByteArrayInputStream(bArr)));
    }

    private void setCreationTime() {
        for (int i = 0; i != this.hashedData.length; i++) {
            if (this.hashedData[i] instanceof SignatureCreationTime) {
                this.creationTime = ((SignatureCreationTime) this.hashedData[i]).getTime().getTime();
                return;
            }
        }
    }

    @Override // org.spongycastle.bcpg.ContainedPacket
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream2 = new BCPGOutputStream(byteArrayOutputStream);
        bCPGOutputStream2.write(this.version);
        if (this.version == 3 || this.version == 2) {
            bCPGOutputStream2.write(5);
            long j = this.creationTime / 1000;
            bCPGOutputStream2.write(this.signatureType);
            bCPGOutputStream2.write((byte) (j >> 24));
            bCPGOutputStream2.write((byte) (j >> 16));
            bCPGOutputStream2.write((byte) (j >> 8));
            bCPGOutputStream2.write((byte) j);
            bCPGOutputStream2.write((byte) (this.keyID >> 56));
            bCPGOutputStream2.write((byte) (this.keyID >> 48));
            bCPGOutputStream2.write((byte) (this.keyID >> 40));
            bCPGOutputStream2.write((byte) (this.keyID >> 32));
            bCPGOutputStream2.write((byte) (this.keyID >> 24));
            bCPGOutputStream2.write((byte) (this.keyID >> 16));
            bCPGOutputStream2.write((byte) (this.keyID >> 8));
            bCPGOutputStream2.write((byte) this.keyID);
            bCPGOutputStream2.write(this.keyAlgorithm);
            bCPGOutputStream2.write(this.hashAlgorithm);
        } else if (this.version == 4) {
            bCPGOutputStream2.write(this.signatureType);
            bCPGOutputStream2.write(this.keyAlgorithm);
            bCPGOutputStream2.write(this.hashAlgorithm);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            for (int i = 0; i != this.hashedData.length; i++) {
                this.hashedData[i].encode(byteArrayOutputStream2);
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            bCPGOutputStream2.write(byteArray.length >> 8);
            bCPGOutputStream2.write(byteArray.length);
            bCPGOutputStream2.write(byteArray);
            byteArrayOutputStream2.reset();
            for (int i2 = 0; i2 != this.unhashedData.length; i2++) {
                this.unhashedData[i2].encode(byteArrayOutputStream2);
            }
            byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
            bCPGOutputStream2.write(byteArray2.length >> 8);
            bCPGOutputStream2.write(byteArray2.length);
            bCPGOutputStream2.write(byteArray2);
        } else {
            throw new IOException("unknown version: " + this.version);
        }
        bCPGOutputStream2.write(this.fingerPrint);
        if (this.signature != null) {
            for (int i3 = 0; i3 != this.signature.length; i3++) {
                bCPGOutputStream2.writeObject(this.signature[i3]);
            }
        } else {
            bCPGOutputStream2.write(this.signatureEncoding);
        }
        bCPGOutputStream2.close();
        bCPGOutputStream.writePacket(2, byteArrayOutputStream.toByteArray(), true);
    }

    public long getCreationTime() {
        return this.creationTime;
    }

    public int getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public SignatureSubpacket[] getHashedSubPackets() {
        return this.hashedData;
    }

    public int getKeyAlgorithm() {
        return this.keyAlgorithm;
    }

    public long getKeyID() {
        return this.keyID;
    }

    public MPInteger[] getSignature() {
        return this.signature;
    }

    public byte[] getSignatureBytes() {
        if (this.signatureEncoding != null) {
            return Arrays.clone(this.signatureEncoding);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BCPGOutputStream bCPGOutputStream = new BCPGOutputStream(byteArrayOutputStream);
        for (int i = 0; i != this.signature.length; i++) {
            try {
                bCPGOutputStream.writeObject(this.signature[i]);
            } catch (IOException e) {
                throw new RuntimeException("internal error: " + e);
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getSignatureTrailer() {
        byte[] bArr;
        if (this.version == 3 || this.version == 2) {
            long j = this.creationTime / 1000;
            bArr = new byte[]{(byte) this.signatureType, (byte) (j >> 24), (byte) (j >> 16), (byte) (j >> 8), (byte) j};
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write((byte) getVersion());
                byteArrayOutputStream.write((byte) getSignatureType());
                byteArrayOutputStream.write((byte) getKeyAlgorithm());
                byteArrayOutputStream.write((byte) getHashAlgorithm());
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                SignatureSubpacket[] hashedSubPackets = getHashedSubPackets();
                for (int i = 0; i != hashedSubPackets.length; i++) {
                    hashedSubPackets[i].encode(byteArrayOutputStream2);
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                byteArrayOutputStream.write((byte) (byteArray.length >> 8));
                byteArrayOutputStream.write((byte) byteArray.length);
                byteArrayOutputStream.write(byteArray);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.write((byte) getVersion());
                byteArrayOutputStream.write(-1);
                byteArrayOutputStream.write((byte) (byteArray2.length >> 24));
                byteArrayOutputStream.write((byte) (byteArray2.length >> 16));
                byteArrayOutputStream.write((byte) (byteArray2.length >> 8));
                byteArrayOutputStream.write((byte) byteArray2.length);
                bArr = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new RuntimeException("exception generating trailer: " + e);
            }
        }
        return bArr;
    }

    public int getSignatureType() {
        return this.signatureType;
    }

    public SignatureSubpacket[] getUnhashedSubPackets() {
        return this.unhashedData;
    }

    public int getVersion() {
        return this.version;
    }
}
