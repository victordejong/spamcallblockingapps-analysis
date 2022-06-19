package org.jsoup.select;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
import org.jsoup.p591b.C20782c;
import org.jsoup.p592c.C20827j;
import org.jsoup.select.AbstractC20930b;
import org.jsoup.select.AbstractC20934d;
import org.jsoup.select.AbstractC20977i;
import org.jsoup.select.Selector;
/* renamed from: org.jsoup.select.h */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/h.class */
public final class C20976h {

    /* renamed from: a */
    private static final String[] f67538a = {",", ">", "+", "~", StringUtils.SPACE};

    /* renamed from: b */
    private static final String[] f67539b = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f */
    private static final Pattern f67540f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: g */
    private static final Pattern f67541g = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: c */
    private C20827j f67542c;

    /* renamed from: d */
    private String f67543d;

    /* renamed from: e */
    private List<AbstractC20934d> f67544e = new ArrayList();

    private C20976h(String str) {
        C20779c.m505a(str);
        String trim = str.trim();
        this.f67543d = trim;
        this.f67542c = new C20827j(trim);
    }

    /* renamed from: a */
    private String m189a() {
        StringBuilder m496a = C20782c.m496a();
        while (!this.f67542c.m361a()) {
            if (!this.f67542c.m359a("(")) {
                if (!this.f67542c.m359a("[")) {
                    if (this.f67542c.m358a(f67538a)) {
                        break;
                    }
                    m496a.append(this.f67542c.m354c());
                } else {
                    m496a.append("[");
                    m496a.append(this.f67542c.m360a('[', ']'));
                    m496a.append("]");
                }
            } else {
                m496a.append("(");
                m496a.append(this.f67542c.m360a('(', ')'));
                m496a.append(")");
            }
        }
        return C20782c.m491a(m496a);
    }

    /* renamed from: a */
    public static AbstractC20934d m187a(String str) {
        try {
            C20976h c20976h = new C20976h(str);
            c20976h.f67542c.m352d();
            if (c20976h.f67542c.m358a(f67538a)) {
                c20976h.f67544e.add(new AbstractC20977i.C20984g());
                c20976h.m188a(c20976h.f67542c.m354c());
            } else {
                c20976h.m184b();
            }
            while (!c20976h.f67542c.m361a()) {
                boolean m352d = c20976h.f67542c.m352d();
                if (c20976h.f67542c.m358a(f67538a)) {
                    c20976h.m188a(c20976h.f67542c.m354c());
                } else if (m352d) {
                    c20976h.m188a(' ');
                } else {
                    c20976h.m184b();
                }
            }
            return c20976h.f67544e.size() == 1 ? c20976h.f67544e.get(0) : new AbstractC20930b.C20931a(c20976h.f67544e);
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage(), new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013e  */
    /* JADX WARN: Type inference failed for: r0v33, types: [org.jsoup.select.b$a] */
    /* JADX WARN: Type inference failed for: r0v34, types: [org.jsoup.select.b$a] */
    /* JADX WARN: Type inference failed for: r0v35, types: [org.jsoup.select.b$a] */
    /* JADX WARN: Type inference failed for: r0v36, types: [org.jsoup.select.b$a] */
    /* JADX WARN: Type inference failed for: r0v39, types: [org.jsoup.select.b$a] */
    /* JADX WARN: Type inference failed for: r0v43, types: [org.jsoup.select.d] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m188a(char r10) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.C20976h.m188a(char):void");
    }

    /* renamed from: a */
    private void m186a(boolean z) {
        this.f67542c.m353c(z ? ":containsOwn" : ":contains");
        String m349e = C20827j.m349e(this.f67542c.m360a('(', ')'));
        C20779c.m504a(m349e, ":contains(text) query must not be empty");
        if (z) {
            this.f67544e.add(new AbstractC20934d.C20958m(m349e));
        } else {
            this.f67544e.add(new AbstractC20934d.C20959n(m349e));
        }
    }

    /* renamed from: a */
    private void m185a(boolean z, boolean z2) {
        String trim = C20781b.m497a(this.f67542c.m351d(")")).trim();
        Matcher matcher = f67540f.matcher(trim);
        Matcher matcher2 = f67541g.matcher(trim);
        int i = 2;
        int i2 = 0;
        int i3 = 0;
        if ("odd".equals(trim)) {
            i2 = 1;
        } else if (!"even".equals(trim)) {
            if (matcher.matches()) {
                int parseInt = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                if (matcher.group(4) != null) {
                    i3 = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", ""));
                }
                i = parseInt;
                i2 = i3;
            } else if (!matcher2.matches()) {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", trim);
            } else {
                i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i = 0;
            }
        }
        if (z2) {
            if (z) {
                this.f67544e.add(new AbstractC20934d.C20937ab(i, i2));
            } else {
                this.f67544e.add(new AbstractC20934d.C20938ac(i, i2));
            }
        } else if (z) {
            this.f67544e.add(new AbstractC20934d.C20936aa(i, i2));
        } else {
            this.f67544e.add(new AbstractC20934d.C20971z(i, i2));
        }
    }

    /* renamed from: b */
    private void m184b() {
        if (this.f67542c.m356b("#")) {
            m182c();
        } else if (this.f67542c.m356b(".")) {
            m181d();
        } else if (this.f67542c.m357b() || this.f67542c.m359a("*|")) {
            m180e();
        } else if (this.f67542c.m359a("[")) {
            m179f();
        } else if (this.f67542c.m356b("*")) {
            m178g();
        } else if (this.f67542c.m356b(":lt(")) {
            m177h();
        } else if (this.f67542c.m356b(":gt(")) {
            m176i();
        } else if (this.f67542c.m356b(":eq(")) {
            m175j();
        } else if (this.f67542c.m359a(":has(")) {
            m173l();
        } else if (this.f67542c.m359a(":contains(")) {
            m186a(false);
        } else if (this.f67542c.m359a(":containsOwn(")) {
            m186a(true);
        } else if (this.f67542c.m359a(":containsData(")) {
            m172m();
        } else if (this.f67542c.m359a(":matches(")) {
            m183b(false);
        } else if (this.f67542c.m359a(":matchesOwn(")) {
            m183b(true);
        } else if (this.f67542c.m359a(":not(")) {
            m171n();
        } else if (this.f67542c.m356b(":nth-child(")) {
            m185a(false, false);
        } else if (this.f67542c.m356b(":nth-last-child(")) {
            m185a(true, false);
        } else if (this.f67542c.m356b(":nth-of-type(")) {
            m185a(false, true);
        } else if (this.f67542c.m356b(":nth-last-of-type(")) {
            m185a(true, true);
        } else if (this.f67542c.m356b(":first-child")) {
            this.f67544e.add(new AbstractC20934d.C20967v());
        } else if (this.f67542c.m356b(":last-child")) {
            this.f67544e.add(new AbstractC20934d.C20969x());
        } else if (this.f67542c.m356b(":first-of-type")) {
            this.f67544e.add(new AbstractC20934d.C20968w());
        } else if (this.f67542c.m356b(":last-of-type")) {
            this.f67544e.add(new AbstractC20934d.C20970y());
        } else if (this.f67542c.m356b(":only-child")) {
            this.f67544e.add(new AbstractC20934d.C20939ad());
        } else if (this.f67542c.m356b(":only-of-type")) {
            this.f67544e.add(new AbstractC20934d.C20940ae());
        } else if (this.f67542c.m356b(":empty")) {
            this.f67544e.add(new AbstractC20934d.C20966u());
        } else if (this.f67542c.m356b(":root")) {
            this.f67544e.add(new AbstractC20934d.C20941af());
        } else if (!this.f67542c.m356b(":matchText")) {
            throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f67543d, this.f67542c.m347g());
        } else {
            this.f67544e.add(new AbstractC20934d.C20942ag());
        }
    }

    /* renamed from: b */
    private void m183b(boolean z) {
        this.f67542c.m353c(z ? ":matchesOwn" : ":matches");
        String m360a = this.f67542c.m360a('(', ')');
        C20779c.m504a(m360a, ":matches(regex) query must not be empty");
        if (z) {
            this.f67544e.add(new AbstractC20934d.C20944ai(Pattern.compile(m360a)));
        } else {
            this.f67544e.add(new AbstractC20934d.C20943ah(Pattern.compile(m360a)));
        }
    }

    /* renamed from: c */
    private void m182c() {
        String m348f = this.f67542c.m348f();
        C20779c.m505a(m348f);
        this.f67544e.add(new AbstractC20934d.C20961p(m348f));
    }

    /* renamed from: d */
    private void m181d() {
        String m348f = this.f67542c.m348f();
        C20779c.m505a(m348f);
        this.f67544e.add(new AbstractC20934d.C20956k(m348f.trim()));
    }

    /* renamed from: e */
    private void m180e() {
        String trim = C20781b.m497a(this.f67542c.m350e()).trim();
        C20779c.m505a(trim);
        if (trim.startsWith("*|")) {
            this.f67544e.add(new AbstractC20930b.C20932b(new AbstractC20934d.C20945aj(trim), new AbstractC20934d.C20946ak(trim.replace("*|", ":"))));
            return;
        }
        String str = trim;
        if (trim.contains("|")) {
            str = trim.replace("|", ":");
        }
        this.f67544e.add(new AbstractC20934d.C20945aj(str));
    }

    /* renamed from: f */
    private void m179f() {
        C20827j c20827j = new C20827j(this.f67542c.m360a('[', ']'));
        String m355b = c20827j.m355b(f67539b);
        C20779c.m505a(m355b);
        c20827j.m352d();
        if (c20827j.m361a()) {
            if (m355b.startsWith("^")) {
                this.f67544e.add(new AbstractC20934d.C20949d(m355b.substring(1)));
            } else {
                this.f67544e.add(new AbstractC20934d.C20947b(m355b));
            }
        } else if (c20827j.m356b("=")) {
            this.f67544e.add(new AbstractC20934d.C20950e(m355b, c20827j.m347g()));
        } else if (c20827j.m356b("!=")) {
            this.f67544e.add(new AbstractC20934d.C20954i(m355b, c20827j.m347g()));
        } else if (c20827j.m356b("^=")) {
            this.f67544e.add(new AbstractC20934d.C20955j(m355b, c20827j.m347g()));
        } else if (c20827j.m356b("$=")) {
            this.f67544e.add(new AbstractC20934d.C20952g(m355b, c20827j.m347g()));
        } else if (c20827j.m356b("*=")) {
            this.f67544e.add(new AbstractC20934d.C20951f(m355b, c20827j.m347g()));
        } else if (!c20827j.m356b("~=")) {
            throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f67543d, c20827j.m347g());
        } else {
            this.f67544e.add(new AbstractC20934d.C20953h(m355b, Pattern.compile(c20827j.m347g())));
        }
    }

    /* renamed from: g */
    private void m178g() {
        this.f67544e.add(new AbstractC20934d.C20935a());
    }

    /* renamed from: h */
    private void m177h() {
        this.f67544e.add(new AbstractC20934d.C20965t(m174k()));
    }

    /* renamed from: i */
    private void m176i() {
        this.f67544e.add(new AbstractC20934d.C20964s(m174k()));
    }

    /* renamed from: j */
    private void m175j() {
        this.f67544e.add(new AbstractC20934d.C20962q(m174k()));
    }

    /* renamed from: k */
    private int m174k() {
        String trim = this.f67542c.m351d(")").trim();
        C20779c.m502a(C20782c.m487b(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    /* renamed from: l */
    private void m173l() {
        this.f67542c.m353c(":has");
        String m360a = this.f67542c.m360a('(', ')');
        C20779c.m504a(m360a, ":has(el) subselect must not be empty");
        this.f67544e.add(new AbstractC20977i.C20978a(m187a(m360a)));
    }

    /* renamed from: m */
    private void m172m() {
        this.f67542c.m353c(":containsData");
        String m349e = C20827j.m349e(this.f67542c.m360a('(', ')'));
        C20779c.m504a(m349e, ":containsData(text) query must not be empty");
        this.f67544e.add(new AbstractC20934d.C20957l(m349e));
    }

    /* renamed from: n */
    private void m171n() {
        this.f67542c.m353c(":not");
        String m360a = this.f67542c.m360a('(', ')');
        C20779c.m504a(m360a, ":not(selector) subselect must not be empty");
        this.f67544e.add(new AbstractC20977i.C20981d(m187a(m360a)));
    }
}
