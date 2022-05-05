package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* renamed from: h.i.c.y.a.b.a.m */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/m.class */
public final class C10030m {

    /* renamed from: a */
    public final URL f22700a;

    public C10030m(String str) throws MalformedURLException {
        this.f22700a = new URL(str);
    }

    /* renamed from: a */
    public final URLConnection m13562a() throws IOException {
        return this.f22700a.openConnection();
    }
}
