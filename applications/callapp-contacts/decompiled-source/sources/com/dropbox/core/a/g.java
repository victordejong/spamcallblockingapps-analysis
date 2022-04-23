package com.dropbox.core.a;

import com.fasterxml.jackson.core.JsonFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final JsonFactory f17719a = new JsonFactory();

    /* renamed from: b  reason: collision with root package name */
    private static final TimeZone f17720b = TimeZone.getTimeZone("UTC");

    /* renamed from: c  reason: collision with root package name */
    private static final int f17721c = "yyyy-MM-dd'T'HH:mm:ss'Z'".replace("'", "").length();

    /* renamed from: d  reason: collision with root package name */
    private static final int f17722d = "yyyy-MM-dd".replace("'", "").length();

    g() {
    }

    public static String a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        simpleDateFormat.setCalendar(new GregorianCalendar(f17720b));
        return simpleDateFormat.format(date);
    }

    public static Date a(String str) throws ParseException {
        SimpleDateFormat simpleDateFormat;
        int length = str.length();
        if (length == f17721c) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH);
        } else if (length == f17722d) {
            simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        } else {
            throw new ParseException("timestamp has unexpected format: '" + str + "'", 0);
        }
        simpleDateFormat.setCalendar(new GregorianCalendar(f17720b));
        return simpleDateFormat.parse(str);
    }
}
