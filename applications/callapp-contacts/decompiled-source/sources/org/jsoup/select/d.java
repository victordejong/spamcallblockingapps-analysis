package org.jsoup.select;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/d.class */
public abstract class d {

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$a.class */
    public static final class a extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return true;
        }

        public final String toString() {
            return "*";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$aa.class */
    public static final class aa extends o {
        public aa(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.d.o
        protected final int a(org.jsoup.nodes.h hVar) {
            return ((org.jsoup.nodes.h) hVar.g).m().size() - hVar.q();
        }

        @Override // org.jsoup.select.d.o
        protected final String a() {
            return "nth-last-child";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ab.class */
    public static class ab extends o {
        public ab(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.d.o
        protected final int a(org.jsoup.nodes.h hVar) {
            org.jsoup.select.c m = ((org.jsoup.nodes.h) hVar.g).m();
            int i = 0;
            for (int q = hVar.q(); q < m.size(); q++) {
                i = i;
                if (m.get(q).e.equals(hVar.e)) {
                    i++;
                }
            }
            return i;
        }

        @Override // org.jsoup.select.d.o
        protected final String a() {
            return "nth-last-of-type";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ac.class */
    public static class ac extends o {
        public ac(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.d.o
        protected final int a(org.jsoup.nodes.h hVar) {
            int i;
            org.jsoup.nodes.h next;
            Iterator<org.jsoup.nodes.h> it2 = ((org.jsoup.nodes.h) hVar.g).m().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
                i = i2;
                if (next.e.equals(hVar.e)) {
                    i = i2 + 1;
                }
                i2 = i;
            } while (next != hVar);
            return i;
        }

        @Override // org.jsoup.select.d.o
        protected final String a() {
            return "nth-of-type";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ad.class */
    public static final class ad extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.select.c cVar;
            org.jsoup.nodes.h hVar3 = (org.jsoup.nodes.h) hVar2.g;
            if (hVar3 == null || (hVar3 instanceof org.jsoup.nodes.f)) {
                return false;
            }
            if (hVar2.g == null) {
                cVar = new org.jsoup.select.c(0);
            } else {
                List<org.jsoup.nodes.h> n = ((org.jsoup.nodes.h) hVar2.g).n();
                cVar = new org.jsoup.select.c(n.size() - 1);
                for (org.jsoup.nodes.h hVar4 : n) {
                    if (hVar4 != hVar2) {
                        cVar.add(hVar4);
                    }
                }
            }
            return cVar.isEmpty();
        }

        public final String toString() {
            return ":only-child";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ae.class */
    public static final class ae extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.h hVar3 = (org.jsoup.nodes.h) hVar2.g;
            if (hVar3 == null || (hVar3 instanceof org.jsoup.nodes.f)) {
                return false;
            }
            Iterator<org.jsoup.nodes.h> it2 = hVar3.m().iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (it2.next().e.equals(hVar2.e)) {
                    i++;
                }
            }
            return i == 1;
        }

        public final String toString() {
            return ":only-of-type";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$af.class */
    public static final class af extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.h hVar3 = hVar;
            if (hVar instanceof org.jsoup.nodes.f) {
                hVar3 = hVar.l();
            }
            return hVar2 == hVar3;
        }

        public final String toString() {
            return ":root";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ag.class */
    public static final class ag extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            if (hVar2 instanceof org.jsoup.nodes.o) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            for (org.jsoup.nodes.m mVar : hVar2.f) {
                if (mVar instanceof org.jsoup.nodes.p) {
                    arrayList.add((org.jsoup.nodes.p) mVar);
                }
            }
            for (org.jsoup.nodes.m mVar2 : Collections.unmodifiableList(arrayList)) {
                org.jsoup.nodes.o oVar = new org.jsoup.nodes.o(org.jsoup.c.h.a(hVar2.e.f39231a), hVar2.g(), hVar2.j());
                mVar2.h(oVar);
                oVar.a(mVar2);
            }
            return false;
        }

        public final String toString() {
            return ":matchText";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ah.class */
    public static final class ah extends d {

        /* renamed from: a  reason: collision with root package name */
        private Pattern f39312a;

        public ah(Pattern pattern) {
            this.f39312a = pattern;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return this.f39312a.matcher(hVar2.r()).find();
        }

        public final String toString() {
            return String.format(":matches(%s)", this.f39312a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ai.class */
    public static final class ai extends d {

        /* renamed from: a  reason: collision with root package name */
        private Pattern f39313a;

        public ai(Pattern pattern) {
            this.f39313a = pattern;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return this.f39313a.matcher(hVar2.s()).find();
        }

        public final String toString() {
            return String.format(":matchesOwn(%s)", this.f39313a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$aj.class */
    public static final class aj extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39314a;

        public aj(String str) {
            this.f39314a = str;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.e.f39232b.equals(this.f39314a);
        }

        public final String toString() {
            return String.format("%s", this.f39314a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$ak.class */
    public static final class ak extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39315a;

        public ak(String str) {
            this.f39315a = str;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.e.f39232b.endsWith(this.f39315a);
        }

        public final String toString() {
            return String.format("%s", this.f39315a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$b.class */
    public static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39316a;

        public b(String str) {
            this.f39316a = str;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39316a);
        }

        public final String toString() {
            return String.format("[%s]", this.f39316a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$c.class */
    public static abstract class c extends d {

        /* renamed from: a  reason: collision with root package name */
        String f39317a;

        /* renamed from: b  reason: collision with root package name */
        String f39318b;

        public c(String str, String str2) {
            this(str, str2, true);
        }

        public c(String str, String str2, boolean z) {
            org.jsoup.a.c.a(str);
            org.jsoup.a.c.a(str2);
            this.f39317a = org.jsoup.b.b.a(str).trim();
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            String substring = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.f39318b = z ? org.jsoup.b.b.a(substring).trim() : z2 ? org.jsoup.b.b.a(substring) : org.jsoup.b.b.a(substring).trim();
        }
    }

    /* renamed from: org.jsoup.select.d$d  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$d.class */
    public static final class C0754d extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39319a;

        public C0754d(String str) {
            org.jsoup.a.c.a(str);
            this.f39319a = org.jsoup.b.b.a(str);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.b j = hVar2.j();
            ArrayList arrayList = new ArrayList(j.f39260a);
            for (int i = 0; i < j.f39260a; i++) {
                if (!org.jsoup.nodes.b.i(j.f39261b[i])) {
                    arrayList.add(new org.jsoup.nodes.a(j.f39261b[i], j.f39262c[i], j));
                }
            }
            for (org.jsoup.nodes.a aVar : Collections.unmodifiableList(arrayList)) {
                if (org.jsoup.b.b.a(aVar.f39256a).startsWith(this.f39319a)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format("[^%s]", this.f39319a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$e.class */
    public static final class e extends c {
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39317a) && this.f39318b.equalsIgnoreCase(hVar2.c(this.f39317a).trim());
        }

        public final String toString() {
            return String.format("[%s=%s]", this.f39317a, this.f39318b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$f.class */
    public static final class f extends c {
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39317a) && org.jsoup.b.b.a(hVar2.c(this.f39317a)).contains(this.f39318b);
        }

        public final String toString() {
            return String.format("[%s*=%s]", this.f39317a, this.f39318b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$g.class */
    public static final class g extends c {
        public g(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39317a) && org.jsoup.b.b.a(hVar2.c(this.f39317a)).endsWith(this.f39318b);
        }

        public final String toString() {
            return String.format("[%s$=%s]", this.f39317a, this.f39318b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$h.class */
    public static final class h extends d {

        /* renamed from: a  reason: collision with root package name */
        String f39320a;

        /* renamed from: b  reason: collision with root package name */
        Pattern f39321b;

        public h(String str, Pattern pattern) {
            this.f39320a = org.jsoup.b.b.a(str).trim();
            this.f39321b = pattern;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39320a) && this.f39321b.matcher(hVar2.c(this.f39320a)).find();
        }

        public final String toString() {
            return String.format("[%s~=%s]", this.f39320a, this.f39321b.toString());
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$i.class */
    public static final class i extends c {
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return !this.f39318b.equalsIgnoreCase(hVar2.c(this.f39317a));
        }

        public final String toString() {
            return String.format("[%s!=%s]", this.f39317a, this.f39318b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$j.class */
    public static final class j extends c {
        public j(String str, String str2) {
            super(str, str2, false);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.b(this.f39317a) && org.jsoup.b.b.a(hVar2.c(this.f39317a)).startsWith(this.f39318b);
        }

        public final String toString() {
            return String.format("[%s^=%s]", this.f39317a, this.f39318b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$k.class */
    public static final class k extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39322a;

        public k(String str) {
            this.f39322a = str;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.e(this.f39322a);
        }

        public final String toString() {
            return String.format(".%s", this.f39322a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$l.class */
    public static final class l extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39323a;

        public l(String str) {
            this.f39323a = org.jsoup.b.b.a(str);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return org.jsoup.b.b.a(hVar2.t()).contains(this.f39323a);
        }

        public final String toString() {
            return String.format(":containsData(%s)", this.f39323a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$m.class */
    public static final class m extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39324a;

        public m(String str) {
            this.f39324a = org.jsoup.b.b.a(str);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return org.jsoup.b.b.a(hVar2.s()).contains(this.f39324a);
        }

        public final String toString() {
            return String.format(":containsOwn(%s)", this.f39324a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$n.class */
    public static final class n extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39325a;

        public n(String str) {
            this.f39325a = org.jsoup.b.b.a(str);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return org.jsoup.b.b.a(hVar2.r()).contains(this.f39325a);
        }

        public final String toString() {
            return String.format(":contains(%s)", this.f39325a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$o.class */
    public static abstract class o extends d {

        /* renamed from: a  reason: collision with root package name */
        protected final int f39326a;

        /* renamed from: b  reason: collision with root package name */
        protected final int f39327b;

        public o(int i) {
            this(0, i);
        }

        public o(int i, int i2) {
            this.f39326a = i;
            this.f39327b = i2;
        }

        protected abstract int a(org.jsoup.nodes.h hVar);

        protected abstract String a();

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.h hVar3 = (org.jsoup.nodes.h) hVar2.g;
            if (hVar3 == null || (hVar3 instanceof org.jsoup.nodes.f)) {
                return false;
            }
            int a2 = a(hVar2);
            int i = this.f39326a;
            if (i == 0) {
                return a2 == this.f39327b;
            }
            int i2 = this.f39327b;
            return (a2 - i2) * i >= 0 && (a2 - i2) % i == 0;
        }

        public String toString() {
            return this.f39326a == 0 ? String.format(":%s(%d)", a(), Integer.valueOf(this.f39327b)) : this.f39327b == 0 ? String.format(":%s(%dn)", a(), Integer.valueOf(this.f39326a)) : String.format(":%s(%dn%+d)", a(), Integer.valueOf(this.f39326a), Integer.valueOf(this.f39327b));
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$p.class */
    public static final class p extends d {

        /* renamed from: a  reason: collision with root package name */
        private String f39328a;

        public p(String str) {
            this.f39328a = str;
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return this.f39328a.equals(hVar2.k());
        }

        public final String toString() {
            return String.format("#%s", this.f39328a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$q.class */
    public static final class q extends r {
        public q(int i) {
            super(i);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.q() == this.f39329a;
        }

        public final String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f39329a));
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$r.class */
    public static abstract class r extends d {

        /* renamed from: a  reason: collision with root package name */
        int f39329a;

        public r(int i) {
            this.f39329a = i;
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$s.class */
    public static final class s extends r {
        public s(int i) {
            super(i);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar2.q() > this.f39329a;
        }

        public final String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f39329a));
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$t.class */
    public static final class t extends r {
        public t(int i) {
            super(i);
        }

        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            return hVar != hVar2 && hVar2.q() < this.f39329a;
        }

        public final String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f39329a));
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$u.class */
    public static final class u extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            for (org.jsoup.nodes.m mVar : hVar2.w()) {
                if (!((mVar instanceof org.jsoup.nodes.d) || (mVar instanceof org.jsoup.nodes.q) || (mVar instanceof org.jsoup.nodes.g))) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return ":empty";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$v.class */
    public static final class v extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.h hVar3 = (org.jsoup.nodes.h) hVar2.g;
            return hVar3 != null && !(hVar3 instanceof org.jsoup.nodes.f) && hVar2.q() == 0;
        }

        public final String toString() {
            return ":first-child";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$w.class */
    public static final class w extends ac {
        public w() {
            super(0, 1);
        }

        @Override // org.jsoup.select.d.o
        public final String toString() {
            return ":first-of-type";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$x.class */
    public static final class x extends d {
        @Override // org.jsoup.select.d
        public final boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2) {
            org.jsoup.nodes.h hVar3 = (org.jsoup.nodes.h) hVar2.g;
            return hVar3 != null && !(hVar3 instanceof org.jsoup.nodes.f) && hVar2.q() == hVar3.m().size() - 1;
        }

        public final String toString() {
            return ":last-child";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$y.class */
    public static final class y extends ab {
        public y() {
            super(0, 1);
        }

        @Override // org.jsoup.select.d.o
        public final String toString() {
            return ":last-of-type";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/d$z.class */
    public static final class z extends o {
        public z(int i, int i2) {
            super(i, i2);
        }

        @Override // org.jsoup.select.d.o
        protected final int a(org.jsoup.nodes.h hVar) {
            return hVar.q() + 1;
        }

        @Override // org.jsoup.select.d.o
        protected final String a() {
            return "nth-child";
        }
    }

    public abstract boolean a(org.jsoup.nodes.h hVar, org.jsoup.nodes.h hVar2);
}
