package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonSymbolConverter.class */
class JsonSymbolConverter implements Converter<String> {
    public void convert(String str, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$symbol", str);
        strictJsonWriter.writeEndObject();
    }
}
