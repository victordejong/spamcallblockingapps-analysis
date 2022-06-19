package org.bson.json;

import org.bson.BsonMinKey;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellMinKeyConverter.class */
class ShellMinKeyConverter implements Converter<BsonMinKey> {
    public void convert(BsonMinKey bsonMinKey, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw("MinKey");
    }
}
