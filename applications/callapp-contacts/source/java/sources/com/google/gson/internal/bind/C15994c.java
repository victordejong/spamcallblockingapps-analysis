package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.C16067e;
import com.google.gson.internal.C16078i;
import com.google.gson.internal.bind.p401a.C15991a;
import com.google.gson.p399a.C15950a;
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
/* renamed from: com.google.gson.internal.bind.c */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/c.class */
public final class C15994c extends AbstractC16088j<Date> {

    /* renamed from: a */
    public static final AbstractC16090k f56668a = new AbstractC16090k() { // from class: com.google.gson.internal.bind.c.1
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a.getRawType() == Date.class) {
                return new C15994c();
            }
            return null;
        }
    };

    /* renamed from: b */
    private final List<DateFormat> f56669b;

    public C15994c() {
        ArrayList arrayList = new ArrayList();
        this.f56669b = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C16067e.m7886b()) {
            arrayList.add(C16078i.m7872a(2, 2));
        }
    }

    /* renamed from: a */
    private Date m7927a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f56669b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C15991a.m7929a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* renamed from: a */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.f56669b.get(0).format(date));
            }
        }
    }

    @Override // com.google.gson.AbstractC16088j
    public final /* synthetic */ Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return m7927a(jsonReader.nextString());
    }
}
