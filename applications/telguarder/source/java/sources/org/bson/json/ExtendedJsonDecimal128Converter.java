package org.bson.json;

import org.bson.types.Decimal128;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonDecimal128Converter.class */
class ExtendedJsonDecimal128Converter implements Converter<Decimal128> {
    public void convert(Decimal128 decimal128, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeName("$numberDecimal");
        strictJsonWriter.writeString(decimal128.toString());
        strictJsonWriter.writeEndObject();
    }
}
