package com.dropbox.core.p263a;

import com.fasterxml.jackson.core.JsonFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* renamed from: com.dropbox.core.a.g */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/g.class */
public final class C8560g {

    /* renamed from: a */
    public static final JsonFactory f30461a = new JsonFactory();

    /* renamed from: b */
    private static final TimeZone f30462b = TimeZone.getTimeZone("UTC");

    /* renamed from: c */
    private static final int f30463c = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace("'", "").length();

    /* renamed from: d */
    private static final int f30464d = "yyyy-MM-dd".replace("'", "").length();

    C8560g() {
    }

    /* renamed from: a */
    public static String m25349a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        simpleDateFormat.setCalendar(new GregorianCalendar(f30462b));
        return simpleDateFormat.format(date);
    }

    /* renamed from: a */
    public static Date m25350a(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat;
        int length = str.length();
        if (length == f30463c) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        } else if (length != f30464d) {
            throw new ParseException("timestamp has unexpected format: '" + str + "'", 0);
        } else {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        }
        simpleDateFormat.setCalendar(new GregorianCalendar(f30462b));
        return simpleDateFormat.parse(str);
    }
}
