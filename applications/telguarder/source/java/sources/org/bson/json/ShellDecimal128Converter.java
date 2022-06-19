package org.bson.json;

import org.bson.types.Decimal128;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellDecimal128Converter.class */
class ShellDecimal128Converter implements Converter<Decimal128> {
    public void convert(Decimal128 decimal128, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw(String.format("NumberDecimal(\"%s\")", decimal128.toString()));
    }
}
