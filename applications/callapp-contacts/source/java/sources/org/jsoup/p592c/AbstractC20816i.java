package org.jsoup.p592c;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.C20901b;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
/* renamed from: org.jsoup.c.i */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/i.class */
public abstract class AbstractC20816i {

    /* renamed from: a */
    EnumC20826i f67396a;

    /* renamed from: org.jsoup.c.i$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$a.class */
    static final class C20818a extends C20819b {
        public C20818a(String str) {
            this.f67397b = str;
        }

        @Override // org.jsoup.p592c.AbstractC20816i.C20819b
        public final String toString() {
            return "<![CDATA[" + this.f67397b + "]]>";
        }
    }

    /* renamed from: org.jsoup.c.i$b */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$b.class */
    public static class C20819b extends AbstractC20816i {

        /* renamed from: b */
        String f67397b;

        public C20819b() {
            super();
            this.f67396a = EnumC20826i.Character;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.AbstractC20816i
        /* renamed from: a */
        public final AbstractC20816i mo376a() {
            this.f67397b = null;
            return this;
        }

        public String toString() {
            return this.f67397b;
        }
    }

    /* renamed from: org.jsoup.c.i$c */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$c.class */
    static final class C20820c extends AbstractC20816i {

        /* renamed from: d */
        private String f67400d;

        /* renamed from: c */
        private final StringBuilder f67399c = new StringBuilder();

        /* renamed from: b */
        boolean f67398b = false;

        public C20820c() {
            super();
            this.f67396a = EnumC20826i.Comment;
        }

        /* renamed from: i */
        private void m378i() {
            String str = this.f67400d;
            if (str != null) {
                this.f67399c.append(str);
                this.f67400d = null;
            }
        }

        /* renamed from: a */
        public final C20820c m381a(char c) {
            m378i();
            this.f67399c.append(c);
            return this;
        }

        /* renamed from: a */
        public final C20820c m380a(String str) {
            m378i();
            if (this.f67399c.length() == 0) {
                this.f67400d = str;
            } else {
                this.f67399c.append(str);
            }
            return this;
        }

        @Override // org.jsoup.p592c.AbstractC20816i
        /* renamed from: a */
        public final AbstractC20816i mo376a() {
            m388a(this.f67399c);
            this.f67400d = null;
            this.f67398b = false;
            return this;
        }

        /* renamed from: h */
        public final String m379h() {
            String str = this.f67400d;
            return str != null ? str : this.f67399c.toString();
        }

        public final String toString() {
            return "<!--" + m379h() + "-->";
        }
    }

    /* renamed from: org.jsoup.c.i$d */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$d.class */
    static final class C20821d extends AbstractC20816i {

        /* renamed from: b */
        final StringBuilder f67401b = new StringBuilder();

        /* renamed from: c */
        String f67402c = null;

        /* renamed from: d */
        final StringBuilder f67403d = new StringBuilder();

        /* renamed from: e */
        final StringBuilder f67404e = new StringBuilder();

        /* renamed from: f */
        boolean f67405f = false;

        public C20821d() {
            super();
            this.f67396a = EnumC20826i.Doctype;
        }

        @Override // org.jsoup.p592c.AbstractC20816i
        /* renamed from: a */
        public final AbstractC20816i mo376a() {
            m388a(this.f67401b);
            this.f67402c = null;
            m388a(this.f67403d);
            m388a(this.f67404e);
            this.f67405f = false;
            return this;
        }
    }

    /* renamed from: org.jsoup.c.i$e */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$e.class */
    static final class C20822e extends AbstractC20816i {
        public C20822e() {
            super();
            this.f67396a = EnumC20826i.EOF;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.p592c.AbstractC20816i
        /* renamed from: a */
        public final AbstractC20816i mo376a() {
            return this;
        }
    }

    /* renamed from: org.jsoup.c.i$f */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$f.class */
    static final class C20823f extends AbstractC20825h {
        public C20823f() {
            this.f67396a = EnumC20826i.EndTag;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("</");
            sb.append(this.f67406b != null ? this.f67406b : "(unset)");
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: org.jsoup.c.i$g */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$g.class */
    public static final class C20824g extends AbstractC20825h {
        public C20824g() {
            this.f67396a = EnumC20826i.StartTag;
        }

        /* renamed from: a */
        public final C20824g m377a(String str, C20901b c20901b) {
            this.f67406b = str;
            this.f67411g = c20901b;
            this.f67407c = C20781b.m497a(this.f67406b);
            return this;
        }

        @Override // org.jsoup.p592c.AbstractC20816i.AbstractC20825h
        /* renamed from: h */
        public final AbstractC20825h mo376a() {
            super.mo376a();
            this.f67411g = null;
            return this;
        }

        public final String toString() {
            if (this.f67411g == null || this.f67411g.m313a() <= 0) {
                return "<" + m365j() + ">";
            }
            return "<" + m365j() + StringUtils.SPACE + this.f67411g.toString() + ">";
        }
    }

    /* renamed from: org.jsoup.c.i$h */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$h.class */
    public static abstract class AbstractC20825h extends AbstractC20816i {

        /* renamed from: b */
        protected String f67406b;

        /* renamed from: c */
        protected String f67407c;

        /* renamed from: d */
        String f67408d;

        /* renamed from: g */
        C20901b f67411g;

        /* renamed from: i */
        private String f67413i;

        /* renamed from: h */
        private StringBuilder f67412h = new StringBuilder();

        /* renamed from: e */
        boolean f67409e = false;

        /* renamed from: j */
        private boolean f67414j = false;

        /* renamed from: f */
        boolean f67410f = false;

        AbstractC20825h() {
            super();
        }

        /* renamed from: m */
        private void m362m() {
            this.f67414j = true;
            String str = this.f67413i;
            if (str != null) {
                this.f67412h.append(str);
                this.f67413i = null;
            }
        }

        /* renamed from: a */
        public final AbstractC20825h m374a(String str) {
            this.f67406b = str;
            this.f67407c = C20781b.m497a(str);
            return this;
        }

        /* renamed from: a */
        public final void m375a(char c) {
            m371b(String.valueOf(c));
        }

        /* renamed from: a */
        public final void m373a(int[] iArr) {
            m362m();
            for (int i : iArr) {
                this.f67412h.appendCodePoint(i);
            }
        }

        /* renamed from: b */
        public final void m372b(char c) {
            m369c(String.valueOf(c));
        }

        /* renamed from: b */
        public final void m371b(String str) {
            String str2 = this.f67406b;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f67406b = str;
            this.f67407c = C20781b.m497a(str);
        }

        /* renamed from: c */
        public final void m370c(char c) {
            m362m();
            this.f67412h.append(c);
        }

        /* renamed from: c */
        public final void m369c(String str) {
            String str2 = this.f67408d;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f67408d = str;
        }

        /* renamed from: d */
        public final void m368d(String str) {
            m362m();
            if (this.f67412h.length() == 0) {
                this.f67413i = str;
            } else {
                this.f67412h.append(str);
            }
        }

        /* renamed from: h */
        public AbstractC20825h mo376a() {
            this.f67406b = null;
            this.f67407c = null;
            this.f67408d = null;
            m388a(this.f67412h);
            this.f67413i = null;
            this.f67409e = false;
            this.f67414j = false;
            this.f67410f = false;
            this.f67411g = null;
            return this;
        }

        /* renamed from: i */
        public final void m366i() {
            if (this.f67411g == null) {
                this.f67411g = new C20901b();
            }
            String str = this.f67408d;
            if (str != null) {
                String trim = str.trim();
                this.f67408d = trim;
                if (trim.length() > 0) {
                    this.f67411g.m309a(this.f67408d, this.f67414j ? this.f67412h.length() > 0 ? this.f67412h.toString() : this.f67413i : this.f67409e ? "" : null);
                }
            }
            this.f67408d = null;
            this.f67409e = false;
            this.f67414j = false;
            m388a(this.f67412h);
            this.f67413i = null;
        }

        /* renamed from: j */
        public final String m365j() {
            String str = this.f67406b;
            C20779c.m499b(str == null || str.length() == 0);
            return this.f67406b;
        }

        /* renamed from: k */
        public final String m364k() {
            return this.f67407c;
        }

        /* renamed from: l */
        public final C20901b m363l() {
            if (this.f67411g == null) {
                this.f67411g = new C20901b();
            }
            return this.f67411g;
        }
    }

    /* renamed from: org.jsoup.c.i$i */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$i.class */
    public enum EnumC20826i {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    private AbstractC20816i() {
    }

    /* renamed from: a */
    public static void m388a(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* renamed from: a */
    public abstract AbstractC20816i mo376a();

    /* renamed from: b */
    public final boolean m387b() {
        return this.f67396a == EnumC20826i.Doctype;
    }

    /* renamed from: c */
    public final boolean m386c() {
        return this.f67396a == EnumC20826i.StartTag;
    }

    /* renamed from: d */
    public final boolean m385d() {
        return this.f67396a == EnumC20826i.EndTag;
    }

    /* renamed from: e */
    public final boolean m384e() {
        return this.f67396a == EnumC20826i.Comment;
    }

    /* renamed from: f */
    public final boolean m383f() {
        return this.f67396a == EnumC20826i.Character;
    }

    /* renamed from: g */
    public final boolean m382g() {
        return this.f67396a == EnumC20826i.EOF;
    }
}
