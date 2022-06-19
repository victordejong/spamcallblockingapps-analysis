package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.p013io.Streams;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1InputStream.class */
public class ASN1InputStream extends FilterInputStream implements DERTags {
    private final boolean lazyEvaluate;
    private final int limit;

    public ASN1InputStream(InputStream inputStream) {
        this(inputStream, findLimit(inputStream));
    }

    public ASN1InputStream(InputStream inputStream, int i) {
        this(inputStream, i, false);
    }

    public ASN1InputStream(InputStream inputStream, int i, boolean z) {
        super(inputStream);
        this.limit = i;
        this.lazyEvaluate = z;
    }

    public ASN1InputStream(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public ASN1InputStream(byte[] bArr, boolean z) {
        this(new ByteArrayInputStream(bArr), bArr.length, z);
    }

    public static DERObject createPrimitiveDERObject(int i, byte[] bArr) {
        switch (i) {
            case 1:
                return new ASN1Boolean(bArr);
            case 2:
                return new ASN1Integer(bArr);
            case 3:
                return DERBitString.fromOctetString(bArr);
            case 4:
                return new DEROctetString(bArr);
            case 5:
                return DERNull.INSTANCE;
            case 6:
                return new ASN1ObjectIdentifier(bArr);
            case 7:
            case 8:
            case 9:
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 21:
            case 25:
            case 29:
            default:
                return new DERUnknownTag(false, i, bArr);
            case 10:
                return new ASN1Enumerated(bArr);
            case 12:
                return new DERUTF8String(bArr);
            case 18:
                return new DERNumericString(bArr);
            case 19:
                return new DERPrintableString(bArr);
            case 20:
                return new DERT61String(bArr);
            case 22:
                return new DERIA5String(bArr);
            case 23:
                return new ASN1UTCTime(bArr);
            case 24:
                return new ASN1GeneralizedTime(bArr);
            case 26:
                return new DERVisibleString(bArr);
            case 27:
                return new DERGeneralString(bArr);
            case 28:
                return new DERUniversalString(bArr);
            case 30:
                return new DERBMPString(bArr);
        }
    }

    public static int findLimit(InputStream inputStream) {
        if (inputStream instanceof LimitedInputStream) {
            return ((LimitedInputStream) inputStream).getRemaining();
        }
        if (!(inputStream instanceof ByteArrayInputStream)) {
            return Integer.MAX_VALUE;
        }
        return ((ByteArrayInputStream) inputStream).available();
    }

    public static int readLength(InputStream inputStream, int i) {
        int read = inputStream.read();
        if (read >= 0) {
            if (read == 128) {
                return -1;
            }
            int i2 = read;
            if (read > 127) {
                int i3 = read & 127;
                if (i3 > 4) {
                    throw new IOException("DER length more than 4 bytes: " + i3);
                }
                i2 = 0;
                for (int i4 = 0; i4 < i3; i4++) {
                    int read2 = inputStream.read();
                    if (read2 < 0) {
                        throw new EOFException("EOF found reading length");
                    }
                    i2 = (i2 << 8) + read2;
                }
                if (i2 < 0) {
                    throw new IOException("corrupted stream - negative length found");
                }
                if (i2 >= i) {
                    throw new IOException("corrupted stream - out of bounds length found");
                }
            }
            return i2;
        }
        throw new EOFException("EOF found when length expected");
    }

    public static int readTagNumber(InputStream inputStream, int i) {
        int i2 = i & 31;
        int i3 = i2;
        if (i2 == 31) {
            int i4 = 0;
            int read = inputStream.read();
            if ((read & 127) == 0) {
                throw new IOException("corrupted stream - invalid high tag number found");
            }
            while (read >= 0 && (read & 128) != 0) {
                i4 = (i4 | (read & 127)) << 7;
                read = inputStream.read();
            }
            if (read < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            i3 = i4 | (read & 127);
        }
        return i3;
    }

    public ASN1EncodableVector buildDEREncodableVector(DefiniteLengthInputStream definiteLengthInputStream) {
        return new ASN1InputStream(definiteLengthInputStream).buildEncodableVector();
    }

    public ASN1EncodableVector buildEncodableVector() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        while (true) {
            DERObject readObject = readObject();
            if (readObject != null) {
                aSN1EncodableVector.add(readObject);
            } else {
                return aSN1EncodableVector;
            }
        }
    }

    public DERObject buildObject(int i, int i2, int i3) {
        boolean z = (i & 32) != 0;
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this, i3);
        return (i & 64) != 0 ? new DERApplicationSpecific(z, i2, definiteLengthInputStream.toByteArray()) : (i & 128) != 0 ? new ASN1StreamParser(definiteLengthInputStream).readTaggedObject(z, i2) : z ? i2 != 4 ? i2 != 8 ? i2 != 16 ? i2 != 17 ? new DERUnknownTag(true, i2, definiteLengthInputStream.toByteArray()) : DERFactory.createSet(buildDEREncodableVector(definiteLengthInputStream), false) : this.lazyEvaluate ? new LazyDERSequence(definiteLengthInputStream.toByteArray()) : DERFactory.createSequence(buildDEREncodableVector(definiteLengthInputStream)) : new DERExternal(buildDEREncodableVector(definiteLengthInputStream)) : new BERConstructedOctetString(buildDEREncodableVector(definiteLengthInputStream).f7219v) : createPrimitiveDERObject(i2, definiteLengthInputStream.toByteArray());
    }

    public void readFully(byte[] bArr) {
        if (Streams.readFully(this, bArr) == bArr.length) {
            return;
        }
        throw new EOFException("EOF encountered in middle of object");
    }

    public int readLength() {
        return readLength(this, this.limit);
    }

    public DERObject readObject() {
        int read = read();
        if (read <= 0) {
            if (read == 0) {
                throw new IOException("unexpected end-of-contents marker");
            }
            return null;
        }
        int readTagNumber = readTagNumber(this, read);
        boolean z = (read & 32) != 0;
        int readLength = readLength();
        if (readLength >= 0) {
            try {
                return buildObject(read, readTagNumber, readLength);
            } catch (IllegalArgumentException e) {
                throw new ASN1Exception("corrupted stream detected", e);
            }
        } else if (!z) {
            throw new IOException("indefinite length primitive encoding encountered");
        } else {
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this, this.limit), this.limit);
            if ((read & 64) != 0) {
                return new BERApplicationSpecificParser(readTagNumber, aSN1StreamParser).getLoadedObject();
            }
            if ((read & 128) != 0) {
                return new BERTaggedObjectParser(true, readTagNumber, aSN1StreamParser).getLoadedObject();
            }
            if (readTagNumber == 4) {
                return new BEROctetStringParser(aSN1StreamParser).getLoadedObject();
            }
            if (readTagNumber == 8) {
                return new DERExternalParser(aSN1StreamParser).getLoadedObject();
            }
            if (readTagNumber == 16) {
                return new BERSequenceParser(aSN1StreamParser).getLoadedObject();
            }
            if (readTagNumber != 17) {
                throw new IOException("unknown BER object encountered");
            }
            return new BERSetParser(aSN1StreamParser).getLoadedObject();
        }
    }
}
