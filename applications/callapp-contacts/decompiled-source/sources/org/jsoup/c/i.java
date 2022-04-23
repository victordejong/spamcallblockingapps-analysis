package org.jsoup.c;

import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/i.class */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    EnumC0750i f39235a;

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$a.class */
    static final class a extends b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str) {
            this.f39236b = str;
        }

        @Override // org.jsoup.c.i.b
        public final String toString() {
            return "<![CDATA[" + this.f39236b + "]]>";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$b.class */
    static class b extends i {

        /* renamed from: b  reason: collision with root package name */
        String f39236b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
            super();
            this.f39235a = EnumC0750i.Character;
        }

        @Override // org.jsoup.c.i
        final i a() {
            this.f39236b = null;
            return this;
        }

        public String toString() {
            return this.f39236b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$c.class */
    static final class c extends i {

        /* renamed from: d  reason: collision with root package name */
        private String f39239d;

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f39238c = new StringBuilder();

        /* renamed from: b  reason: collision with root package name */
        boolean f39237b = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
            super();
            this.f39235a = EnumC0750i.Comment;
        }

        private void i() {
            String str = this.f39239d;
            if (str != null) {
                this.f39238c.append(str);
                this.f39239d = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final c a(char c2) {
            i();
            this.f39238c.append(c2);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final c a(String str) {
            i();
            if (this.f39238c.length() == 0) {
                this.f39239d = str;
            } else {
                this.f39238c.append(str);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.c.i
        public final i a() {
            a(this.f39238c);
            this.f39239d = null;
            this.f39237b = false;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String h() {
            String str = this.f39239d;
            return str != null ? str : this.f39238c.toString();
        }

        public final String toString() {
            return "<!--" + h() + "-->";
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$d.class */
    static final class d extends i {

        /* renamed from: b  reason: collision with root package name */
        final StringBuilder f39240b = new StringBuilder();

        /* renamed from: c  reason: collision with root package name */
        String f39241c = null;

        /* renamed from: d  reason: collision with root package name */
        final StringBuilder f39242d = new StringBuilder();
        final StringBuilder e = new StringBuilder();
        boolean f = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d() {
            super();
            this.f39235a = EnumC0750i.Doctype;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.c.i
        public final i a() {
            a(this.f39240b);
            this.f39241c = null;
            a(this.f39242d);
            a(this.e);
            this.f = false;
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$e.class */
    static final class e extends i {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e() {
            super();
            this.f39235a = EnumC0750i.EOF;
        }

        @Override // org.jsoup.c.i
        final i a() {
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$f.class */
    static final class f extends h {
        /* JADX INFO: Access modifiers changed from: package-private */
        public f() {
            this.f39235a = EnumC0750i.EndTag;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("</");
            sb.append(this.f39243b != null ? this.f39243b : "(unset)");
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$g.class */
    public static final class g extends h {
        /* JADX INFO: Access modifiers changed from: package-private */
        public g() {
            this.f39235a = EnumC0750i.StartTag;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final g a(String str, org.jsoup.nodes.b bVar) {
            this.f39243b = str;
            this.g = bVar;
            this.f39244c = org.jsoup.b.b.a(this.f39243b);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.jsoup.c.i.h
        /* renamed from: h */
        public final h a() {
            super.a();
            this.g = null;
            return this;
        }

        public final String toString() {
            if (this.g == null || this.g.a() <= 0) {
                return "<" + j() + ">";
            }
            return "<" + j() + StringUtils.SPACE + this.g.toString() + ">";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$h.class */
    public static abstract class h extends i {

        /* renamed from: b  reason: collision with root package name */
        protected String f39243b;

        /* renamed from: c  reason: collision with root package name */
        protected String f39244c;

        /* renamed from: d  reason: collision with root package name */
        String f39245d;
        org.jsoup.nodes.b g;
        private String i;
        private StringBuilder h = new StringBuilder();
        boolean e = false;
        private boolean j = false;
        boolean f = false;

        h() {
            super();
        }

        private void m() {
            this.j = true;
            String str = this.i;
            if (str != null) {
                this.h.append(str);
                this.i = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final h a(String str) {
            this.f39243b = str;
            this.f39244c = org.jsoup.b.b.a(str);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(char c2) {
            b(String.valueOf(c2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int[] iArr) {
            m();
            for (int i : iArr) {
                this.h.appendCodePoint(i);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b(char c2) {
            c(String.valueOf(c2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b(String str) {
            String str2 = this.f39243b;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f39243b = str;
            this.f39244c = org.jsoup.b.b.a(str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void c(char c2) {
            m();
            this.h.append(c2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void c(String str) {
            String str2 = this.f39245d;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f39245d = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void d(String str) {
            m();
            if (this.h.length() == 0) {
                this.i = str;
            } else {
                this.h.append(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: h */
        public h a() {
            this.f39243b = null;
            this.f39244c = null;
            this.f39245d = null;
            a(this.h);
            this.i = null;
            this.e = false;
            this.j = false;
            this.f = false;
            this.g = null;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void i() {
            if (this.g == null) {
                this.g = new org.jsoup.nodes.b();
            }
            String str = this.f39245d;
            if (str != null) {
                String trim = str.trim();
                this.f39245d = trim;
                if (trim.length() > 0) {
                    this.g.a(this.f39245d, this.j ? this.h.length() > 0 ? this.h.toString() : this.i : this.e ? "" : null);
                }
            }
            this.f39245d = null;
            this.e = false;
            this.j = false;
            a(this.h);
            this.i = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String j() {
            String str = this.f39243b;
            org.jsoup.a.c.b(str == null || str.length() == 0);
            return this.f39243b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String k() {
            return this.f39244c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final org.jsoup.nodes.b l() {
            if (this.g == null) {
                this.g = new org.jsoup.nodes.b();
            }
            return this.g;
        }
    }

    /* renamed from: org.jsoup.c.i$i  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/c/i$i.class */
    public enum EnumC0750i {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract i a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.f39235a == EnumC0750i.Doctype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.f39235a == EnumC0750i.StartTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d() {
        return this.f39235a == EnumC0750i.EndTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e() {
        return this.f39235a == EnumC0750i.Comment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return this.f39235a == EnumC0750i.Character;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return this.f39235a == EnumC0750i.EOF;
    }
}
