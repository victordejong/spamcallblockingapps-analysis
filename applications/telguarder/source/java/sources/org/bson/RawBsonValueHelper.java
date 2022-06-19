package org.bson;

import org.bson.codecs.BsonValueCodecProvider;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.p028io.BsonInputMark;
/* loaded from: classes-dex2jar.jar:org/bson/RawBsonValueHelper.class */
public final class RawBsonValueHelper {
    private static final CodecRegistry REGISTRY = CodecRegistries.fromProviders(new BsonValueCodecProvider());

    private RawBsonValueHelper() {
    }

    public static BsonValue decode(byte[] bArr, BsonBinaryReader bsonBinaryReader) {
        if (bsonBinaryReader.getCurrentBsonType() == BsonType.DOCUMENT || bsonBinaryReader.getCurrentBsonType() == BsonType.ARRAY) {
            int position = bsonBinaryReader.getBsonInput().getPosition();
            BsonInputMark mark = bsonBinaryReader.getBsonInput().getMark(4);
            int readInt32 = bsonBinaryReader.getBsonInput().readInt32();
            mark.reset();
            bsonBinaryReader.skipValue();
            return bsonBinaryReader.getCurrentBsonType() == BsonType.DOCUMENT ? new RawBsonDocument(bArr, position, readInt32) : new RawBsonArray(bArr, position, readInt32);
        }
        return (BsonValue) REGISTRY.get(BsonValueCodecProvider.getClassForBsonType(bsonBinaryReader.getCurrentBsonType())).decode(bsonBinaryReader, DecoderContext.builder().build());
    }
}
