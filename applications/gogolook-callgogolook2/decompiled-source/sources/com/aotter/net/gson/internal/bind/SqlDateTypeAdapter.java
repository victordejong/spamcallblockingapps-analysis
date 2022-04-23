package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonSyntaxException;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.JsonWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/SqlDateTypeAdapter.class */
public final class SqlDateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // com.aotter.net.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            return typeToken.getRawType() == Date.class ? new SqlDateTypeAdapter() : null;
        }
    };
    public final DateFormat format = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.aotter.net.gson.TypeAdapter
    public Date read(JsonReader jsonReader) {
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new Date(this.format.parse(jsonReader.nextString()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    public void write(JsonWriter jsonWriter, Date date) {
        synchronized (this) {
            jsonWriter.value(date == null ? null : this.format.format((java.util.Date) date));
        }
    }
}
