package com.google.gson;

import com.google.gson.internal.e;
import com.google.gson.internal.i;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/gson/a.class */
final class a extends j<Date> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<? extends Date> f32666a;

    /* renamed from: b  reason: collision with root package name */
    private final List<DateFormat> f32667b;

    public a(int i, int i2) {
        this(Date.class, i, i2);
    }

    a(Class<? extends Date> cls) {
        ArrayList arrayList = new ArrayList();
        this.f32667b = arrayList;
        this.f32666a = a(cls);
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (e.b()) {
            arrayList.add(i.a(2, 2));
        }
    }

    a(Class<? extends Date> cls, int i) {
        String str;
        ArrayList arrayList = new ArrayList();
        this.f32667b = arrayList;
        this.f32666a = a(cls);
        arrayList.add(DateFormat.getDateInstance(i, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateInstance(i));
        }
        if (e.b()) {
            if (i == 0) {
                str = "EEEE, MMMM d, y";
            } else if (i == 1) {
                str = "MMMM d, y";
            } else if (i == 2) {
                str = "MMM d, y";
            } else if (i == 3) {
                str = "M/d/yy";
            } else {
                throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
            }
            arrayList.add(new SimpleDateFormat(str, Locale.US));
        }
    }

    public a(Class<? extends Date> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f32667b = arrayList;
        this.f32666a = a(cls);
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (e.b()) {
            arrayList.add(i.a(i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f32667b = arrayList;
        this.f32666a = a(cls);
        arrayList.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(new SimpleDateFormat(str));
        }
    }

    private static Class<? extends Date> a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    private Date a(String str) {
        synchronized (this.f32667b) {
            for (DateFormat dateFormat : this.f32667b) {
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

    @Override // com.google.gson.j
    public final /* synthetic */ Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date a2 = a(jsonReader.nextString());
        Class<? extends Date> cls = this.f32666a;
        if (cls == Date.class) {
            return a2;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a2.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a2.getTime());
        }
        throw new AssertionError();
    }

    public final String toString() {
        DateFormat dateFormat = this.f32667b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.j
    public final /* synthetic */ void write(JsonWriter jsonWriter, Date date) throws IOException {
        Date date2 = date;
        if (date2 == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.f32667b) {
            jsonWriter.value(this.f32667b.get(0).format(date2));
        }
    }
}
