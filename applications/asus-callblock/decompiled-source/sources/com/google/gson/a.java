package com.google.gson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/google/gson/a.class */
public final class a implements k<Date>, t<Date> {

    /* renamed from: a  reason: collision with root package name */
    private final DateFormat f4437a;

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f4438b;
    private final DateFormat c;

    a() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    public a(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    public a(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    private a(DateFormat dateFormat, DateFormat dateFormat2) {
        this.f4437a = dateFormat;
        this.f4438b = dateFormat2;
        this.c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public l a(Date date) {
        r rVar;
        synchronized (this.f4438b) {
            rVar = new r(this.f4437a.format(date));
        }
        return rVar;
    }

    private Date a(l lVar) {
        Date parse;
        synchronized (this.f4438b) {
            try {
                parse = this.f4438b.parse(lVar.b());
            } catch (ParseException e) {
                try {
                    parse = this.f4437a.parse(lVar.b());
                } catch (ParseException e2) {
                    try {
                        parse = this.c.parse(lVar.b());
                    } catch (ParseException e3) {
                        throw new u(lVar.b(), e3);
                    }
                }
            }
        }
        return parse;
    }

    @Override // com.google.gson.k
    public final /* synthetic */ Date a(l lVar, Type type) {
        if (!(lVar instanceof r)) {
            throw new p("The date should be a string value");
        }
        Date a2 = a(lVar);
        if (type != Date.class) {
            if (type == Timestamp.class) {
                a2 = new Timestamp(a2.getTime());
            } else if (type == java.sql.Date.class) {
                a2 = new java.sql.Date(a2.getTime());
            } else {
                throw new IllegalArgumentException(getClass() + " cannot deserialize to " + type);
            }
        }
        return a2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(a.class.getSimpleName());
        sb.append('(').append(this.f4438b.getClass().getSimpleName()).append(')');
        return sb.toString();
    }
}
