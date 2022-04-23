package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Calendar;
@JacksonStdImpl
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/CalendarSerializer.class */
public class CalendarSerializer extends DateTimeSerializerBase<Calendar> {
    public static final CalendarSerializer instance = new CalendarSerializer();

    public CalendarSerializer() {
        this(null, null);
    }

    public CalendarSerializer(Boolean bool, DateFormat dateFormat) {
        super(Calendar.class, bool, dateFormat);
    }

    public long _timestamp(Calendar calendar) {
        return calendar == null ? 0L : calendar.getTimeInMillis();
    }

    public void serialize(Calendar calendar, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (_asTimestamp(serializerProvider)) {
            jsonGenerator.writeNumber(_timestamp(calendar));
            return;
        }
        DateFormat dateFormat = this._customFormat;
        if (dateFormat != null) {
            synchronized (dateFormat) {
                jsonGenerator.writeString(this._customFormat.format(calendar.getTime()));
            }
            return;
        }
        serializerProvider.defaultSerializeDateValue(calendar.getTime(), jsonGenerator);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    /* renamed from: withFormat */
    public DateTimeSerializerBase<Calendar> withFormat2(Boolean bool, DateFormat dateFormat) {
        return new CalendarSerializer(bool, dateFormat);
    }
}
