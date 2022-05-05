package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
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
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/DateTypeAdapter.class */
public final class DateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b */
    public static final TypeAdapterFactory f12062b = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            return typeToken.m8160c() == Date.class ? new DateTypeAdapter() : null;
        }
    };

    /* renamed from: a */
    private final List<DateFormat> f12063a;

    public DateTypeAdapter() {
        ArrayList arrayList = new ArrayList();
        this.f12063a = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f12063a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (JavaVersion.m8324e()) {
            this.f12063a.add(PreJava9DateFormatProvider.m8281c(2, 2));
        }
    }

    /* renamed from: e */
    private Date m8269e(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f12063a) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return ISO8601Utils.m8169c(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* renamed from: f */
    public Date mo8175b(JsonReader jsonReader) throws IOException {
        if (jsonReader.mo8147Z() != JsonToken.NULL) {
            return m8269e(jsonReader.mo8149X());
        }
        jsonReader.mo8151V();
        return null;
    }

    /* renamed from: g */
    public void mo8174d(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                jsonWriter.mo8094t();
            } else {
                jsonWriter.mo8106d0(this.f12063a.get(0).format(date));
            }
        }
    }
}
