package org.jsoup.select;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.jsoup.nodes.AbstractC20921m;
import org.jsoup.nodes.C20900a;
import org.jsoup.nodes.C20901b;
import org.jsoup.nodes.C20904d;
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20910g;
import org.jsoup.nodes.C20911h;
import org.jsoup.nodes.C20924o;
import org.jsoup.nodes.C20925p;
import org.jsoup.nodes.C20926q;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
import org.jsoup.p592c.C20815h;
/* renamed from: org.jsoup.select.d */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/d.class */
public abstract class AbstractC20934d {

    /* renamed from: org.jsoup.select.d$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$a.class */
    public static final class C20935a extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return true;
        }

        public final String toString() {
            return "*";
        }
    }

    /* renamed from: org.jsoup.select.d$aa */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$aa.class */
    public static final class C20936aa extends AbstractC20960o {
        public C20936aa(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final int mo195a(C20911h c20911h) {
            return ((C20911h) c20911h.f67501g).m265m().size() - c20911h.m262q();
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final String mo196a() {
            return "nth-last-child";
        }
    }

    /* renamed from: org.jsoup.select.d$ab */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ab.class */
    public static class C20937ab extends AbstractC20960o {
        public C20937ab(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final int mo195a(C20911h c20911h) {
            C20933c m265m = ((C20911h) c20911h.f67501g).m265m();
            int m262q = c20911h.m262q();
            int i = 0;
            while (true) {
                int i2 = i;
                if (m262q < m265m.size()) {
                    int i3 = i2;
                    if (m265m.get(m262q).f67481e.equals(c20911h.f67481e)) {
                        i3 = i2 + 1;
                    }
                    m262q++;
                    i = i3;
                } else {
                    return i2;
                }
            }
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final String mo196a() {
            return "nth-last-of-type";
        }
    }

    /* renamed from: org.jsoup.select.d$ac */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ac.class */
    public static class C20938ac extends AbstractC20960o {
        public C20938ac(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final int mo195a(C20911h c20911h) {
            int i;
            C20911h next;
            Iterator<C20911h> it2 = ((C20911h) c20911h.f67501g).m265m().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
                i = i2;
                if (next.f67481e.equals(c20911h.f67481e)) {
                    i = i2 + 1;
                }
                i2 = i;
            } while (next != c20911h);
            return i;
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final String mo196a() {
            return "nth-of-type";
        }
    }

    /* renamed from: org.jsoup.select.d$ad */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ad.class */
    public static final class C20939ad extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20933c c20933c;
            C20911h c20911h3 = (C20911h) c20911h2.f67501g;
            if (c20911h3 == null || (c20911h3 instanceof C20906f)) {
                return false;
            }
            if (c20911h2.f67501g == null) {
                c20933c = new C20933c(0);
            } else {
                List<C20911h> m264n = ((C20911h) c20911h2.f67501g).m264n();
                c20933c = new C20933c(m264n.size() - 1);
                for (C20911h c20911h4 : m264n) {
                    if (c20911h4 != c20911h2) {
                        c20933c.add(c20911h4);
                    }
                }
            }
            return c20933c.isEmpty();
        }

        public final String toString() {
            return ":only-child";
        }
    }

    /* renamed from: org.jsoup.select.d$ae */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ae.class */
    public static final class C20940ae extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3 = (C20911h) c20911h2.f67501g;
            if (c20911h3 == null || (c20911h3 instanceof C20906f)) {
                return false;
            }
            Iterator<C20911h> it2 = c20911h3.m265m().iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (it2.next().f67481e.equals(c20911h2.f67481e)) {
                    i++;
                }
            }
            return i == 1;
        }

        public final String toString() {
            return ":only-of-type";
        }
    }

    /* renamed from: org.jsoup.select.d$af */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$af.class */
    public static final class C20941af extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3 = c20911h;
            if (c20911h instanceof C20906f) {
                c20911h3 = c20911h.m266l();
            }
            return c20911h2 == c20911h3;
        }

        public final String toString() {
            return ":root";
        }
    }

    /* renamed from: org.jsoup.select.d$ag */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ag.class */
    public static final class C20942ag extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            if (c20911h2 instanceof C20924o) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            for (AbstractC20921m abstractC20921m : c20911h2.f67482f) {
                if (abstractC20921m instanceof C20925p) {
                    arrayList.add((C20925p) abstractC20921m);
                }
            }
            for (AbstractC20921m abstractC20921m2 : Collections.unmodifiableList(arrayList)) {
                C20924o c20924o = new C20924o(C20815h.m393a(c20911h2.f67481e.f67387a), c20911h2.mo205g(), c20911h2.mo227j());
                abstractC20921m2.m230h(c20924o);
                c20924o.m274a(abstractC20921m2);
            }
            return false;
        }

        public final String toString() {
            return ":matchText";
        }
    }

    /* renamed from: org.jsoup.select.d$ah */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ah.class */
    public static final class C20943ah extends AbstractC20934d {

        /* renamed from: a */
        private Pattern f67514a;

        public C20943ah(Pattern pattern) {
            this.f67514a = pattern;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return this.f67514a.matcher(c20911h2.m261r()).find();
        }

        public final String toString() {
            return String.format(":matches(%s)", this.f67514a);
        }
    }

    /* renamed from: org.jsoup.select.d$ai */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ai.class */
    public static final class C20944ai extends AbstractC20934d {

        /* renamed from: a */
        private Pattern f67515a;

        public C20944ai(Pattern pattern) {
            this.f67515a = pattern;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return this.f67515a.matcher(c20911h2.m260s()).find();
        }

        public final String toString() {
            return String.format(":matchesOwn(%s)", this.f67515a);
        }
    }

    /* renamed from: org.jsoup.select.d$aj */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$aj.class */
    public static final class C20945aj extends AbstractC20934d {

        /* renamed from: a */
        private String f67516a;

        public C20945aj(String str) {
            this.f67516a = str;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.f67481e.f67388b.equals(this.f67516a);
        }

        public final String toString() {
            return String.format("%s", this.f67516a);
        }
    }

    /* renamed from: org.jsoup.select.d$ak */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ak.class */
    public static final class C20946ak extends AbstractC20934d {

        /* renamed from: a */
        private String f67517a;

        public C20946ak(String str) {
            this.f67517a = str;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.f67481e.f67388b.endsWith(this.f67517a);
        }

        public final String toString() {
            return String.format("%s", this.f67517a);
        }
    }

    /* renamed from: org.jsoup.select.d$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$b.class */
    public static final class C20947b extends AbstractC20934d {

        /* renamed from: a */
        private String f67518a;

        public C20947b(String str) {
            this.f67518a = str;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67518a);
        }

        public final String toString() {
            return String.format("[%s]", this.f67518a);
        }
    }

    /* renamed from: org.jsoup.select.d$c */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$c.class */
    public static abstract class AbstractC20948c extends AbstractC20934d {

        /* renamed from: a */
        String f67519a;

        /* renamed from: b */
        String f67520b;

        public AbstractC20948c(String str, String str2) {
            this(str, str2, true);
        }

        public AbstractC20948c(String str, String str2, boolean z) {
            C20779c.m505a(str);
            C20779c.m505a(str2);
            this.f67519a = C20781b.m497a(str).trim();
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            String substring = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.f67520b = z ? C20781b.m497a(substring).trim() : z2 ? C20781b.m497a(substring) : C20781b.m497a(substring).trim();
        }
    }

    /* renamed from: org.jsoup.select.d$d */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$d.class */
    public static final class C20949d extends AbstractC20934d {

        /* renamed from: a */
        private String f67521a;

        public C20949d(String str) {
            C20779c.m505a(str);
            this.f67521a = C20781b.m497a(str);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20901b mo227j = c20911h2.mo227j();
            ArrayList arrayList = new ArrayList(mo227j.f67452a);
            for (int i = 0; i < mo227j.f67452a; i++) {
                if (!C20901b.m289i(mo227j.f67453b[i])) {
                    arrayList.add(new C20900a(mo227j.f67453b[i], mo227j.f67454c[i], mo227j));
                }
            }
            for (C20900a c20900a : Collections.unmodifiableList(arrayList)) {
                if (C20781b.m497a(c20900a.f67448a).startsWith(this.f67521a)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format("[^%s]", this.f67521a);
        }
    }

    /* renamed from: org.jsoup.select.d$e */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$e.class */
    public static final class C20950e extends AbstractC20948c {
        public C20950e(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67519a) && this.f67520b.equalsIgnoreCase(c20911h2.mo208c(this.f67519a).trim());
        }

        public final String toString() {
            return String.format("[%s=%s]", this.f67519a, this.f67520b);
        }
    }

    /* renamed from: org.jsoup.select.d$f */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$f.class */
    public static final class C20951f extends AbstractC20948c {
        public C20951f(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67519a) && C20781b.m497a(c20911h2.mo208c(this.f67519a)).contains(this.f67520b);
        }

        public final String toString() {
            return String.format("[%s*=%s]", this.f67519a, this.f67520b);
        }
    }

    /* renamed from: org.jsoup.select.d$g */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$g.class */
    public static final class C20952g extends AbstractC20948c {
        public C20952g(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67519a) && C20781b.m497a(c20911h2.mo208c(this.f67519a)).endsWith(this.f67520b);
        }

        public final String toString() {
            return String.format("[%s$=%s]", this.f67519a, this.f67520b);
        }
    }

    /* renamed from: org.jsoup.select.d$h */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$h.class */
    public static final class C20953h extends AbstractC20934d {

        /* renamed from: a */
        String f67522a;

        /* renamed from: b */
        Pattern f67523b;

        public C20953h(String str, Pattern pattern) {
            this.f67522a = C20781b.m497a(str).trim();
            this.f67523b = pattern;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67522a) && this.f67523b.matcher(c20911h2.mo208c(this.f67522a)).find();
        }

        public final String toString() {
            return String.format("[%s~=%s]", this.f67522a, this.f67523b.toString());
        }
    }

    /* renamed from: org.jsoup.select.d$i */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$i.class */
    public static final class C20954i extends AbstractC20948c {
        public C20954i(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return !this.f67520b.equalsIgnoreCase(c20911h2.mo208c(this.f67519a));
        }

        public final String toString() {
            return String.format("[%s!=%s]", this.f67519a, this.f67520b);
        }
    }

    /* renamed from: org.jsoup.select.d$j */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$j.class */
    public static final class C20955j extends AbstractC20948c {
        public C20955j(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.mo210b(this.f67519a) && C20781b.m497a(c20911h2.mo208c(this.f67519a)).startsWith(this.f67520b);
        }

        public final String toString() {
            return String.format("[%s^=%s]", this.f67519a, this.f67520b);
        }
    }

    /* renamed from: org.jsoup.select.d$k */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$k.class */
    public static final class C20956k extends AbstractC20934d {

        /* renamed from: a */
        private String f67524a;

        public C20956k(String str) {
            this.f67524a = str;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.m268e(this.f67524a);
        }

        public final String toString() {
            return String.format(".%s", this.f67524a);
        }
    }

    /* renamed from: org.jsoup.select.d$l */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$l.class */
    public static final class C20957l extends AbstractC20934d {

        /* renamed from: a */
        private String f67525a;

        public C20957l(String str) {
            this.f67525a = C20781b.m497a(str);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return C20781b.m497a(c20911h2.m259t()).contains(this.f67525a);
        }

        public final String toString() {
            return String.format(":containsData(%s)", this.f67525a);
        }
    }

    /* renamed from: org.jsoup.select.d$m */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$m.class */
    public static final class C20958m extends AbstractC20934d {

        /* renamed from: a */
        private String f67526a;

        public C20958m(String str) {
            this.f67526a = C20781b.m497a(str);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return C20781b.m497a(c20911h2.m260s()).contains(this.f67526a);
        }

        public final String toString() {
            return String.format(":containsOwn(%s)", this.f67526a);
        }
    }

    /* renamed from: org.jsoup.select.d$n */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$n.class */
    public static final class C20959n extends AbstractC20934d {

        /* renamed from: a */
        private String f67527a;

        public C20959n(String str) {
            this.f67527a = C20781b.m497a(str);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return C20781b.m497a(c20911h2.m261r()).contains(this.f67527a);
        }

        public final String toString() {
            return String.format(":contains(%s)", this.f67527a);
        }
    }

    /* renamed from: org.jsoup.select.d$o */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$o.class */
    public static abstract class AbstractC20960o extends AbstractC20934d {

        /* renamed from: a */
        protected final int f67528a;

        /* renamed from: b */
        protected final int f67529b;

        public AbstractC20960o(int i) {
            this(0, i);
        }

        public AbstractC20960o(int i, int i2) {
            this.f67528a = i;
            this.f67529b = i2;
        }

        /* renamed from: a */
        protected abstract int mo195a(C20911h c20911h);

        /* renamed from: a */
        protected abstract String mo196a();

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3 = (C20911h) c20911h2.f67501g;
            if (c20911h3 == null || (c20911h3 instanceof C20906f)) {
                return false;
            }
            int mo195a = mo195a(c20911h2);
            int i = this.f67528a;
            if (i == 0) {
                return mo195a == this.f67529b;
            }
            int i2 = this.f67529b;
            return (mo195a - i2) * i >= 0 && (mo195a - i2) % i == 0;
        }

        public String toString() {
            return this.f67528a == 0 ? String.format(":%s(%d)", mo196a(), Integer.valueOf(this.f67529b)) : this.f67529b == 0 ? String.format(":%s(%dn)", mo196a(), Integer.valueOf(this.f67528a)) : String.format(":%s(%dn%+d)", mo196a(), Integer.valueOf(this.f67528a), Integer.valueOf(this.f67529b));
        }
    }

    /* renamed from: org.jsoup.select.d$p */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$p.class */
    public static final class C20961p extends AbstractC20934d {

        /* renamed from: a */
        private String f67530a;

        public C20961p(String str) {
            this.f67530a = str;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return this.f67530a.equals(c20911h2.m267k());
        }

        public final String toString() {
            return String.format("#%s", this.f67530a);
        }
    }

    /* renamed from: org.jsoup.select.d$q */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$q.class */
    public static final class C20962q extends AbstractC20963r {
        public C20962q(int i) {
            super(i);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.m262q() == this.f67531a;
        }

        public final String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f67531a));
        }
    }

    /* renamed from: org.jsoup.select.d$r */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$r.class */
    public static abstract class AbstractC20963r extends AbstractC20934d {

        /* renamed from: a */
        int f67531a;

        public AbstractC20963r(int i) {
            this.f67531a = i;
        }
    }

    /* renamed from: org.jsoup.select.d$s */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$s.class */
    public static final class C20964s extends AbstractC20963r {
        public C20964s(int i) {
            super(i);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h2.m262q() > this.f67531a;
        }

        public final String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f67531a));
        }
    }

    /* renamed from: org.jsoup.select.d$t */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$t.class */
    public static final class C20965t extends AbstractC20963r {
        public C20965t(int i) {
            super(i);
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h != c20911h2 && c20911h2.m262q() < this.f67531a;
        }

        public final String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f67531a));
        }
    }

    /* renamed from: org.jsoup.select.d$u */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$u.class */
    public static final class C20966u extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            for (AbstractC20921m abstractC20921m : c20911h2.m223w()) {
                if (!(abstractC20921m instanceof C20904d) && !(abstractC20921m instanceof C20926q) && !(abstractC20921m instanceof C20910g)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return ":empty";
        }
    }

    /* renamed from: org.jsoup.select.d$v */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$v.class */
    public static final class C20967v extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3 = (C20911h) c20911h2.f67501g;
            return c20911h3 != null && !(c20911h3 instanceof C20906f) && c20911h2.m262q() == 0;
        }

        public final String toString() {
            return ":first-child";
        }
    }

    /* renamed from: org.jsoup.select.d$w */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$w.class */
    public static final class C20968w extends C20938ac {
        public C20968w() {
            super(0, 1);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        public final String toString() {
            return ":first-of-type";
        }
    }

    /* renamed from: org.jsoup.select.d$x */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$x.class */
    public static final class C20969x extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3 = (C20911h) c20911h2.f67501g;
            return c20911h3 != null && !(c20911h3 instanceof C20906f) && c20911h2.m262q() == c20911h3.m265m().size() - 1;
        }

        public final String toString() {
            return ":last-child";
        }
    }

    /* renamed from: org.jsoup.select.d$y */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$y.class */
    public static final class C20970y extends C20937ab {
        public C20970y() {
            super(0, 1);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        public final String toString() {
            return ":last-of-type";
        }
    }

    /* renamed from: org.jsoup.select.d$z */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$z.class */
    public static final class C20971z extends AbstractC20960o {
        public C20971z(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final int mo195a(C20911h c20911h) {
            return c20911h.m262q() + 1;
        }

        @Override // org.jsoup.select.AbstractC20934d.AbstractC20960o
        /* renamed from: a */
        protected final String mo196a() {
            return "nth-child";
        }
    }

    /* renamed from: a */
    public abstract boolean mo170a(C20911h c20911h, C20911h c20911h2);
}
