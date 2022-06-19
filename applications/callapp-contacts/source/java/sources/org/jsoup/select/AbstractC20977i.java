package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.C20911h;
import org.jsoup.select.AbstractC20934d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.jsoup.select.i */
/* loaded from: classes5-dex2jar.jar:org/jsoup/select/i.class */
public abstract class AbstractC20977i extends AbstractC20934d {

    /* renamed from: a */
    AbstractC20934d f67545a;

    /* renamed from: org.jsoup.select.i$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$a.class */
    static final class C20978a extends AbstractC20977i {
        public C20978a(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            Iterator<C20911h> it2 = C20927a.m202a(new AbstractC20934d.C20935a(), c20911h2).iterator();
            while (it2.hasNext()) {
                C20911h next = it2.next();
                if (next != c20911h2 && this.f67545a.mo170a(c20911h2, next)) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return String.format(":has(%s)", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$b.class */
    static final class C20979b extends AbstractC20977i {
        public C20979b(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3;
            return (c20911h == c20911h2 || (c20911h3 = (C20911h) c20911h2.f67501g) == null || !this.f67545a.mo170a(c20911h, c20911h3)) ? false : true;
        }

        public final String toString() {
            return String.format(":ImmediateParent%s", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$c */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$c.class */
    static final class C20980c extends AbstractC20977i {
        public C20980c(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h m263p;
            return (c20911h == c20911h2 || (m263p = c20911h2.m263p()) == null || !this.f67545a.mo170a(c20911h, m263p)) ? false : true;
        }

        public final String toString() {
            return String.format(":prev%s", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$d */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$d.class */
    static final class C20981d extends AbstractC20977i {
        public C20981d(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return !this.f67545a.mo170a(c20911h, c20911h2);
        }

        public final String toString() {
            return String.format(":not%s", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$e */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$e.class */
    static final class C20982e extends AbstractC20977i {
        public C20982e(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            C20911h c20911h3;
            C20911h c20911h4 = c20911h2;
            if (c20911h == c20911h2) {
                return false;
            }
            do {
                c20911h3 = (C20911h) c20911h4.f67501g;
                if (this.f67545a.mo170a(c20911h, c20911h3)) {
                    return true;
                }
                c20911h4 = c20911h3;
            } while (c20911h3 != c20911h);
            return false;
        }

        public final String toString() {
            return String.format(":parent%s", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$f */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$f.class */
    static final class C20983f extends AbstractC20977i {
        public C20983f(AbstractC20934d abstractC20934d) {
            this.f67545a = abstractC20934d;
        }

        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            if (c20911h == c20911h2) {
                return false;
            }
            C20911h m263p = c20911h2.m263p();
            while (true) {
                C20911h c20911h3 = m263p;
                if (c20911h3 == null) {
                    return false;
                }
                if (this.f67545a.mo170a(c20911h, c20911h3)) {
                    return true;
                }
                m263p = c20911h3.m263p();
            }
        }

        public final String toString() {
            return String.format(":prev*%s", this.f67545a);
        }
    }

    /* renamed from: org.jsoup.select.i$g */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/select/i$g.class */
    static final class C20984g extends AbstractC20934d {
        @Override // org.jsoup.select.AbstractC20934d
        /* renamed from: a */
        public final boolean mo170a(C20911h c20911h, C20911h c20911h2) {
            return c20911h == c20911h2;
        }
    }

    AbstractC20977i() {
    }
}
