package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonStringConverter.class */
class JsonStringConverter implements Converter<String> {
    public void convert(String str, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeString(str);
    }
}
