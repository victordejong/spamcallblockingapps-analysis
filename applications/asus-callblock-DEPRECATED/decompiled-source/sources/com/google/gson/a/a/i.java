package com.google.gson.a.a;

import com.google.gson.b.a;
import com.google.gson.c.b;
import com.google.gson.c.c;
import com.google.gson.f;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/i.class */
public final class i extends x<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4462a = new y() { // from class: com.google.gson.a.a.i.1
        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, a<T> aVar) {
            return aVar.f4531a == Date.class ? new i() : null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f4463b = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, Date date) {
        synchronized (this) {
            cVar.b(date == null ? null : this.f4463b.format((java.util.Date) date));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Date a(com.google.gson.c.a aVar) {
        Date date;
        synchronized (this) {
            if (aVar.f() == b.NULL) {
                aVar.k();
                date = null;
            } else {
                try {
                    date = new Date(this.f4463b.parse(aVar.i()).getTime());
                } catch (ParseException e) {
                    throw new u(e);
                }
            }
        }
        return date;
    }
}
