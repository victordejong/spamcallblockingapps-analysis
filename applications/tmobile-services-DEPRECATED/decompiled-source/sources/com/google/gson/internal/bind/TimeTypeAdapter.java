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
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TimeTypeAdapter.class */
public final class TimeTypeAdapter extends TypeAdapter<Time> {

    /* renamed from: b */
    public static final TypeAdapterFactory f12102b = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TimeTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            return typeToken.m8160c() == Time.class ? new TimeTypeAdapter() : null;
        }
    };

    /* renamed from: a */
    private final DateFormat f12103a = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: e */
    public Time mo8175b(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return new Time(this.f12103a.parse(jsonReader.mo8149X()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: f */
    public void mo8174d(JsonWriter jsonWriter, Time time) throws IOException {
        synchronized (this) {
            jsonWriter.mo8106d0(time == null ? null : this.f12103a.format((Date) time));
        }
    }
}
