package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonInt64Converter.class */
class ExtendedJsonInt64Converter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeName("$numberLong");
        strictJsonWriter.writeString(Long.toString(l.longValue()));
        strictJsonWriter.writeEndObject();
    }
}
