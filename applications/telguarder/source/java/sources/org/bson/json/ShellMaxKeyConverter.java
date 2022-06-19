package org.bson.json;

import org.bson.BsonMaxKey;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellMaxKeyConverter.class */
class ShellMaxKeyConverter implements Converter<BsonMaxKey> {
    public void convert(BsonMaxKey bsonMaxKey, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw("MaxKey");
    }
}
