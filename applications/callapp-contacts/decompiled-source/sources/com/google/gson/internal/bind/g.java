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
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/g.class */
public final class g extends j<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final k f32729a = new k() { // from class: com.google.gson.internal.bind.g.1
        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new g();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f32730b = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Date read(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new Date(this.f32730b.parse(jsonReader.nextString()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            jsonWriter.value(date == null ? null : this.f32730b.format((java.util.Date) date));
        }
    }
}
