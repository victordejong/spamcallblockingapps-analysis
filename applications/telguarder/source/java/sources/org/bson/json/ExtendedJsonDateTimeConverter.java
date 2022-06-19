package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonDateTimeConverter.class */
class ExtendedJsonDateTimeConverter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeStartObject("$date");
        strictJsonWriter.writeString("$numberLong", Long.toString(l.longValue()));
        strictJsonWriter.writeEndObject();
        strictJsonWriter.writeEndObject();
    }
}
