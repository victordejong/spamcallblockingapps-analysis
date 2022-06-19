package org.bson.json;

import org.bson.BsonTimestamp;
import org.bson.internal.UnsignedLongs;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonTimestampConverter.class */
class ExtendedJsonTimestampConverter implements Converter<BsonTimestamp> {
    private long toUnsignedLong(int i) {
        return i & 4294967295L;
    }

    public void convert(BsonTimestamp bsonTimestamp, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeStartObject("$timestamp");
        strictJsonWriter.writeNumber("t", UnsignedLongs.toString(toUnsignedLong(bsonTimestamp.getTime())));
        strictJsonWriter.writeNumber("i", UnsignedLongs.toString(toUnsignedLong(bsonTimestamp.getInc())));
        strictJsonWriter.writeEndObject();
        strictJsonWriter.writeEndObject();
    }
}
