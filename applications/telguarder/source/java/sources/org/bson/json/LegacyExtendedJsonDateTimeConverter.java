package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/LegacyExtendedJsonDateTimeConverter.class */
class LegacyExtendedJsonDateTimeConverter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeNumber("$date", Long.toString(l.longValue()));
        strictJsonWriter.writeEndObject();
    }
}
