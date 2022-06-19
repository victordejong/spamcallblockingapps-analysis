package org.jsoup.p592c;

import java.util.Arrays;
import org.jsoup.p590a.C20779c;
import org.jsoup.p592c.AbstractC20816i;
/* renamed from: org.jsoup.c.k */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/k.class */
public final class C20828k {

    /* renamed from: a */
    static final int[] f67417a = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};

    /* renamed from: p */
    private static final char[] f67418p;

    /* renamed from: b */
    final C20783a f67419b;

    /* renamed from: d */
    AbstractC20816i f67421d;

    /* renamed from: i */
    AbstractC20816i.AbstractC20825h f67426i;

    /* renamed from: o */
    String f67432o;

    /* renamed from: q */
    private final C20812e f67433q;

    /* renamed from: c */
    EnumC20829l f67420c = EnumC20829l.Data;

    /* renamed from: e */
    boolean f67422e = false;

    /* renamed from: f */
    String f67423f = null;

    /* renamed from: g */
    StringBuilder f67424g = new StringBuilder(1024);

    /* renamed from: h */
    StringBuilder f67425h = new StringBuilder(1024);

    /* renamed from: j */
    AbstractC20816i.C20824g f67427j = new AbstractC20816i.C20824g();

    /* renamed from: k */
    AbstractC20816i.C20823f f67428k = new AbstractC20816i.C20823f();

    /* renamed from: l */
    AbstractC20816i.C20819b f67429l = new AbstractC20816i.C20819b();

    /* renamed from: m */
    AbstractC20816i.C20821d f67430m = new AbstractC20816i.C20821d();

    /* renamed from: n */
    AbstractC20816i.C20820c f67431n = new AbstractC20816i.C20820c();

    /* renamed from: r */
    private final int[] f67434r = new int[1];

    /* renamed from: s */
    private final int[] f67435s = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        f67418p = cArr;
        Arrays.sort(cArr);
    }

    public C20828k(C20783a c20783a, C20812e c20812e) {
        this.f67419b = c20783a;
        this.f67433q = c20812e;
    }

    /* renamed from: c */
    private void m334c(String str) {
        if (this.f67433q.m401a()) {
            this.f67433q.add(new C20811d(this.f67419b.m478b(), "Invalid character reference: %s", str));
        }
    }

    /* renamed from: a */
    public final AbstractC20816i.AbstractC20825h m339a(boolean z) {
        AbstractC20816i.AbstractC20825h mo376a = z ? this.f67427j.mo376a() : this.f67428k.mo376a();
        this.f67426i = mo376a;
        return mo376a;
    }

    /* renamed from: a */
    public final void m345a() {
        AbstractC20816i.AbstractC20825h abstractC20825h = this.f67426i;
        if (abstractC20825h.f67408d != null) {
            abstractC20825h.m366i();
        }
        m341a(this.f67426i);
    }

    /* renamed from: a */
    public final void m344a(char c) {
        m342a(String.valueOf(c));
    }

    /* renamed from: a */
    public final void m342a(String str) {
        if (this.f67423f == null) {
            this.f67423f = str;
            return;
        }
        if (this.f67424g.length() == 0) {
            this.f67424g.append(this.f67423f);
        }
        this.f67424g.append(str);
    }

    /* renamed from: a */
    public final void m341a(AbstractC20816i abstractC20816i) {
        C20779c.m499b(this.f67422e);
        this.f67421d = abstractC20816i;
        this.f67422e = true;
        if (abstractC20816i.f67396a == AbstractC20816i.EnumC20826i.StartTag) {
            this.f67432o = ((AbstractC20816i.C20824g) abstractC20816i).f67406b;
        } else if (abstractC20816i.f67396a != AbstractC20816i.EnumC20826i.EndTag || ((AbstractC20816i.C20823f) abstractC20816i).f67411g == null) {
        } else {
            m337b("Attributes incorrectly present on end tag");
        }
    }

    /* renamed from: a */
    public final void m340a(EnumC20829l enumC20829l) {
        this.f67419b.m465g();
        this.f67420c = enumC20829l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e9, code lost:
        if (r6.f67419b.m471c('=', '-', '_') == false) goto L85;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] m343a(java.lang.Character r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.p592c.C20828k.m343a(java.lang.Character, boolean):int[]");
    }

    /* renamed from: b */
    public final void m338b() {
        m341a(this.f67431n);
    }

    /* renamed from: b */
    public final void m337b(String str) {
        if (this.f67433q.m401a()) {
            this.f67433q.add(new C20811d(this.f67419b.m478b(), str));
        }
    }

    /* renamed from: b */
    public final void m336b(EnumC20829l enumC20829l) {
        if (this.f67433q.m401a()) {
            this.f67433q.add(new C20811d(this.f67419b.m478b(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.f67419b.m470d()), enumC20829l));
        }
    }

    /* renamed from: c */
    public final void m335c() {
        this.f67431n.mo376a();
        this.f67431n.f67398b = true;
    }

    /* renamed from: c */
    public final void m333c(EnumC20829l enumC20829l) {
        if (this.f67433q.m401a()) {
            this.f67433q.add(new C20811d(this.f67419b.m478b(), "Unexpectedly reached end of file (EOF) in input state [%s]", enumC20829l));
        }
    }

    /* renamed from: d */
    public final void m332d() {
        this.f67430m.mo376a();
    }

    /* renamed from: e */
    public final void m331e() {
        m341a(this.f67430m);
    }

    /* renamed from: f */
    public final boolean m330f() {
        return this.f67432o != null && this.f67426i.m365j().equalsIgnoreCase(this.f67432o);
    }
}
