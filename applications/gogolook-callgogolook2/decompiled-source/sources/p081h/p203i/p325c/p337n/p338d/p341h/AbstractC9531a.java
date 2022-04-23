package p081h.p203i.p325c.p337n.p338d.p341h;

import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
import p081h.p203i.p325c.p337n.p338d.p345k.C9766b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p345k.EnumC9765a;
/* renamed from: h.i.c.n.d.h.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/a.class */
public abstract class AbstractC9531a {

    /* renamed from: e */
    public static final Pattern f21699e = Pattern.compile("http(s?)://[^\\/]+", 2);

    /* renamed from: a */
    public final String f21700a;

    /* renamed from: b */
    public final C9767c f21701b;

    /* renamed from: c */
    public final EnumC9765a f21702c;

    /* renamed from: d */
    public final String f21703d;

    public AbstractC9531a(String str, String str2, C9767c cVar, EnumC9765a aVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (cVar != null) {
            this.f21703d = str;
            this.f21700a = m14973a(str2);
            this.f21701b = cVar;
            this.f21702c = aVar;
        } else {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
    }

    /* renamed from: a */
    public C9766b m14974a() {
        return m14972a(Collections.emptyMap());
    }

    /* renamed from: a */
    public C9766b m14972a(Map<String, String> map) {
        C9766b a = this.f21701b.m14342a(this.f21702c, m14971b(), map);
        a.m14349a("User-Agent", "Crashlytics Android SDK/" + C9601m.m14742e());
        a.m14349a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return a;
    }

    /* renamed from: a */
    public final String m14973a(String str) {
        String str2 = str;
        if (!C9546h.m14920b(this.f21703d)) {
            str2 = f21699e.matcher(str).replaceFirst(this.f21703d);
        }
        return str2;
    }

    /* renamed from: b */
    public String m14971b() {
        return this.f21700a;
    }
}
