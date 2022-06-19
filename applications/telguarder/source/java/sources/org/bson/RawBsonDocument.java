package org.bson;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.bson.assertions.Assertions;
import org.bson.codecs.BsonDocumentCodec;
import org.bson.codecs.Codec;
import org.bson.codecs.Decoder;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.RawBsonDocumentCodec;
import org.bson.json.JsonReader;
import org.bson.json.JsonWriter;
import org.bson.json.JsonWriterSettings;
import org.bson.p028io.BasicOutputBuffer;
import org.bson.p028io.ByteBufferBsonInput;
/* loaded from: classes-dex2jar.jar:org/bson/RawBsonDocument.class */
public final class RawBsonDocument extends BsonDocument {
    private static final int MIN_BSON_DOCUMENT_SIZE = 5;
    private static final long serialVersionUID = 1;
    private final byte[] bytes;
    private final int length;
    private final int offset;

    /* loaded from: classes-dex2jar.jar:org/bson/RawBsonDocument$SerializationProxy.class */
    private static class SerializationProxy implements Serializable {
        private static final long serialVersionUID = 1;
        private final byte[] bytes;

        SerializationProxy(byte[] bArr, int i, int i2) {
            if (bArr.length == i2) {
                this.bytes = bArr;
                return;
            }
            byte[] bArr2 = new byte[i2];
            this.bytes = bArr2;
            System.arraycopy(bArr, i, bArr2, 0, i2);
        }

        private Object readResolve() {
            return new RawBsonDocument(this.bytes);
        }
    }

    public <T> RawBsonDocument(T t, Codec<T> codec) {
        Assertions.notNull("document", t);
        Assertions.notNull("codec", codec);
        BasicOutputBuffer basicOutputBuffer = new BasicOutputBuffer();
        BsonBinaryWriter bsonBinaryWriter = new BsonBinaryWriter(basicOutputBuffer);
        try {
            codec.encode(bsonBinaryWriter, t, EncoderContext.builder().build());
            this.bytes = basicOutputBuffer.getInternalBuffer();
            this.offset = 0;
            this.length = basicOutputBuffer.getPosition();
        } finally {
            bsonBinaryWriter.close();
        }
    }

    public RawBsonDocument(byte[] bArr) {
        this((byte[]) Assertions.notNull("bytes", bArr), 0, bArr.length);
    }

    public RawBsonDocument(byte[] bArr, int i, int i2) {
        Assertions.notNull("bytes", bArr);
        Assertions.isTrueArgument("offset >= 0", i >= 0);
        Assertions.isTrueArgument("offset < bytes.length", i < bArr.length);
        Assertions.isTrueArgument("length <= bytes.length - offset", i2 <= bArr.length - i);
        Assertions.isTrueArgument("length >= 5", i2 >= 5);
        this.bytes = bArr;
        this.offset = i;
        this.length = i2;
    }

    private BsonBinaryReader createReader() {
        return new BsonBinaryReader(new ByteBufferBsonInput(getByteBuffer()));
    }

    public static RawBsonDocument parse(String str) {
        Assertions.notNull("json", str);
        return new RawBsonDocumentCodec().decode((BsonReader) new JsonReader(str), DecoderContext.builder().build());
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Proxy required");
    }

    private BsonDocument toBsonDocument() {
        BsonBinaryReader createReader = createReader();
        try {
            return new BsonDocumentCodec().decode((BsonReader) createReader, DecoderContext.builder().build());
        } finally {
            createReader.close();
        }
    }

    private Object writeReplace() {
        return new SerializationProxy(this.bytes, this.offset, this.length);
    }

    @Override // org.bson.BsonDocument
    public BsonDocument append(String str, BsonValue bsonValue) {
        throw new UnsupportedOperationException("RawBsonDocument instances are immutable");
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("RawBsonDocument instances are immutable");
    }

    @Override // org.bson.BsonDocument
    public BsonDocument clone() {
        return new RawBsonDocument((byte[]) this.bytes.clone(), this.offset, this.length);
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BsonDocument, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj != null) {
            BsonBinaryReader createReader = createReader();
            try {
                createReader.readStartDocument();
                while (createReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                    if (createReader.readName().equals(obj)) {
                        createReader.close();
                        return true;
                    }
                    createReader.skipValue();
                }
                createReader.readEndDocument();
                createReader.close();
                return false;
            } catch (Throwable th) {
                createReader.close();
                throw th;
            }
        }
        throw new IllegalArgumentException("key can not be null");
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BsonDocument, java.util.Map
    public boolean containsValue(Object obj) {
        BsonBinaryReader createReader = createReader();
        try {
            createReader.readStartDocument();
            do {
                if (createReader.readBsonType() == BsonType.END_OF_DOCUMENT) {
                    createReader.readEndDocument();
                    createReader.close();
                    return false;
                }
                createReader.skipName();
            } while (!RawBsonValueHelper.decode(this.bytes, createReader).equals(obj));
            createReader.close();
            return true;
        } catch (Throwable th) {
            createReader.close();
            throw th;
        }
    }

    public <T> T decode(Codec<T> codec) {
        return (T) decode((Decoder<Object>) codec);
    }

    public <T> T decode(Decoder<T> decoder) {
        BsonBinaryReader createReader = createReader();
        try {
            return decoder.decode(createReader, DecoderContext.builder().build());
        } finally {
            createReader.close();
        }
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Set<Map.Entry<String, BsonValue>> entrySet() {
        return toBsonDocument().entrySet();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public boolean equals(Object obj) {
        return toBsonDocument().equals(obj);
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public BsonValue get(Object obj) {
        Assertions.notNull(SDKConstants.PARAM_KEY, obj);
        BsonBinaryReader createReader = createReader();
        try {
            createReader.readStartDocument();
            while (createReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                if (createReader.readName().equals(obj)) {
                    return RawBsonValueHelper.decode(this.bytes, createReader);
                }
                createReader.skipValue();
            }
            createReader.readEndDocument();
            createReader.close();
            return null;
        } finally {
            createReader.close();
        }
    }

    public ByteBuf getByteBuffer() {
        ByteBuffer wrap = ByteBuffer.wrap(this.bytes, this.offset, this.length);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return new ByteBufNIO(wrap);
    }

    @Override // org.bson.BsonDocument
    public String getFirstKey() {
        BsonBinaryReader createReader = createReader();
        try {
            createReader.readStartDocument();
            try {
                return createReader.readName();
            } catch (BsonInvalidOperationException e) {
                throw new NoSuchElementException();
            }
        } finally {
            createReader.close();
        }
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public int hashCode() {
        return toBsonDocument().hashCode();
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BsonDocument, java.util.Map
    public boolean isEmpty() {
        BsonBinaryReader createReader = createReader();
        try {
            createReader.readStartDocument();
            if (createReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                createReader.close();
                return false;
            }
            createReader.readEndDocument();
            createReader.close();
            return true;
        } catch (Throwable th) {
            createReader.close();
            throw th;
        }
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Set<String> keySet() {
        return toBsonDocument().keySet();
    }

    @Override // org.bson.BsonDocument
    public BsonValue put(String str, BsonValue bsonValue) {
        throw new UnsupportedOperationException("RawBsonDocument instances are immutable");
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public void putAll(Map<? extends String, ? extends BsonValue> map) {
        throw new UnsupportedOperationException("RawBsonDocument instances are immutable");
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public BsonValue remove(Object obj) {
        throw new UnsupportedOperationException("RawBsonDocument instances are immutable");
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BsonDocument, java.util.Map
    public int size() {
        BsonBinaryReader createReader = createReader();
        try {
            createReader.readStartDocument();
            int i = 0;
            while (createReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                i++;
                createReader.readName();
                createReader.skipValue();
            }
            createReader.readEndDocument();
            createReader.close();
            return i;
        } catch (Throwable th) {
            createReader.close();
            throw th;
        }
    }

    @Override // org.bson.BsonDocument
    public String toJson() {
        return toJson(new JsonWriterSettings());
    }

    @Override // org.bson.BsonDocument
    public String toJson(JsonWriterSettings jsonWriterSettings) {
        StringWriter stringWriter = new StringWriter();
        new RawBsonDocumentCodec().encode((BsonWriter) new JsonWriter(stringWriter, jsonWriterSettings), this, EncoderContext.builder().build());
        return stringWriter.toString();
    }

    @Override // org.bson.BsonDocument, java.util.Map
    public Collection<BsonValue> values() {
        return toBsonDocument().values();
    }
}
