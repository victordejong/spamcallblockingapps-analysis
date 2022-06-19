package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/RelaxedExtendedJsonInt64Converter.class */
class RelaxedExtendedJsonInt64Converter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeNumber(Long.toString(l.longValue()));
    }
}
