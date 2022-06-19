package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonJavaScriptConverter.class */
class JsonJavaScriptConverter implements Converter<String> {
    public void convert(String str, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$code", str);
        strictJsonWriter.writeEndObject();
    }
}
