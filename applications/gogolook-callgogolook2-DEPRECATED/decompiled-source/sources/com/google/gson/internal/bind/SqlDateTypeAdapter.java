package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/SqlDateTypeAdapter.class */
public final class SqlDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: b */
    public static final AbstractC10117u f7872b = new AbstractC10117u() { // from class: com.google.gson.internal.bind.SqlDateTypeAdapter.1
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            return aVar.m13280a() == Date.class ? new SqlDateTypeAdapter() : null;
        }
    };

    /* renamed from: a */
    public final DateFormat f7873a = new SimpleDateFormat("MMM d, yyyy");

    /* renamed from: a */
    public void write(C10177c cVar, Date date) throws IOException {
        synchronized (this) {
            cVar.mo13223d(date == null ? null : this.f7873a.format((java.util.Date) date));
        }
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(C10174a aVar) throws IOException {
        synchronized (this) {
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return new Date(this.f7873a.parse(aVar.mo13274B()).getTime());
            } catch (ParseException e) {
                throw new C10113s(e);
            }
        }
    }
}
