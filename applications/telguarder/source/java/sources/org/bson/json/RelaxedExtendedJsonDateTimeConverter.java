package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/RelaxedExtendedJsonDateTimeConverter.class */
class RelaxedExtendedJsonDateTimeConverter implements Converter<Long> {
    private static final Converter<Long> FALLBACK_CONVERTER = new ExtendedJsonDateTimeConverter();
    private static final long LAST_MS_OF_YEAR_9999 = 253402300799999L;

    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        if (l.longValue() < 0 || l.longValue() > 253402300799999L) {
            FALLBACK_CONVERTER.convert(l, strictJsonWriter);
            return;
        }
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$date", DateTimeFormatter.format(l.longValue()));
        strictJsonWriter.writeEndObject();
    }
}
