package org.bson.json;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellDateTimeConverter.class */
class ShellDateTimeConverter implements Converter<Long> {
    public void convert(Long l, StrictJsonWriter strictJsonWriter) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        if (l.longValue() < -59014396800000L || l.longValue() > 253399536000000L) {
            strictJsonWriter.writeRaw(String.format("new Date(%d)", l));
        } else {
            strictJsonWriter.writeRaw(String.format("ISODate(\"%s\")", simpleDateFormat.format(new Date(l.longValue()))));
        }
    }
}
