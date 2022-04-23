package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.h;
import org.jsoup.select.d;
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/i.class */
abstract class i extends org.jsoup.select.d {

    /* renamed from: a  reason: collision with root package name */
    org.jsoup.select.d f39338a;

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$a.class */
    static final class a extends i {
        public a(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            Iterator<h> it2 = org.jsoup.select.a.a(new d.a(), hVar2).iterator();
            while (it2.hasNext()) {
                h next = it2.next();
                if (next != hVar2 && this.f39338a.a(hVar2, next)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format(":has(%s)", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$b.class */
    static final class b extends i {
        public b(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            h hVar3;
            return (hVar == hVar2 || (hVar3 = (h) hVar2.g) == null || !this.f39338a.a(hVar, hVar3)) ? false : true;
        }

        public final String toString() {
            return String.format(":ImmediateParent%s", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$c.class */
    static final class c extends i {
        public c(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            h p;
            return (hVar == hVar2 || (p = hVar2.p()) == null || !this.f39338a.a(hVar, p)) ? false : true;
        }

        public final String toString() {
            return String.format(":prev%s", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$d.class */
    static final class d extends i {
        public d(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            return !this.f39338a.a(hVar, hVar2);
        }

        public final String toString() {
            return String.format(":not%s", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$e.class */
    static final class e extends i {
        public e(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            h hVar3;
            h hVar4 = hVar2;
            if (hVar == hVar2) {
                return false;
            }
            do {
                hVar3 = (h) hVar4.g;
                if (this.f39338a.a(hVar, hVar3)) {
                    return true;
                }
                hVar4 = hVar3;
            } while (hVar3 != hVar);
            return false;
        }

        public final String toString() {
            return String.format(":parent%s", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$f.class */
    static final class f extends i {
        public f(org.jsoup.select.d dVar) {
            this.f39338a = dVar;
        }

        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            if (hVar == hVar2) {
                return false;
            }
            for (h p = hVar2.p(); p != null; p = p.p()) {
                if (this.f39338a.a(hVar, p)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format(":prev*%s", this.f39338a);
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$g.class */
    static final class g extends org.jsoup.select.d {
        @Override // org.jsoup.select.d
        public final boolean a(h hVar, h hVar2) {
            return hVar == hVar2;
        }
    }

    i() {
    }
}
