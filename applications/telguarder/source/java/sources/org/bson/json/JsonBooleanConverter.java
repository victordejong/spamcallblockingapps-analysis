package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonBooleanConverter.class */
class JsonBooleanConverter implements Converter<Boolean> {
    public void convert(Boolean bool, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeBoolean(bool.booleanValue());
    }
}
