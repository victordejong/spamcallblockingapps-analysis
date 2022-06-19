package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1StreamParser.class */
public class ASN1StreamParser {
    private final InputStream _in;
    private final int _limit;

    public ASN1StreamParser(InputStream inputStream) {
        this(inputStream, ASN1InputStream.findLimit(inputStream));
    }

    public ASN1StreamParser(InputStream inputStream, int i) {
        this._in = inputStream;
        this._limit = i;
    }

    public ASN1StreamParser(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    private void set00Check(boolean z) {
        InputStream inputStream = this._in;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) inputStream).setEofOn00(z);
        }
    }

    public DEREncodable readImplicit(boolean z, int i) {
        InputStream inputStream = this._in;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            if (!z) {
                throw new IOException("indefinite length primitive encoding encountered");
            }
            return readIndef(i);
        }
        if (z) {
            if (i == 4) {
                return new BEROctetStringParser(this);
            }
            if (i == 16) {
                return new DERSequenceParser(this);
            }
            if (i == 17) {
                return new DERSetParser(this);
            }
        } else if (i == 4) {
            return new DEROctetStringParser((DefiniteLengthInputStream) inputStream);
        } else {
            if (i == 16) {
                throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
            }
            if (i == 17) {
                throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
            }
        }
        throw new RuntimeException("implicit tagging not implemented");
    }

    public DEREncodable readIndef(int i) {
        if (i != 4) {
            if (i == 8) {
                return new DERExternalParser(this);
            }
            if (i == 16) {
                return new BERSequenceParser(this);
            }
            if (i == 17) {
                return new BERSetParser(this);
            }
            throw new ASN1Exception("unknown BER object encountered: 0x" + Integer.toHexString(i));
        }
        return new BEROctetStringParser(this);
    }

    public DEREncodable readObject() {
        int read = this._in.read();
        if (read == -1) {
            return null;
        }
        boolean z = false;
        set00Check(false);
        int readTagNumber = ASN1InputStream.readTagNumber(this._in, read);
        if ((read & 32) != 0) {
            z = true;
        }
        int readLength = ASN1InputStream.readLength(this._in, this._limit);
        if (readLength < 0) {
            if (!z) {
                throw new IOException("indefinite length primitive encoding encountered");
            }
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this._in, this._limit), this._limit);
            return (read & 64) != 0 ? new BERApplicationSpecificParser(readTagNumber, aSN1StreamParser) : (read & 128) != 0 ? new BERTaggedObjectParser(true, readTagNumber, aSN1StreamParser) : aSN1StreamParser.readIndef(readTagNumber);
        }
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this._in, readLength);
        if ((read & 64) != 0) {
            return new DERApplicationSpecific(z, readTagNumber, definiteLengthInputStream.toByteArray());
        }
        if ((read & 128) != 0) {
            return new BERTaggedObjectParser(z, readTagNumber, new ASN1StreamParser(definiteLengthInputStream));
        }
        if (z) {
            return readTagNumber != 4 ? readTagNumber != 8 ? readTagNumber != 16 ? readTagNumber != 17 ? new DERUnknownTag(true, readTagNumber, definiteLengthInputStream.toByteArray()) : new DERSetParser(new ASN1StreamParser(definiteLengthInputStream)) : new DERSequenceParser(new ASN1StreamParser(definiteLengthInputStream)) : new DERExternalParser(new ASN1StreamParser(definiteLengthInputStream)) : new BEROctetStringParser(new ASN1StreamParser(definiteLengthInputStream));
        } else if (readTagNumber == 4) {
            return new DEROctetStringParser(definiteLengthInputStream);
        } else {
            try {
                return ASN1InputStream.createPrimitiveDERObject(readTagNumber, definiteLengthInputStream.toByteArray());
            } catch (IllegalArgumentException e) {
                throw new ASN1Exception("corrupted stream detected", e);
            }
        }
    }

    public DERObject readTaggedObject(boolean z, int i) {
        if (!z) {
            return new DERTaggedObject(false, i, new DEROctetString(((DefiniteLengthInputStream) this._in).toByteArray()));
        }
        ASN1EncodableVector readVector = readVector();
        if (this._in instanceof IndefiniteLengthInputStream) {
            return readVector.size() == 1 ? new BERTaggedObject(true, i, readVector.get(0)) : new BERTaggedObject(false, i, BERFactory.createSequence(readVector));
        }
        return readVector.size() == 1 ? new DERTaggedObject(true, i, readVector.get(0)) : new DERTaggedObject(false, i, DERFactory.createSequence(readVector));
    }

    public ASN1EncodableVector readVector() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        while (true) {
            DEREncodable readObject = readObject();
            if (readObject != null) {
                aSN1EncodableVector.add(readObject instanceof InMemoryRepresentable ? ((InMemoryRepresentable) readObject).getLoadedObject() : readObject.getDERObject());
            } else {
                return aSN1EncodableVector;
            }
        }
    }
}
