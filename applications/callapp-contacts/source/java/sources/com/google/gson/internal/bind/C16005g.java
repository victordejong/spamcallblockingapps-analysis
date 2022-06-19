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
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* renamed from: com.google.gson.internal.bind.g */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/g.class */
public final class C16005g extends AbstractC16088j<Date> {

    /* renamed from: a */
    public static final AbstractC16090k f56696a = new AbstractC16090k() { // from class: com.google.gson.internal.bind.g.1
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a.getRawType() == Date.class) {
                return new C16005g();
            }
            return null;
        }
    };

    /* renamed from: b */
    private final DateFormat f56697b = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: a */
    public Date read(JsonReader jsonReader) throws IOException {
        synchronized (this) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new Date(this.f56697b.parse(jsonReader.nextString()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
    }

    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            jsonWriter.value(date == null ? null : this.f56697b.format((java.util.Date) date));
        }
    }
}
