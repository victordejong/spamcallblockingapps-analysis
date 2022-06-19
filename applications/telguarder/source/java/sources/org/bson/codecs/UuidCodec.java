package org.bson.codecs;

import java.util.UUID;
import org.bson.BSONException;
import org.bson.BsonBinary;
import org.bson.BsonBinarySubType;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.UuidRepresentation;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecConfigurationException;
import org.bson.internal.UuidHelper;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/UuidCodec.class */
public class UuidCodec implements Codec<UUID> {
    private final UuidRepresentation uuidRepresentation;

    public UuidCodec() {
        this.uuidRepresentation = UuidRepresentation.JAVA_LEGACY;
    }

    public UuidCodec(UuidRepresentation uuidRepresentation) {
        Assertions.notNull("uuidRepresentation", uuidRepresentation);
        this.uuidRepresentation = uuidRepresentation;
    }

    @Override // org.bson.codecs.Decoder
    public UUID decode(BsonReader bsonReader, DecoderContext decoderContext) {
        byte peekBinarySubType = bsonReader.peekBinarySubType();
        if (peekBinarySubType == BsonBinarySubType.UUID_LEGACY.getValue() || peekBinarySubType == BsonBinarySubType.UUID_STANDARD.getValue()) {
            return UuidHelper.decodeBinaryToUuid(bsonReader.readBinaryData().getData(), peekBinarySubType, this.uuidRepresentation);
        }
        throw new BSONException("Unexpected BsonBinarySubType");
    }

    public void encode(BsonWriter bsonWriter, UUID uuid, EncoderContext encoderContext) {
        if (this.uuidRepresentation != UuidRepresentation.UNSPECIFIED) {
            byte[] encodeUuidToBinary = UuidHelper.encodeUuidToBinary(uuid, this.uuidRepresentation);
            if (this.uuidRepresentation == UuidRepresentation.STANDARD) {
                bsonWriter.writeBinaryData(new BsonBinary(BsonBinarySubType.UUID_STANDARD, encodeUuidToBinary));
                return;
            } else {
                bsonWriter.writeBinaryData(new BsonBinary(BsonBinarySubType.UUID_LEGACY, encodeUuidToBinary));
                return;
            }
        }
        throw new CodecConfigurationException("The uuidRepresentation has not been specified, so the UUID cannot be encoded.");
    }

    @Override // org.bson.codecs.Encoder
    public Class<UUID> getEncoderClass() {
        return UUID.class;
    }

    public UuidRepresentation getUuidRepresentation() {
        return this.uuidRepresentation;
    }

    public String toString() {
        return "UuidCodec{uuidRepresentation=" + this.uuidRepresentation + '}';
    }
}
