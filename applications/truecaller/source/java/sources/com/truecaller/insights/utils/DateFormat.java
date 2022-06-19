package com.truecaller.insights.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import s1.z.c.l;
import w3.b.a.i0.a;
import w3.b.a.i0.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\r\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b ¨\u0006!"}, d2 = {"Lcom/truecaller/insights/utils/DateFormat;", "", "Lw3/b/a/i0/b;", "formatter", "()Lw3/b/a/i0/b;", "", "dateString", "Ljava/util/Date;", "parseDate", "(Ljava/lang/String;)Ljava/util/Date;", "date", "formatDate", "(Ljava/util/Date;)Ljava/lang/String;", "pattern", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "yyyy_MM_dd_HH_mm_ss", "yyyy_MM_dd_HH_mm", "hh_mm_aa", "dd_MMM", "dd_MMM_yyyy", "yyyy_MM_dd", "d", "MMM", "YYYY_MM", "MMM_YY", "H_mm", "MMMM", "MMMM_yyyy", "dd_MMM_yy", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/utils/DateFormat.class */
public enum DateFormat {
    yyyy_MM_dd_HH_mm_ss("yyyy-MM-dd HH:mm:ss"),
    yyyy_MM_dd_HH_mm("yyyy-MM-dd HH:mm"),
    hh_mm_aa("hh:mm aa"),
    dd_MMM("dd MMM"),
    dd_MMM_yyyy("dd MMM yyyy"),
    yyyy_MM_dd("yyyy-MM-dd"),
    d("d"),
    MMM("MMM"),
    YYYY_MM("YYYY-MM"),
    MMM_YY("MMM YY"),
    H_mm("H:mm"),
    MMMM("MMMM"),
    MMMM_yyyy("MMMM yyyy"),
    dd_MMM_yy("dd MMM yy");
    
    private final String pattern;

    DateFormat(String str) {
        this.pattern = str;
    }

    public final String formatDate(Date date) {
        l.e(date, "date");
        String format = new SimpleDateFormat(this.pattern, Locale.ENGLISH).format(date);
        l.d(format, "SimpleDateFormat(pattern…ale.ENGLISH).format(date)");
        return format;
    }

    public final b formatter() {
        b a = a.a(this.pattern);
        l.d(a, "DateTimeFormat.forPattern(pattern)");
        return a;
    }

    public final String getPattern() {
        return this.pattern;
    }

    public final Date parseDate(String str) {
        Date date;
        l.e(str, "dateString");
        try {
            date = new SimpleDateFormat(this.pattern, Locale.ENGLISH).parse(str);
            if (date == null) {
                date = new Date();
            }
        } catch (ParseException e) {
            date = new Date();
        }
        return date;
    }
}
