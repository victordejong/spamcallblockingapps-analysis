package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/SqlDateTypeAdapter.class */
public final class SqlDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b */
    public static final TypeAdapterFactory f12100b = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            return typeToken.m8160c() == Date.class ? new SqlDateTypeAdapter() : null;
        }
    };

    /* renamed from: a */
    private final DateFormat f12101a = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: e */
    public Date mo8175b(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return new Date(this.f12101a.parse(jsonReader.mo8149X()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: f */
    public void mo8174d(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            jsonWriter.mo8106d0(date == null ? null : this.f12101a.format((java.util.Date) date));
        }
    }
}
