package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/DateTypeAdapter.class */
public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            return typeToken.getRawType() == Date.class ? new DateTypeAdapter() : null;
        }
    };
    private final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);

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

    @Override // com.google.gson.TypeAdapter
    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return deserializeToDate(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.enUsFormat.format(date));
            }
        }
    }
}
