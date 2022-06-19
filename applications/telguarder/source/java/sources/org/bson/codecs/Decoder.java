package org.bson.codecs;

import org.bson.BsonReader;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/Decoder.class */
public interface Decoder<T> {
    T decode(BsonReader bsonReader, DecoderContext decoderContext);
}
