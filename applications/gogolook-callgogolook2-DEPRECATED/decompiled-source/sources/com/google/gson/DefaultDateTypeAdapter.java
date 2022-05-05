package com.google.gson;

import gogolook.callgogolook2.gson.UserProfile;
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
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p386w.C10143d;
import p081h.p203i.p384e.p386w.C10155i;
import p081h.p203i.p384e.p386w.p387m.p388c.C10169a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/DefaultDateTypeAdapter.class */
public final class DefaultDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: a */
    public final Class<? extends Date> f7808a;

    /* renamed from: b */
    public final List<DateFormat> f7809b = new ArrayList();

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i, int i2) {
        m31006a(cls);
        this.f7808a = cls;
        this.f7809b.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f7809b.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (C10143d.m13324c()) {
            this.f7809b.add(C10155i.m13307a(i, i2));
        }
    }

    public DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        m31006a(cls);
        this.f7808a = cls;
        this.f7809b.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f7809b.add(new SimpleDateFormat(str));
        }
    }

    /* renamed from: a */
    public static Class<? extends Date> m31006a(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + UserProfile.CARD_CATE_SEPARATOR + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* renamed from: a */
    public final Date m31005a(String str) {
        synchronized (this.f7809b) {
            for (DateFormat dateFormat : this.f7809b) {
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
        if (date == null) {
            cVar.mo13214k();
            return;
        }
        synchronized (this.f7809b) {
            cVar.mo13223d(this.f7809b.get(0).format(date));
        }
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(C10174a aVar) throws IOException {
        if (aVar.mo13272F() == EnumC10176b.NULL) {
            aVar.mo13241p();
            return null;
        }
        Date a = m31005a(aVar.mo13274B());
        Class<? extends Date> cls = this.f7808a;
        if (cls == Date.class) {
            return a;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(a.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(a.getTime());
        }
        throw new AssertionError();
    }

    public String toString() {
        DateFormat dateFormat = this.f7809b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
