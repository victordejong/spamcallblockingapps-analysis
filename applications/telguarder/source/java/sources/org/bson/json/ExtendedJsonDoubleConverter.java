package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonDoubleConverter.class */
class ExtendedJsonDoubleConverter implements Converter<Double> {
    public void convert(Double d, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeName("$numberDouble");
        strictJsonWriter.writeString(Double.toString(d.doubleValue()));
        strictJsonWriter.writeEndObject();
    }
}
