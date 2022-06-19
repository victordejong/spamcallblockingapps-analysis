package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonInt32Converter.class */
class JsonInt32Converter implements Converter<Integer> {
    public void convert(Integer num, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeNumber(Integer.toString(num.intValue()));
    }
}
