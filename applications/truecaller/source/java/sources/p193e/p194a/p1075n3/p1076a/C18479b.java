package p193e.p194a.p1075n3.p1076a;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import s1.z.c.l;
/* renamed from: e.a.n3.a.b */
/* loaded from: classes8-dex2jar.jar:e/a/n3/a/b.class */
public final class C18479b {

    /* renamed from: b */
    public static C18481d f52168b;

    /* renamed from: c */
    public static final C18479b f52169c = new C18479b();

    /* renamed from: a */
    public static final SimpleDateFormat f52167a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: a */
    public static final void m14875a(Object... objArr) {
        l.e(objArr, "events");
        C18481d c18481d = f52168b;
        if (c18481d != null) {
            StringBuilder sb = new StringBuilder(f52167a.format(new Date()) + ": ");
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                sb.append(objArr[i]);
            }
            c18481d.f52172a.add(sb.toString());
        }
    }
}
