package p193e.p1681q.p1693d.p1694c;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import s1.z.c.l;
/* renamed from: e.q.d.c.a */
/* loaded from: classes16-dex2jar.jar:e/q/d/c/a.class */
public final class C25199a {
    /* renamed from: a */
    public static final String m4097a(C25200b c25200b) {
        l.f(c25200b, "multDate");
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(c25200b.f70461a);
        l.b(format, "DATE_TIME_FORMATTER.format(multDate.date)");
        return format;
    }

    /* renamed from: b */
    public static final C25200b m4096b(String str, String str2) {
        l.f(str, "date");
        l.f(str2, "format");
        C25200b c25200b = new C25200b();
        Date parse = new SimpleDateFormat(str2, Locale.ENGLISH).parse(str);
        l.b(parse, "SimpleDateFormat(format,…cale.ENGLISH).parse(date)");
        l.f(parse, "<set-?>");
        c25200b.f70461a = parse;
        return c25200b;
    }
}
