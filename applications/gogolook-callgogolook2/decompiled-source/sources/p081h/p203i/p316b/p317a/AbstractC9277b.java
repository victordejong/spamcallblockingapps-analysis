package p081h.p203i.p316b.p317a;

import gogolook.callgogolook2.gson.UserProfile;
import java.util.Arrays;
/* renamed from: h.i.b.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/b.class */
public abstract class AbstractC9277b implements AbstractC9302l<Character> {

    /* renamed from: h.i.b.a.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$a.class */
    public static final class C9278a extends AbstractC9286i {

        /* renamed from: b */
        public static final C9278a f21313b = new C9278a();

        public C9278a() {
            super("CharMatcher.any()");
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public int mo15494a(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public int mo15493a(CharSequence charSequence, int i) {
            int length = charSequence.length();
            C9301k.m15471b(i, length);
            int i2 = i;
            if (i == length) {
                i2 = -1;
            }
            return i2;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b.AbstractC9281d, p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return AbstractC9277b.m15500d();
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15495a(AbstractC9277b bVar) {
            C9301k.m15478a(bVar);
            return this;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return true;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: b */
        public boolean mo15492b(CharSequence charSequence) {
            C9301k.m15478a(charSequence);
            return true;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: c */
        public boolean mo15491c(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    /* renamed from: h.i.b.a.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$b.class */
    public static final class C9279b extends AbstractC9277b {

        /* renamed from: a */
        public final char[] f21314a;

        public C9279b(CharSequence charSequence) {
            this.f21314a = charSequence.toString().toCharArray();
            Arrays.sort(this.f21314a);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return Arrays.binarySearch(this.f21314a, c) >= 0;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b, p081h.p203i.p316b.p317a.AbstractC9302l
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return AbstractC9277b.super.apply(ch);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.f21314a) {
                sb.append(AbstractC9277b.m15497e(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    /* renamed from: h.i.b.a.b$c */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$c.class */
    public static final class C9280c extends AbstractC9286i {

        /* renamed from: b */
        public static final C9280c f21315b = new C9280c();

        public C9280c() {
            super("CharMatcher.ascii()");
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return c <= 127;
        }
    }

    /* renamed from: h.i.b.a.b$d */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$d.class */
    public static abstract class AbstractC9281d extends AbstractC9277b {
        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return new C9288k(this);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b, p081h.p203i.p316b.p317a.AbstractC9302l
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return AbstractC9277b.super.apply(ch);
        }
    }

    /* renamed from: h.i.b.a.b$e */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$e.class */
    public static final class C9282e extends AbstractC9281d {

        /* renamed from: a */
        public final char f21316a;

        /* renamed from: b */
        public final char f21317b;

        public C9282e(char c, char c2) {
            C9301k.m15476a(c2 >= c);
            this.f21316a = c;
            this.f21317b = c2;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return this.f21316a <= c && c <= this.f21317b;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return "CharMatcher.inRange('" + AbstractC9277b.m15497e(this.f21316a) + "', '" + AbstractC9277b.m15497e(this.f21317b) + "')";
        }
    }

    /* renamed from: h.i.b.a.b$f */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$f.class */
    public static final class C9283f extends AbstractC9281d {

        /* renamed from: a */
        public final char f21318a;

        public C9283f(char c) {
            this.f21318a = c;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b.AbstractC9281d, p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return AbstractC9277b.m15499d(this.f21318a);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15495a(AbstractC9277b bVar) {
            if (!bVar.mo15490a(this.f21318a)) {
                bVar = AbstractC9277b.super.mo15495a(bVar);
            }
            return bVar;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return c == this.f21318a;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return "CharMatcher.is('" + AbstractC9277b.m15497e(this.f21318a) + "')";
        }
    }

    /* renamed from: h.i.b.a.b$g */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$g.class */
    public static final class C9284g extends AbstractC9281d {

        /* renamed from: a */
        public final char f21319a;

        /* renamed from: b */
        public final char f21320b;

        public C9284g(char c, char c2) {
            this.f21319a = c;
            this.f21320b = c2;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return c == this.f21319a || c == this.f21320b;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return "CharMatcher.anyOf(\"" + AbstractC9277b.m15497e(this.f21319a) + AbstractC9277b.m15497e(this.f21320b) + "\")";
        }
    }

    /* renamed from: h.i.b.a.b$h */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$h.class */
    public static final class C9285h extends AbstractC9281d {

        /* renamed from: a */
        public final char f21321a;

        public C9285h(char c) {
            this.f21321a = c;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b.AbstractC9281d, p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return AbstractC9277b.m15501c(this.f21321a);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15495a(AbstractC9277b bVar) {
            return bVar.mo15490a(this.f21321a) ? AbstractC9277b.m15505b() : this;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return c != this.f21321a;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return "CharMatcher.isNot('" + AbstractC9277b.m15497e(this.f21321a) + "')";
        }
    }

    /* renamed from: h.i.b.a.b$i */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$i.class */
    public static abstract class AbstractC9286i extends AbstractC9281d {

        /* renamed from: a */
        public final String f21322a;

        public AbstractC9286i(String str) {
            C9301k.m15478a(str);
            this.f21322a = str;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public final String toString() {
            return this.f21322a;
        }
    }

    /* renamed from: h.i.b.a.b$j */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$j.class */
    public static class C9287j extends AbstractC9277b {

        /* renamed from: a */
        public final AbstractC9277b f21323a;

        public C9287j(AbstractC9277b bVar) {
            C9301k.m15478a(bVar);
            this.f21323a = bVar;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return this.f21323a;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return !this.f21323a.mo15490a(c);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b, p081h.p203i.p316b.p317a.AbstractC9302l
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return AbstractC9277b.super.apply(ch);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: b */
        public boolean mo15492b(CharSequence charSequence) {
            return this.f21323a.mo15491c(charSequence);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: c */
        public boolean mo15491c(CharSequence charSequence) {
            return this.f21323a.mo15492b(charSequence);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return this.f21323a + ".negate()";
        }
    }

    /* renamed from: h.i.b.a.b$k */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$k.class */
    public static class C9288k extends C9287j {
        public C9288k(AbstractC9277b bVar) {
            super(bVar);
        }
    }

    /* renamed from: h.i.b.a.b$l */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$l.class */
    public static final class C9289l extends AbstractC9286i {

        /* renamed from: b */
        public static final C9289l f21324b = new C9289l();

        public C9289l() {
            super("CharMatcher.none()");
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public int mo15494a(CharSequence charSequence) {
            C9301k.m15478a(charSequence);
            return -1;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public int mo15493a(CharSequence charSequence, int i) {
            C9301k.m15471b(i, charSequence.length());
            return -1;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b.AbstractC9281d, p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15496a() {
            return AbstractC9277b.m15505b();
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public AbstractC9277b mo15495a(AbstractC9277b bVar) {
            C9301k.m15478a(bVar);
            return bVar;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return false;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: b */
        public boolean mo15492b(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: c */
        public boolean mo15491c(CharSequence charSequence) {
            C9301k.m15478a(charSequence);
            return true;
        }
    }

    /* renamed from: h.i.b.a.b$m */
    /* loaded from: classes2-dex2jar.jar:h/i/b/a/b$m.class */
    public static final class C9290m extends AbstractC9277b {

        /* renamed from: a */
        public final AbstractC9277b f21325a;

        /* renamed from: b */
        public final AbstractC9277b f21326b;

        public C9290m(AbstractC9277b bVar, AbstractC9277b bVar2) {
            C9301k.m15478a(bVar);
            this.f21325a = bVar;
            C9301k.m15478a(bVar2);
            this.f21326b = bVar2;
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        /* renamed from: a */
        public boolean mo15490a(char c) {
            return this.f21325a.mo15490a(c) || this.f21326b.mo15490a(c);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b, p081h.p203i.p316b.p317a.AbstractC9302l
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return AbstractC9277b.super.apply(ch);
        }

        @Override // p081h.p203i.p316b.p317a.AbstractC9277b
        public String toString() {
            return "CharMatcher.or(" + this.f21325a + UserProfile.CARD_CATE_SEPARATOR + this.f21326b + ")";
        }
    }

    /* renamed from: a */
    public static AbstractC9277b m15507a(char c, char c2) {
        return new C9282e(c, c2);
    }

    /* renamed from: b */
    public static C9284g m15503b(char c, char c2) {
        return new C9284g(c, c2);
    }

    /* renamed from: b */
    public static AbstractC9277b m15505b() {
        return C9278a.f21313b;
    }

    /* renamed from: c */
    public static AbstractC9277b m15502c() {
        return C9280c.f21315b;
    }

    /* renamed from: c */
    public static AbstractC9277b m15501c(char c) {
        return new C9283f(c);
    }

    /* renamed from: d */
    public static AbstractC9277b m15500d() {
        return C9289l.f21324b;
    }

    /* renamed from: d */
    public static AbstractC9277b m15499d(char c) {
        return new C9285h(c);
    }

    /* renamed from: d */
    public static AbstractC9277b m15498d(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new C9279b(charSequence) : m15503b(charSequence.charAt(0), charSequence.charAt(1)) : m15501c(charSequence.charAt(0)) : m15500d();
    }

    /* renamed from: e */
    public static String m15497e(char c) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    /* renamed from: a */
    public int mo15494a(CharSequence charSequence) {
        return mo15493a(charSequence, 0);
    }

    /* renamed from: a */
    public int mo15493a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        C9301k.m15471b(i, length);
        while (i < length) {
            if (mo15490a(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: a */
    public AbstractC9277b mo15496a() {
        return new C9287j(this);
    }

    /* renamed from: a */
    public AbstractC9277b mo15495a(AbstractC9277b bVar) {
        return new C9290m(this, bVar);
    }

    /* renamed from: a */
    public abstract boolean mo15490a(char c);

    @Deprecated
    /* renamed from: a */
    public boolean apply(Character ch) {
        return mo15490a(ch.charValue());
    }

    /* renamed from: b */
    public boolean mo15492b(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!mo15490a(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public boolean mo15491c(CharSequence charSequence) {
        return mo15494a(charSequence) == -1;
    }

    public String toString() {
        return super.toString();
    }
}
