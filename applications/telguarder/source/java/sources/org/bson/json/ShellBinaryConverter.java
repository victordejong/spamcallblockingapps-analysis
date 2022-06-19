package org.bson.json;

import org.bson.BsonBinary;
import org.bson.internal.Base64;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellBinaryConverter.class */
class ShellBinaryConverter implements Converter<BsonBinary> {
    public void convert(BsonBinary bsonBinary, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw(String.format("new BinData(%s, \"%s\")", Integer.toString(bsonBinary.getType() & 255), Base64.encode(bsonBinary.getData())));
    }
}
