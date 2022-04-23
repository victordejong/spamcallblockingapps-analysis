package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p386w.C10143d;
import p081h.p203i.p384e.p386w.C10155i;
import p081h.p203i.p384e.p386w.p387m.p388c.C10169a;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/DateTypeAdapter.class */
public final class DateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b */
    public static final AbstractC10117u f7844b = new AbstractC10117u() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            return aVar.m13280a() == Date.class ? new DateTypeAdapter() : null;
        }
    };

    /* renamed from: a */
    public final List<DateFormat> f7845a = new ArrayList();

    public DateTypeAdapter() {
        this.f7845a.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f7845a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C10143d.m13324c()) {
            this.f7845a.add(C10155i.m13307a(2, 2));
        }
    }

    /* renamed from: a */
    public final Date m30957a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f7845a) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C10169a.m13286a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new C10113s(str, e2);
            }
        }
    }

    /* renamed from: a */
    public void write(C10177c cVar, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                cVar.mo13214k();
            } else {
                cVar.mo13223d(this.f7845a.get(0).format(date));
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(C10174a aVar) throws IOException {
        if (aVar.mo13272F() != EnumC10176b.NULL) {
            return m30957a(aVar.mo13274B());
        }
        aVar.mo13241p();
        return null;
    }
}
