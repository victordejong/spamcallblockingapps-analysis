package org.bson.json;

import org.bson.types.ObjectId;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonObjectIdConverter.class */
class ExtendedJsonObjectIdConverter implements Converter<ObjectId> {
    public void convert(ObjectId objectId, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$oid", objectId.toHexString());
        strictJsonWriter.writeEndObject();
    }
}
