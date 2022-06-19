package org.jsoup.p592c;

import com.mopub.common.AdType;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.AbstractC20921m;
import org.jsoup.nodes.C20901b;
import org.jsoup.nodes.C20903c;
import org.jsoup.nodes.C20904d;
import org.jsoup.nodes.C20905e;
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20911h;
import org.jsoup.nodes.C20919k;
import org.jsoup.nodes.C20925p;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.b */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/b.class */
public class C20784b extends AbstractC20897m {

    /* renamed from: a */
    static final String[] f67309a = {"applet", "caption", AdType.HTML, "marquee", "object", "table", "td", "th"};

    /* renamed from: b */
    static final String[] f67310b = {"ol", "ul"};

    /* renamed from: c */
    static final String[] f67311c = {"button"};

    /* renamed from: d */
    static final String[] f67312d = {AdType.HTML, "table"};

    /* renamed from: e */
    static final String[] f67313e = {"optgroup", "option"};

    /* renamed from: f */
    static final String[] f67314f = {"dd", "dt", "li", "optgroup", "option", "p", "rp", "rt"};

    /* renamed from: g */
    static final String[] f67315g = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", AdType.HTML, "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};

    /* renamed from: q */
    static final /* synthetic */ boolean f67316q = true;

    /* renamed from: A */
    private C20911h f67317A;

    /* renamed from: B */
    private AbstractC20816i.C20823f f67318B;

    /* renamed from: C */
    private String[] f67319C = {null};

    /* renamed from: h */
    EnumC20785c f67320h;

    /* renamed from: i */
    EnumC20785c f67321i;

    /* renamed from: j */
    C20911h f67322j;

    /* renamed from: k */
    C20919k f67323k;

    /* renamed from: l */
    ArrayList<C20911h> f67324l;

    /* renamed from: m */
    List<String> f67325m;

    /* renamed from: n */
    boolean f67326n;

    /* renamed from: o */
    boolean f67327o;

    /* renamed from: p */
    boolean f67328p;

    /* renamed from: z */
    private boolean f67329z;

    /* renamed from: a */
    public static void m450a(ArrayList<C20911h> arrayList, C20911h c20911h, C20911h c20911h2) {
        int lastIndexOf = arrayList.lastIndexOf(c20911h);
        C20779c.m503a(lastIndexOf != -1);
        arrayList.set(lastIndexOf, c20911h2);
    }

    /* renamed from: a */
    private boolean m453a(String str, String[] strArr) {
        return m452a(str, f67309a, strArr);
    }

    /* renamed from: a */
    private boolean m452a(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.f67319C;
        strArr3[0] = str;
        return m439a(strArr3, strArr, strArr2);
    }

    /* renamed from: a */
    public static boolean m451a(ArrayList<C20911h> arrayList, C20911h c20911h) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == c20911h) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private boolean m439a(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f67442v.size() - 1;
        int i = size > 100 ? size - 100 : 0;
        while (size >= i) {
            String str = this.f67442v.get(size).f67481e.f67388b;
            if (C20782c.m486b(str, strArr)) {
                return true;
            }
            if (C20782c.m486b(str, strArr2)) {
                return false;
            }
            if (strArr3 != null && C20782c.m486b(str, strArr3)) {
                return false;
            }
            size--;
        }
        return false;
    }

    /* renamed from: b */
    private void m433b(AbstractC20921m abstractC20921m) {
        C20919k c20919k;
        if (this.f67442v.isEmpty()) {
            this.f67441u.m274a(abstractC20921m);
        } else if (this.f67327o) {
            m441a(abstractC20921m);
        } else {
            m325p().m274a(abstractC20921m);
        }
        if (abstractC20921m instanceof C20911h) {
            C20911h c20911h = (C20911h) abstractC20921m;
            if (!c20911h.f67481e.f67394h || (c20919k = this.f67323k) == null) {
                return;
            }
            c20919k.m249b(c20911h);
        }
    }

    /* renamed from: c */
    private void m428c(String... strArr) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            C20911h c20911h = this.f67442v.get(size);
            if (C20782c.m492a(c20911h.f67481e.f67388b, strArr) || c20911h.f67481e.f67388b.equals(AdType.HTML)) {
                return;
            }
            this.f67442v.remove(size);
        }
    }

    /* renamed from: f */
    public static boolean m419f(C20911h c20911h) {
        return C20782c.m486b(c20911h.f67481e.f67388b, f67315g);
    }

    /* renamed from: i */
    private void m410i(C20911h c20911h) {
        m433b((AbstractC20921m) c20911h);
        this.f67442v.add(c20911h);
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final C20813f mo324a() {
        return C20813f.f67372a;
    }

    /* renamed from: a */
    public final C20911h m454a(String str) {
        C20911h c20911h = new C20911h(C20815h.m392a(str, this.f67445y), null);
        m410i(c20911h);
        return c20911h;
    }

    /* renamed from: a */
    public final C20911h m446a(AbstractC20816i.C20824g c20824g) {
        if (c20824g.f67411g != null && !c20824g.f67411g.m303b() && c20824g.f67411g.m308a(this.f67445y) > 0) {
            m326n("Duplicate attribute");
        }
        if (!c20824g.f67410f) {
            C20911h c20911h = new C20911h(C20815h.m392a(c20824g.m365j(), this.f67445y), null, this.f67445y.m398a(c20824g.f67411g));
            m410i(c20911h);
            return c20911h;
        }
        C20911h m436b = m436b(c20824g);
        this.f67442v.add(m436b);
        this.f67440t.f67420c = EnumC20829l.Data;
        this.f67440t.m341a(this.f67318B.mo376a().m374a(m436b.f67481e.f67387a));
        return m436b;
    }

    /* renamed from: a */
    public final C20919k m445a(AbstractC20816i.C20824g c20824g, boolean z) {
        C20919k c20919k = new C20919k(C20815h.m392a(c20824g.m365j(), this.f67445y), null, this.f67445y.m398a(c20824g.f67411g));
        this.f67323k = c20919k;
        m433b((AbstractC20921m) c20919k);
        if (z) {
            this.f67442v.add(c20919k);
        }
        return c20919k;
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final void mo323a(Reader reader, String str, C20814g c20814g) {
        super.mo323a(reader, str, c20814g);
        this.f67320h = EnumC20785c.Initial;
        this.f67321i = null;
        this.f67329z = false;
        this.f67322j = null;
        this.f67323k = null;
        this.f67317A = null;
        this.f67324l = new ArrayList<>();
        this.f67325m = new ArrayList();
        this.f67318B = new AbstractC20816i.C20823f();
        this.f67326n = true;
        this.f67327o = false;
        this.f67328p = false;
    }

    /* renamed from: a */
    public final void m449a(EnumC20785c enumC20785c) {
        if (this.f67438r.f67376a.m401a()) {
            this.f67438r.f67376a.add(new C20811d(this.f67439s.m478b(), "Unexpected token [%s] when in state [%s]", this.f67444x.getClass().getSimpleName(), enumC20785c));
        }
    }

    /* renamed from: a */
    public final void m448a(AbstractC20816i.C20819b c20819b) {
        C20911h p = m325p();
        C20906f c20906f = p;
        if (p == null) {
            c20906f = this.f67441u;
        }
        String str = c20906f.f67481e.f67388b;
        String str2 = c20819b.f67397b;
        c20906f.m274a(c20819b instanceof AbstractC20816i.C20818a ? new C20903c(str2) : (str.equals("script") || str.equals("style")) ? new C20905e(str2) : new C20925p(str2));
    }

    /* renamed from: a */
    public final void m447a(AbstractC20816i.C20820c c20820c) {
        m433b(new C20904d(c20820c.m379h()));
    }

    /* renamed from: a */
    public final void m443a(C20911h c20911h) {
        if (this.f67329z) {
            return;
        }
        String a = c20911h.mo213a("href");
        if (a.length() == 0) {
            return;
        }
        this.f67443w = a;
        this.f67329z = true;
        this.f67441u.m234f(a);
    }

    /* renamed from: a */
    public final void m442a(C20911h c20911h, C20911h c20911h2) {
        int lastIndexOf = this.f67442v.lastIndexOf(c20911h);
        C20779c.m503a(lastIndexOf != -1);
        this.f67442v.add(lastIndexOf + 1, c20911h2);
    }

    /* renamed from: a */
    public final void m441a(AbstractC20921m abstractC20921m) {
        C20911h c20911h;
        C20911h m437b = m437b("table");
        boolean z = false;
        if (m437b == null) {
            c20911h = this.f67442v.get(0);
        } else if (((C20911h) m437b.f67501g) != null) {
            c20911h = null;
            z = true;
        } else {
            c20911h = m422e(m437b);
        }
        if (!z) {
            c20911h.m274a(abstractC20921m);
            return;
        }
        C20779c.m507a(m437b);
        m437b.mo233f(abstractC20921m);
    }

    /* renamed from: a */
    public final void m440a(String... strArr) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            C20911h c20911h = this.f67442v.get(size);
            this.f67442v.remove(size);
            if (C20782c.m486b(c20911h.f67481e.f67388b, strArr)) {
                return;
            }
        }
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo322a(String str, C20901b c20901b) {
        return super.mo322a(str, c20901b);
    }

    @Override // org.jsoup.p592c.AbstractC20897m
    /* renamed from: a */
    public final boolean mo321a(AbstractC20816i abstractC20816i) {
        this.f67444x = abstractC20816i;
        return this.f67320h.process(abstractC20816i, this);
    }

    /* renamed from: a */
    public final boolean m444a(AbstractC20816i abstractC20816i, EnumC20785c enumC20785c) {
        this.f67444x = abstractC20816i;
        return enumC20785c.process(abstractC20816i, this);
    }

    /* renamed from: b */
    public final C20911h m437b(String str) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            C20911h c20911h = this.f67442v.get(size);
            if (c20911h.f67481e.f67388b.equals(str)) {
                return c20911h;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final C20911h m436b(AbstractC20816i.C20824g c20824g) {
        C20815h m392a = C20815h.m392a(c20824g.m365j(), this.f67445y);
        C20911h c20911h = new C20911h(m392a, null, this.f67445y.m398a(c20824g.f67411g));
        m433b((AbstractC20921m) c20911h);
        if (c20824g.f67410f) {
            if (!m392a.m390b()) {
                m392a.f67392f = true;
            } else if (!m392a.f67391e) {
                this.f67440t.m337b("Tag cannot be self closing; not a void tag");
            }
        }
        return c20911h;
    }

    /* renamed from: b */
    public final void m438b() {
        this.f67321i = this.f67320h;
    }

    /* renamed from: b */
    public final void m435b(C20911h c20911h) {
        this.f67442v.add(c20911h);
    }

    /* renamed from: b */
    public final void m434b(C20911h c20911h, C20911h c20911h2) {
        m450a(this.f67442v, c20911h, c20911h2);
    }

    /* renamed from: b */
    public final boolean m432b(String[] strArr) {
        return m439a(strArr, f67309a, (String[]) null);
    }

    /* renamed from: c */
    public final C20906f m431c() {
        return this.f67441u;
    }

    /* renamed from: c */
    public final C20911h m430c(String str) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            C20911h c20911h = this.f67442v.get(size);
            this.f67442v.remove(size);
            if (c20911h.f67481e.f67388b.equals(str)) {
                return c20911h;
            }
        }
        return null;
    }

    /* renamed from: c */
    public final boolean m429c(C20911h c20911h) {
        return m451a(this.f67442v, c20911h);
    }

    /* renamed from: d */
    public final String m427d() {
        return this.f67443w;
    }

    /* renamed from: d */
    public final void m426d(String str) {
        for (int size = this.f67442v.size() - 1; size >= 0 && !this.f67442v.get(size).f67481e.f67388b.equals(str); size--) {
            this.f67442v.remove(size);
        }
    }

    /* renamed from: d */
    public final boolean m425d(C20911h c20911h) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            if (this.f67442v.get(size) == c20911h) {
                this.f67442v.remove(size);
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final C20911h m424e() {
        return this.f67442v.remove(this.f67442v.size() - 1);
    }

    /* renamed from: e */
    public final C20911h m422e(C20911h c20911h) {
        if (f67316q || m429c(c20911h)) {
            for (int size = this.f67442v.size() - 1; size >= 0; size--) {
                if (this.f67442v.get(size) == c20911h) {
                    return this.f67442v.get(size - 1);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: e */
    public final boolean m423e(String str) {
        return m453a(str, (String[]) null);
    }

    /* renamed from: f */
    public final ArrayList<C20911h> m421f() {
        return this.f67442v;
    }

    /* renamed from: f */
    public final boolean m420f(String str) {
        return m453a(str, f67310b);
    }

    /* renamed from: g */
    public final void m418g() {
        m428c("table");
    }

    /* renamed from: g */
    public final void m416g(C20911h c20911h) {
        C20911h c20911h2;
        int size = this.f67324l.size() - 1;
        int i = 0;
        while (true) {
            int i2 = i;
            if (size < 0 || (c20911h2 = this.f67324l.get(size)) == null) {
                break;
            }
            int i3 = i2;
            if (c20911h.f67481e.f67388b.equals(c20911h2.f67481e.f67388b) && c20911h.mo227j().equals(c20911h2.mo227j())) {
                i3 = i2 + 1;
            }
            if (i3 == 3) {
                this.f67324l.remove(size);
                break;
            } else {
                size--;
                i = i3;
            }
        }
        this.f67324l.add(c20911h);
    }

    /* renamed from: g */
    public final boolean m417g(String str) {
        return m453a(str, f67311c);
    }

    /* renamed from: h */
    public final void m415h() {
        m428c("tbody", "tfoot", "thead", "template");
    }

    /* renamed from: h */
    public final void m413h(C20911h c20911h) {
        for (int size = this.f67324l.size() - 1; size >= 0; size--) {
            if (this.f67324l.get(size) == c20911h) {
                this.f67324l.remove(size);
                return;
            }
        }
    }

    /* renamed from: h */
    public final boolean m414h(String str) {
        return m452a(str, f67312d, (String[]) null);
    }

    /* renamed from: i */
    public final void m412i() {
        m428c("tr", "template");
    }

    /* renamed from: i */
    public final boolean m411i(String str) {
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            String str2 = this.f67442v.get(size).f67481e.f67388b;
            if (str2.equals(str)) {
                return true;
            }
            if (!C20782c.m486b(str2, f67313e)) {
                return false;
            }
        }
        C20779c.m500b("Should not be reachable");
        return false;
    }

    /* renamed from: j */
    public final void m409j() {
        boolean z = false;
        for (int size = this.f67442v.size() - 1; size >= 0; size--) {
            C20911h c20911h = this.f67442v.get(size);
            if (size == 0) {
                c20911h = this.f67317A;
                z = true;
            }
            String str = c20911h.f67481e.f67388b;
            if ("select".equals(str)) {
                this.f67320h = EnumC20785c.InSelect;
                return;
            } else if ("td".equals(str) || ("th".equals(str) && !z)) {
                this.f67320h = EnumC20785c.InCell;
                return;
            } else if ("tr".equals(str)) {
                this.f67320h = EnumC20785c.InRow;
                return;
            } else if ("tbody".equals(str) || "thead".equals(str) || "tfoot".equals(str)) {
                this.f67320h = EnumC20785c.InTableBody;
                return;
            } else if ("caption".equals(str)) {
                this.f67320h = EnumC20785c.InCaption;
                return;
            } else if ("colgroup".equals(str)) {
                this.f67320h = EnumC20785c.InColumnGroup;
                return;
            } else if ("table".equals(str)) {
                this.f67320h = EnumC20785c.InTable;
                return;
            } else if ("head".equals(str)) {
                this.f67320h = EnumC20785c.InBody;
                return;
            } else if ("body".equals(str)) {
                this.f67320h = EnumC20785c.InBody;
                return;
            } else if ("frameset".equals(str)) {
                this.f67320h = EnumC20785c.InFrameset;
                return;
            } else if (AdType.HTML.equals(str)) {
                this.f67320h = EnumC20785c.BeforeHead;
                return;
            } else if (z) {
                this.f67320h = EnumC20785c.InBody;
                return;
            }
        }
    }

    /* renamed from: j */
    public final void m408j(String str) {
        while (str != null && !m325p().f67481e.f67388b.equals(str) && C20782c.m486b(m325p().f67481e.f67388b, f67314f)) {
            m424e();
        }
    }

    /* renamed from: k */
    public final C20911h m406k(String str) {
        C20911h c20911h;
        for (int size = this.f67324l.size() - 1; size >= 0 && (c20911h = this.f67324l.get(size)) != null; size--) {
            if (c20911h.f67481e.f67388b.equals(str)) {
                return c20911h;
            }
        }
        return null;
    }

    /* renamed from: k */
    public final void m407k() {
        this.f67325m = new ArrayList();
    }

    /* renamed from: l */
    public final void m405l() {
        m408j(null);
    }

    /* renamed from: m */
    public final void m404m() {
        C20911h c20911h;
        boolean z = true;
        if (this.f67324l.size() > 0) {
            ArrayList<C20911h> arrayList = this.f67324l;
            c20911h = arrayList.get(arrayList.size() - 1);
        } else {
            c20911h = null;
        }
        if (c20911h == null || m429c(c20911h)) {
            return;
        }
        int size = this.f67324l.size() - 1;
        int i = size;
        while (i != 0) {
            int i2 = i - 1;
            C20911h c20911h2 = this.f67324l.get(i2);
            c20911h = c20911h2;
            i = i2;
            if (c20911h2 != null) {
                c20911h = c20911h2;
                i = i2;
                if (m429c(c20911h2)) {
                    i = i2;
                    c20911h = c20911h2;
                }
            }
            z = false;
        }
        while (true) {
            int i3 = i;
            if (!z) {
                i3 = i + 1;
                c20911h = this.f67324l.get(i3);
            }
            C20779c.m507a(c20911h);
            C20911h m454a = m454a(c20911h.f67481e.f67388b);
            m454a.mo227j().m306a(c20911h.mo227j());
            this.f67324l.set(i3, m454a);
            i = i3;
            if (i3 == size) {
                return;
            }
            z = false;
        }
    }

    /* renamed from: n */
    public final void m403n() {
        while (!this.f67324l.isEmpty()) {
            int size = this.f67324l.size();
            if ((size > 0 ? this.f67324l.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    /* renamed from: o */
    public final void m402o() {
        this.f67324l.add(null);
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.f67444x + ", state=" + this.f67320h + ", currentElement=" + m325p() + '}';
    }
}
