package org.bson.json;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellInt64Converter.class */
class ShellInt64Converter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        if (l.longValue() < -2147483648L || l.longValue() > 2147483647L) {
            strictJsonWriter.writeRaw(String.format("NumberLong(\"%d\")", l));
        } else {
            strictJsonWriter.writeRaw(String.format("NumberLong(%d)", l));
        }
    }
}
