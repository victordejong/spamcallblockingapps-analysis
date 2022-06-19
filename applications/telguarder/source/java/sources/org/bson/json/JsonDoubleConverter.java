package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonDoubleConverter.class */
class JsonDoubleConverter implements Converter<Double> {
    public void convert(Double d, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeNumber(Double.toString(d.doubleValue()));
    }
}
