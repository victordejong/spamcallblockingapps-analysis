package org.bson.codecs;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/ObjectIdCodec.class */
public class ObjectIdCodec implements Codec<ObjectId> {
    @Override // org.bson.codecs.Decoder
    public ObjectId decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return bsonReader.readObjectId();
    }

    public void encode(BsonWriter bsonWriter, ObjectId objectId, EncoderContext encoderContext) {
        bsonWriter.writeObjectId(objectId);
    }

    @Override // org.bson.codecs.Encoder
    public Class<ObjectId> getEncoderClass() {
        return ObjectId.class;
    }
}
