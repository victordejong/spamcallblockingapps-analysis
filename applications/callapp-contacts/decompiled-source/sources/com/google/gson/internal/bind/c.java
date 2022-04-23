package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.internal.e;
import com.google.gson.internal.i;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/c.class */
public final class c extends j<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final k f32708a = new k() { // from class: com.google.gson.internal.bind.c.1
        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, a<T> aVar) {
            if (aVar.getRawType() == Date.class) {
                return new c();
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final List<DateFormat> f32709b;

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f32709b = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (e.b()) {
            arrayList.add(i.a(2, 2));
        }
    }

    private Date a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f32709b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return com.google.gson.internal.bind.a.a.a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.f32709b.get(0).format(date));
            }
        }
    }

    @Override // com.google.gson.j
    public final /* synthetic */ Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return a(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }
}
