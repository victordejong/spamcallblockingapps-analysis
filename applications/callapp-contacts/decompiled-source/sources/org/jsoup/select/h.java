package org.jsoup.select;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.a.c;
import org.jsoup.c.j;
import org.jsoup.select.Selector;
import org.jsoup.select.b;
import org.jsoup.select.d;
import org.jsoup.select.i;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f39334a = {",", ">", "+", "~", StringUtils.SPACE};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f39335b = {"=", "!=", "^=", "$=", "*=", "~="};
    private static final Pattern f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    private static final Pattern g = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: c  reason: collision with root package name */
    private j f39336c;

    /* renamed from: d  reason: collision with root package name */
    private String f39337d;
    private List<d> e = new ArrayList();

    private h(String str) {
        c.a(str);
        String trim = str.trim();
        this.f39337d = trim;
        this.f39336c = new j(trim);
    }

    private String a() {
        StringBuilder a2 = org.jsoup.b.c.a();
        while (!this.f39336c.a()) {
            if (!this.f39336c.a("(")) {
                if (!this.f39336c.a("[")) {
                    if (this.f39336c.a(f39334a)) {
                        break;
                    }
                    a2.append(this.f39336c.c());
                } else {
                    a2.append("[");
                    a2.append(this.f39336c.a('[', ']'));
                    a2.append("]");
                }
            } else {
                a2.append("(");
                a2.append(this.f39336c.a('(', ')'));
                a2.append(")");
            }
        }
        return org.jsoup.b.c.a(a2);
    }

    public static d a(String str) {
        try {
            h hVar = new h(str);
            hVar.f39336c.d();
            if (hVar.f39336c.a(f39334a)) {
                hVar.e.add(new i.g());
                hVar.a(hVar.f39336c.c());
            } else {
                hVar.b();
            }
            while (!hVar.f39336c.a()) {
                boolean d2 = hVar.f39336c.d();
                if (hVar.f39336c.a(f39334a)) {
                    hVar.a(hVar.f39336c.c());
                } else if (d2) {
                    hVar.a(' ');
                } else {
                    hVar.b();
                }
            }
            return hVar.e.size() == 1 ? hVar.e.get(0) : new b.a(hVar.e);
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage(), new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(char r10) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.h.a(char):void");
    }

    private void a(boolean z) {
        this.f39336c.c(z ? ":containsOwn" : ":contains");
        String e = j.e(this.f39336c.a('(', ')'));
        c.a(e, ":contains(text) query must not be empty");
        if (z) {
            this.e.add(new d.m(e));
        } else {
            this.e.add(new d.n(e));
        }
    }

    private void a(boolean z, boolean z2) {
        String trim = org.jsoup.b.b.a(this.f39336c.d(")")).trim();
        Matcher matcher = f.matcher(trim);
        Matcher matcher2 = g.matcher(trim);
        int i = 2;
        int i2 = 0;
        i2 = 0;
        if ("odd".equals(trim)) {
            i2 = 1;
        } else if (!"even".equals(trim)) {
            if (matcher.matches()) {
                i = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                if (matcher.group(4) != null) {
                    i2 = Integer.parseInt(matcher.group(4).replaceFirst("^\\+", ""));
                }
            } else if (matcher2.matches()) {
                i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i = 0;
            } else {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", trim);
            }
        }
        if (z2) {
            if (z) {
                this.e.add(new d.ab(i, i2));
            } else {
                this.e.add(new d.ac(i, i2));
            }
        } else if (z) {
            this.e.add(new d.aa(i, i2));
        } else {
            this.e.add(new d.z(i, i2));
        }
    }

    private void b() {
        if (this.f39336c.b("#")) {
            c();
        } else if (this.f39336c.b(".")) {
            d();
        } else if (this.f39336c.b() || this.f39336c.a("*|")) {
            e();
        } else if (this.f39336c.a("[")) {
            f();
        } else if (this.f39336c.b("*")) {
            g();
        } else if (this.f39336c.b(":lt(")) {
            h();
        } else if (this.f39336c.b(":gt(")) {
            i();
        } else if (this.f39336c.b(":eq(")) {
            j();
        } else if (this.f39336c.a(":has(")) {
            l();
        } else if (this.f39336c.a(":contains(")) {
            a(false);
        } else if (this.f39336c.a(":containsOwn(")) {
            a(true);
        } else if (this.f39336c.a(":containsData(")) {
            m();
        } else if (this.f39336c.a(":matches(")) {
            b(false);
        } else if (this.f39336c.a(":matchesOwn(")) {
            b(true);
        } else if (this.f39336c.a(":not(")) {
            n();
        } else if (this.f39336c.b(":nth-child(")) {
            a(false, false);
        } else if (this.f39336c.b(":nth-last-child(")) {
            a(true, false);
        } else if (this.f39336c.b(":nth-of-type(")) {
            a(false, true);
        } else if (this.f39336c.b(":nth-last-of-type(")) {
            a(true, true);
        } else if (this.f39336c.b(":first-child")) {
            this.e.add(new d.v());
        } else if (this.f39336c.b(":last-child")) {
            this.e.add(new d.x());
        } else if (this.f39336c.b(":first-of-type")) {
            this.e.add(new d.w());
        } else if (this.f39336c.b(":last-of-type")) {
            this.e.add(new d.y());
        } else if (this.f39336c.b(":only-child")) {
            this.e.add(new d.ad());
        } else if (this.f39336c.b(":only-of-type")) {
            this.e.add(new d.ae());
        } else if (this.f39336c.b(":empty")) {
            this.e.add(new d.u());
        } else if (this.f39336c.b(":root")) {
            this.e.add(new d.af());
        } else if (this.f39336c.b(":matchText")) {
            this.e.add(new d.ag());
        } else {
            throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f39337d, this.f39336c.g());
        }
    }

    private void b(boolean z) {
        this.f39336c.c(z ? ":matchesOwn" : ":matches");
        String a2 = this.f39336c.a('(', ')');
        c.a(a2, ":matches(regex) query must not be empty");
        if (z) {
            this.e.add(new d.ai(Pattern.compile(a2)));
        } else {
            this.e.add(new d.ah(Pattern.compile(a2)));
        }
    }

    private void c() {
        String f2 = this.f39336c.f();
        c.a(f2);
        this.e.add(new d.p(f2));
    }

    private void d() {
        String f2 = this.f39336c.f();
        c.a(f2);
        this.e.add(new d.k(f2.trim()));
    }

    private void e() {
        String trim = org.jsoup.b.b.a(this.f39336c.e()).trim();
        c.a(trim);
        if (trim.startsWith("*|")) {
            this.e.add(new b.C0753b(new d.aj(trim), new d.ak(trim.replace("*|", ":"))));
            return;
        }
        String str = trim;
        if (trim.contains("|")) {
            str = trim.replace("|", ":");
        }
        this.e.add(new d.aj(str));
    }

    private void f() {
        j jVar = new j(this.f39336c.a('[', ']'));
        String b2 = jVar.b(f39335b);
        c.a(b2);
        jVar.d();
        if (jVar.a()) {
            if (b2.startsWith("^")) {
                this.e.add(new d.C0754d(b2.substring(1)));
            } else {
                this.e.add(new d.b(b2));
            }
        } else if (jVar.b("=")) {
            this.e.add(new d.e(b2, jVar.g()));
        } else if (jVar.b("!=")) {
            this.e.add(new d.i(b2, jVar.g()));
        } else if (jVar.b("^=")) {
            this.e.add(new d.j(b2, jVar.g()));
        } else if (jVar.b("$=")) {
            this.e.add(new d.g(b2, jVar.g()));
        } else if (jVar.b("*=")) {
            this.e.add(new d.f(b2, jVar.g()));
        } else if (jVar.b("~=")) {
            this.e.add(new d.h(b2, Pattern.compile(jVar.g())));
        } else {
            throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f39337d, jVar.g());
        }
    }

    private void g() {
        this.e.add(new d.a());
    }

    private void h() {
        this.e.add(new d.t(k()));
    }

    private void i() {
        this.e.add(new d.s(k()));
    }

    private void j() {
        this.e.add(new d.q(k()));
    }

    private int k() {
        String trim = this.f39336c.d(")").trim();
        c.a(org.jsoup.b.c.b(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    private void l() {
        this.f39336c.c(":has");
        String a2 = this.f39336c.a('(', ')');
        c.a(a2, ":has(el) subselect must not be empty");
        this.e.add(new i.a(a(a2)));
    }

    private void m() {
        this.f39336c.c(":containsData");
        String e = j.e(this.f39336c.a('(', ')'));
        c.a(e, ":containsData(text) query must not be empty");
        this.e.add(new d.l(e));
    }

    private void n() {
        this.f39336c.c(":not");
        String a2 = this.f39336c.a('(', ')');
        c.a(a2, ":not(selector) subselect must not be empty");
        this.e.add(new i.d(a(a2)));
    }
}
