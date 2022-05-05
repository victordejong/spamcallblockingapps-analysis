package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonSyntaxException;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.internal.bind.util.ISO8601Utils;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.JsonWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/DateTypeAdapter.class */
public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.DateTypeAdapter.1
        @Override // com.aotter.net.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            return typeToken.getRawType() == Date.class ? new DateTypeAdapter() : null;
        }
    };
    public final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    public final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);

    private Date deserializeToDate(String str) {
        Date parse;
        synchronized (this) {
            try {
                parse = this.localFormat.parse(str);
            } catch (ParseException e) {
                try {
                    return this.enUsFormat.parse(str);
                } catch (ParseException e2) {
                    try {
                        return ISO8601Utils.parse(str, new ParsePosition(0));
                    } catch (ParseException e3) {
                        throw new JsonSyntaxException(str, e3);
                    }
                }
            }
        }
        return parse;
    }

    @Override // com.aotter.net.gson.TypeAdapter
    public Date read(JsonReader jsonReader) {
        if (jsonReader.peek() != JsonToken.NULL) {
            return deserializeToDate(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    public void write(JsonWriter jsonWriter, Date date) {
        synchronized (this) {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.enUsFormat.format(date));
            }
        }
    }
}
