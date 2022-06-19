package org.bson.json;

import org.bson.BsonTimestamp;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellTimestampConverter.class */
class ShellTimestampConverter implements Converter<BsonTimestamp> {
    public void convert(BsonTimestamp bsonTimestamp, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw(String.format("Timestamp(%d, %d)", Integer.valueOf(bsonTimestamp.getTime()), Integer.valueOf(bsonTimestamp.getInc())));
    }
}
