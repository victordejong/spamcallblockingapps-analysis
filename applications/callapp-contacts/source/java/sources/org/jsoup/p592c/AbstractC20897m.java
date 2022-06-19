package org.jsoup.p592c;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.jsoup.nodes.C20901b;
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20911h;
import org.jsoup.p590a.C20779c;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.m */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/m.class */
public abstract class AbstractC20897m {

    /* renamed from: a */
    private AbstractC20816i.C20824g f67436a = new AbstractC20816i.C20824g();

    /* renamed from: b */
    private AbstractC20816i.C20823f f67437b = new AbstractC20816i.C20823f();

    /* renamed from: r */
    protected C20814g f67438r;

    /* renamed from: s */
    C20783a f67439s;

    /* renamed from: t */
    C20828k f67440t;

    /* renamed from: u */
    protected C20906f f67441u;

    /* renamed from: v */
    protected ArrayList<C20911h> f67442v;

    /* renamed from: w */
    protected String f67443w;

    /* renamed from: x */
    protected AbstractC20816i f67444x;

    /* renamed from: y */
    protected C20813f f67445y;

    /* renamed from: a */
    public abstract C20813f mo324a();

    /* renamed from: a */
    public void mo323a(Reader reader, String str, C20814g c20814g) {
        C20779c.m506a(reader, "String input must not be null");
        C20779c.m506a((Object) str, "BaseURI must not be null");
        C20906f c20906f = new C20906f(str);
        this.f67441u = c20906f;
        c20906f.f67458b = c20814g;
        this.f67438r = c20814g;
        this.f67445y = c20814g.f67377b;
        C20783a c20783a = new C20783a(reader);
        this.f67439s = c20783a;
        this.f67444x = null;
        this.f67440t = new C20828k(c20783a, c20814g.f67376a);
        this.f67442v = new ArrayList<>(32);
        this.f67443w = str;
    }

    /* renamed from: a */
    public boolean mo322a(String str, C20901b c20901b) {
        AbstractC20816i.C20824g c20824g = this.f67436a;
        if (this.f67444x == c20824g) {
            return mo321a(new AbstractC20816i.C20824g().m377a(str, c20901b));
        }
        c20824g.mo376a();
        c20824g.m377a(str, c20901b);
        return mo321a(c20824g);
    }

    /* renamed from: a */
    public abstract boolean mo321a(AbstractC20816i abstractC20816i);

    /* renamed from: b */
    public final C20906f m329b(Reader reader, String str, C20814g c20814g) {
        AbstractC20816i.C20819b c20819b;
        mo323a(reader, str, c20814g);
        C20828k c20828k = this.f67440t;
        AbstractC20816i.EnumC20826i enumC20826i = AbstractC20816i.EnumC20826i.EOF;
        while (true) {
            if (!c20828k.f67422e) {
                c20828k.f67420c.read(c20828k, c20828k.f67419b);
            } else {
                StringBuilder sb = c20828k.f67424g;
                if (sb.length() != 0) {
                    String sb2 = sb.toString();
                    sb.delete(0, sb.length());
                    c20828k.f67423f = null;
                    AbstractC20816i.C20819b c20819b2 = c20828k.f67429l;
                    c20819b2.f67397b = sb2;
                    c20819b = c20819b2;
                } else if (c20828k.f67423f != null) {
                    AbstractC20816i.C20819b c20819b3 = c20828k.f67429l;
                    c20819b3.f67397b = c20828k.f67423f;
                    c20828k.f67423f = null;
                    c20819b = c20819b3;
                } else {
                    c20828k.f67422e = false;
                    c20819b = c20828k.f67421d;
                }
                mo321a(c20819b);
                c20819b.mo376a();
                if (c20819b.f67396a == enumC20826i) {
                    break;
                }
            }
        }
        C20783a c20783a = this.f67439s;
        if (c20783a.f67301b != null) {
            try {
                c20783a.f67301b.close();
            } catch (IOException e) {
            } catch (Throwable th) {
                c20783a.f67301b = null;
                c20783a.f67300a = null;
                c20783a.f67306g = null;
                throw th;
            }
            c20783a.f67301b = null;
            c20783a.f67300a = null;
            c20783a.f67306g = null;
        }
        this.f67439s = null;
        this.f67440t = null;
        this.f67442v = null;
        return this.f67441u;
    }

    /* renamed from: l */
    public final boolean m328l(String str) {
        AbstractC20816i.C20824g c20824g = this.f67436a;
        return this.f67444x == c20824g ? mo321a(new AbstractC20816i.C20824g().m374a(str)) : mo321a(c20824g.mo376a().m374a(str));
    }

    /* renamed from: m */
    public final boolean m327m(String str) {
        AbstractC20816i abstractC20816i = this.f67444x;
        AbstractC20816i.C20823f c20823f = this.f67437b;
        return abstractC20816i == c20823f ? mo321a(new AbstractC20816i.C20823f().m374a(str)) : mo321a(c20823f.mo376a().m374a(str));
    }

    /* renamed from: n */
    public final void m326n(String str) {
        C20812e c20812e = this.f67438r.f67376a;
        if (c20812e.m401a()) {
            c20812e.add(new C20811d(this.f67439s.m478b(), str));
        }
    }

    /* renamed from: p */
    public final C20911h m325p() {
        int size = this.f67442v.size();
        if (size > 0) {
            return this.f67442v.get(size - 1);
        }
        return null;
    }
}
