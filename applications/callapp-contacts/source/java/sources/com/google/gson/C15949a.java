package com.google.gson;

import com.google.gson.internal.C16067e;
import com.google.gson.internal.C16078i;
import com.google.gson.internal.bind.p401a.C15991a;
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
/* renamed from: com.google.gson.a */
/* loaded from: classes4-dex2jar.jar:com/google/gson/a.class */
final class C15949a extends AbstractC16088j<Date> {

    /* renamed from: a */
    private final Class<? extends Date> f56592a;

    /* renamed from: b */
    private final List<DateFormat> f56593b;

    public C15949a(int i, int i2) {
        this(Date.class, i, i2);
    }

    C15949a(Class<? extends Date> cls) {
        ArrayList arrayList = new ArrayList();
        this.f56593b = arrayList;
        this.f56592a = m7992a(cls);
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C16067e.m7886b()) {
            arrayList.add(C16078i.m7872a(2, 2));
        }
    }

    C15949a(Class<? extends Date> cls, int i) {
        String str;
        ArrayList arrayList = new ArrayList();
        this.f56593b = arrayList;
        this.f56592a = m7992a(cls);
        arrayList.add(DateFormat.getDateInstance(i, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateInstance(i));
        }
        if (C16067e.m7886b()) {
            if (i == 0) {
                str = "EEEE, MMMM d, y";
            } else if (i == 1) {
                str = "MMMM d, y";
            } else if (i == 2) {
                str = "MMM d, y";
            } else if (i != 3) {
                throw new IllegalArgumentException("Unknown DateFormat style: ".concat(String.valueOf(i)));
            } else {
                str = "M/d/yy";
            }
            arrayList.add(new SimpleDateFormat(str, Locale.US));
        }
    }

    public C15949a(Class<? extends Date> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f56593b = arrayList;
        this.f56592a = m7992a(cls);
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (C16067e.m7886b()) {
            arrayList.add(C16078i.m7872a(i, i2));
        }
    }

    public C15949a(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f56593b = arrayList;
        this.f56592a = m7992a(cls);
        arrayList.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(new SimpleDateFormat(str));
        }
    }

    /* renamed from: a */
    private static Class<? extends Date> m7992a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* renamed from: a */
    private Date m7991a(String str) {
        synchronized (this.f56593b) {
            for (DateFormat dateFormat : this.f56593b) {
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

    @Override // com.google.gson.AbstractC16088j
    public final /* synthetic */ Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date m7991a = m7991a(jsonReader.nextString());
        Class<? extends Date> cls = this.f56592a;
        if (cls == Date.class) {
            return m7991a;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(m7991a.getTime());
        }
        if (cls != java.sql.Date.class) {
            throw new AssertionError();
        }
        return new java.sql.Date(m7991a.getTime());
    }

    public final String toString() {
        DateFormat dateFormat = this.f56593b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.AbstractC16088j
    public final /* synthetic */ void write(JsonWriter jsonWriter, Date date) throws IOException {
        Date date2 = date;
        if (date2 == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.f56593b) {
            jsonWriter.value(this.f56593b.get(0).format(date2));
        }
    }
}
