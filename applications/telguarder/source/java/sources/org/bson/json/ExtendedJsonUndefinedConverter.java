package org.bson.json;

import org.bson.BsonUndefined;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonUndefinedConverter.class */
class ExtendedJsonUndefinedConverter implements Converter<BsonUndefined> {
    public void convert(BsonUndefined bsonUndefined, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeBoolean("$undefined", true);
        strictJsonWriter.writeEndObject();
    }
}
