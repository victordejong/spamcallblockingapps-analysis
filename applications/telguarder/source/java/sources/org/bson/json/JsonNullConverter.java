package org.bson.json;

import org.bson.BsonNull;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonNullConverter.class */
class JsonNullConverter implements Converter<BsonNull> {
    public void convert(BsonNull bsonNull, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeNull();
    }
}
