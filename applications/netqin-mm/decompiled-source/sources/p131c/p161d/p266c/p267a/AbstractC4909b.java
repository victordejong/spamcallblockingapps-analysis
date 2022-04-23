package p131c.p161d.p266c.p267a;
/* renamed from: c.d.c.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/b.class */
public abstract class AbstractC4909b implements AbstractC4934o<Character> {

    /* renamed from: c.d.c.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$a.class */
    public static abstract class AbstractC4910a extends AbstractC4909b {
        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return AbstractC4909b.super.m24837a(ch);
        }
    }

    /* renamed from: c.d.c.a.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$b.class */
    public static final class C4911b extends AbstractC4910a {

        /* renamed from: a */
        public final char f17548a;

        /* renamed from: b */
        public final char f17549b;

        public C4911b(char c, char c2) {
            C4933n.m24791a(c2 >= c);
            this.f17548a = c;
            this.f17549b = c2;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4909b
        /* renamed from: a */
        public boolean mo24831a(char c) {
            return this.f17548a <= c && c <= this.f17549b;
        }

        public String toString() {
            return "CharMatcher.inRange('" + AbstractC4909b.m24833d(this.f17548a) + "', '" + AbstractC4909b.m24833d(this.f17549b) + "')";
        }
    }

    /* renamed from: c.d.c.a.b$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$c.class */
    public static final class C4912c extends AbstractC4910a {

        /* renamed from: a */
        public final char f17550a;

        public C4912c(char c) {
            this.f17550a = c;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4909b
        /* renamed from: a */
        public boolean mo24831a(char c) {
            return c == this.f17550a;
        }

        public String toString() {
            return "CharMatcher.is('" + AbstractC4909b.m24833d(this.f17550a) + "')";
        }
    }

    /* renamed from: c.d.c.a.b$d */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$d.class */
    public static abstract class AbstractC4913d extends AbstractC4910a {

        /* renamed from: a */
        public final String f17551a;

        public AbstractC4913d(String str) {
            C4933n.m24795a(str);
            this.f17551a = str;
        }

        public final String toString() {
            return this.f17551a;
        }
    }

    /* renamed from: c.d.c.a.b$e */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$e.class */
    public static final class C4914e extends AbstractC4913d {

        /* renamed from: b */
        public static final C4914e f17552b = new C4914e();

        public C4914e() {
            super("CharMatcher.none()");
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4909b
        /* renamed from: a */
        public int mo24832a(CharSequence charSequence, int i) {
            C4933n.m24779b(i, charSequence.length());
            return -1;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4909b
        /* renamed from: a */
        public boolean mo24831a(char c) {
            return false;
        }
    }

    /* renamed from: c.d.c.a.b$f */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/b$f.class */
    public static final class C4915f extends AbstractC4913d {

        /* renamed from: b */
        public static final int f17553b = Integer.numberOfLeadingZeros(31);

        /* renamed from: c */
        public static final C4915f f17554c = new C4915f();

        public C4915f() {
            super("CharMatcher.whitespace()");
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4909b
        /* renamed from: a */
        public boolean mo24831a(char c) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c) >>> f17553b) == c;
        }
    }

    /* renamed from: a */
    public static AbstractC4909b m24839a() {
        return C4914e.f17552b;
    }

    /* renamed from: a */
    public static AbstractC4909b m24838a(char c, char c2) {
        return new C4911b(c, c2);
    }

    /* renamed from: b */
    public static AbstractC4909b m24836b() {
        return C4915f.f17554c;
    }

    /* renamed from: c */
    public static AbstractC4909b m24834c(char c) {
        return new C4912c(c);
    }

    /* renamed from: d */
    public static String m24833d(char c) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        char c2 = c;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    /* renamed from: a */
    public int mo24832a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        C4933n.m24779b(i, length);
        while (i < length) {
            if (mo24831a(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: a */
    public abstract boolean mo24831a(char c);

    @Deprecated
    /* renamed from: a */
    public boolean m24837a(Character ch) {
        return mo24831a(ch.charValue());
    }
}
