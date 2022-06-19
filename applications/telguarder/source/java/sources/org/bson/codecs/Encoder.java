package org.bson.codecs;

import org.bson.BsonWriter;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/Encoder.class */
public interface Encoder<T> {
    void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext);

    Class<T> getEncoderClass();
}
