package org.bson.json;

import org.bson.BsonMinKey;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonMinKeyConverter.class */
class ExtendedJsonMinKeyConverter implements Converter<BsonMinKey> {
    public void convert(BsonMinKey bsonMinKey, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeNumber("$minKey", "1");
        strictJsonWriter.writeEndObject();
    }
}
