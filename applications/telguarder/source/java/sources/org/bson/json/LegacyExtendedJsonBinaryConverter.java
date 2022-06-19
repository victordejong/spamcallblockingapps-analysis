package org.bson.json;

import org.bson.BsonBinary;
import org.bson.internal.Base64;
/* loaded from: classes3-dex2jar.jar:org/bson/json/LegacyExtendedJsonBinaryConverter.class */
class LegacyExtendedJsonBinaryConverter implements Converter<BsonBinary> {
    public void convert(BsonBinary bsonBinary, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$binary", Base64.encode(bsonBinary.getData()));
        strictJsonWriter.writeString("$type", String.format("%02X", Byte.valueOf(bsonBinary.getType())));
        strictJsonWriter.writeEndObject();
    }
}
