package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/h.class */
public final class h extends j<Time> {

    /* renamed from: a  reason: collision with root package name */
    public static final k f32731a = new k() { // from class: com.google.gson.internal.bind.h.1
        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, a<T> aVar) {
            if (aVar.getRawType() == Time.class) {
                return new h();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f32732b = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Time read(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new Time(this.f32732b.parse(jsonReader.nextString()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Time time) throws IOException {
        synchronized (this) {
            jsonWriter.value(time == null ? null : this.f32732b.format((Date) time));
        }
    }
}
