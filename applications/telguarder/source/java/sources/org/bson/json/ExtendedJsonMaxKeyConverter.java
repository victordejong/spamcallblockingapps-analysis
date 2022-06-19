package org.bson.json;

import org.bson.BsonMaxKey;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonMaxKeyConverter.class */
class ExtendedJsonMaxKeyConverter implements Converter<BsonMaxKey> {
    public void convert(BsonMaxKey bsonMaxKey, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeNumber("$maxKey", "1");
        strictJsonWriter.writeEndObject();
    }
}
