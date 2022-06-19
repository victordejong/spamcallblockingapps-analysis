package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonInt32Converter.class */
class ExtendedJsonInt32Converter implements Converter<Integer> {
    public void convert(Integer num, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeName("$numberInt");
        strictJsonWriter.writeString(Integer.toString(num.intValue()));
        strictJsonWriter.writeEndObject();
    }
}
