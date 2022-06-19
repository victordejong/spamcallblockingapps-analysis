package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.google.gson.internal.bind.h */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/h.class */
public final class C16007h extends AbstractC16088j<Time> {

    /* renamed from: a */
    public static final AbstractC16090k f56698a = new AbstractC16090k() { // from class: com.google.gson.internal.bind.h.1
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a.getRawType() == Time.class) {
                return new C16007h();
            }
            return null;
        }
    };

    /* renamed from: b */
    private final DateFormat f56699b = new SimpleDateFormat("hh:mm:ss a");

    /* renamed from: a */
    public Time read(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new Time(this.f56699b.parse(jsonReader.nextString()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Time time) throws IOException {
        synchronized (this) {
            jsonWriter.value(time == null ? null : this.f56699b.format((Date) time));
        }
    }
}
