package retrofit2;

import javax.annotation.Nullable;
import okhttp3.AbstractC5402ab;
import okhttp3.C5400aa;
import okhttp3.C5536q;
import okhttp3.C5539s;
import okhttp3.C5541t;
import okhttp3.C5546v;
import okhttp3.C5547w;
import p000a.AbstractC0006d;
import p000a.C0005c;
/* renamed from: retrofit2.k */
/* loaded from: classes-dex2jar.jar:retrofit2/k.class */
public final class C5625k {

    /* renamed from: a */
    private static final char[] f23307a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b */
    private final String f23308b;

    /* renamed from: c */
    private final C5541t f23309c;
    @Nullable

    /* renamed from: d */
    private String f23310d;
    @Nullable

    /* renamed from: e */
    private C5541t.C5542a f23311e;

    /* renamed from: f */
    private final C5400aa.C5401a f23312f = new C5400aa.C5401a();
    @Nullable

    /* renamed from: g */
    private C5546v f23313g;

    /* renamed from: h */
    private final boolean f23314h;
    @Nullable

    /* renamed from: i */
    private C5547w.C5548a f23315i;
    @Nullable

    /* renamed from: j */
    private C5536q.C5537a f23316j;
    @Nullable

    /* renamed from: k */
    private AbstractC5402ab f23317k;

    /* renamed from: retrofit2.k$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/k$a.class */
    public static class C5626a extends AbstractC5402ab {

        /* renamed from: a */
        private final AbstractC5402ab f23318a;

        /* renamed from: b */
        private final C5546v f23319b;

        C5626a(AbstractC5402ab abstractC5402ab, C5546v c5546v) {
            this.f23318a = abstractC5402ab;
            this.f23319b = c5546v;
        }

        @Override // okhttp3.AbstractC5402ab
        /* renamed from: a */
        public C5546v mo60a() {
            return this.f23319b;
        }

        @Override // okhttp3.AbstractC5402ab
        /* renamed from: a */
        public void mo59a(AbstractC0006d abstractC0006d) {
            this.f23318a.mo59a(abstractC0006d);
        }

        @Override // okhttp3.AbstractC5402ab
        /* renamed from: b */
        public long mo58b() {
            return this.f23318a.mo58b();
        }
    }

    public C5625k(String str, C5541t c5541t, @Nullable String str2, @Nullable C5539s c5539s, @Nullable C5546v c5546v, boolean z, boolean z2, boolean z3) {
        this.f23308b = str;
        this.f23309c = c5541t;
        this.f23310d = str2;
        this.f23313g = c5546v;
        this.f23314h = z;
        if (c5539s != null) {
            this.f23312f.m815a(c5539s);
        }
        if (z2) {
            this.f23316j = new C5536q.C5537a();
        } else if (!z3) {
        } else {
            this.f23315i = new C5547w.C5548a();
            this.f23315i.m204a(C5547w.f23162e);
        }
    }

    /* renamed from: a */
    private static String m66a(String str, boolean z) {
        int i;
        String str2;
        int length = str.length();
        int i2 = 0;
        while (true) {
            i = i2;
            str2 = str;
            if (i >= length) {
                break;
            }
            int codePointAt = str.codePointAt(i);
            if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                break;
            }
            i2 = i + Character.charCount(codePointAt);
        }
        C0005c c0005c = new C0005c();
        c0005c.m22565a(str, 0, i);
        m70a(c0005c, str, i, length, z);
        str2 = c0005c.m22546n();
        return str2;
    }

    /* renamed from: a */
    private static void m70a(C0005c c0005c, String str, int i, int i2, boolean z) {
        C0005c c0005c2;
        C0005c c0005c3 = null;
        while (true) {
            C0005c c0005c4 = c0005c3;
            if (i < i2) {
                int codePointAt = str.codePointAt(i);
                if (z) {
                    c0005c2 = c0005c4;
                    if (codePointAt != 9) {
                        c0005c2 = c0005c4;
                        if (codePointAt != 10) {
                            c0005c2 = c0005c4;
                            if (codePointAt != 12) {
                                if (codePointAt == 13) {
                                    c0005c2 = c0005c4;
                                }
                            }
                        }
                    }
                    i += Character.charCount(codePointAt);
                    c0005c3 = c0005c2;
                }
                if (codePointAt < 32 || codePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    C0005c c0005c5 = c0005c4;
                    if (c0005c4 == null) {
                        c0005c5 = new C0005c();
                    }
                    c0005c5.m22572a(codePointAt);
                    while (true) {
                        c0005c2 = c0005c5;
                        if (!c0005c5.mo22493e()) {
                            int mo22491g = c0005c5.mo22491g() & 255;
                            c0005c.mo22508i(37);
                            c0005c.mo22508i((int) f23307a[(mo22491g >> 4) & 15]);
                            c0005c.mo22508i((int) f23307a[mo22491g & 15]);
                        }
                    }
                } else {
                    c0005c.m22572a(codePointAt);
                    c0005c2 = c0005c4;
                }
                i += Character.charCount(codePointAt);
                c0005c3 = c0005c2;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public C5400aa m71a() {
        C5541t c5541t;
        C5541t.C5542a c5542a = this.f23311e;
        if (c5542a != null) {
            c5541t = c5542a.m227c();
        } else {
            C5541t m253c = this.f23309c.m253c(this.f23310d);
            c5541t = m253c;
            if (m253c == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f23309c + ", Relative: " + this.f23310d);
            }
        }
        AbstractC5402ab abstractC5402ab = this.f23317k;
        C5536q c5536q = abstractC5402ab;
        if (abstractC5402ab == null) {
            if (this.f23316j != null) {
                c5536q = this.f23316j.m290a();
            } else if (this.f23315i != null) {
                c5536q = this.f23315i.m206a();
            } else {
                c5536q = abstractC5402ab;
                if (this.f23314h) {
                    c5536q = AbstractC5402ab.m812a(null, new byte[0]);
                }
            }
        }
        C5546v c5546v = this.f23313g;
        C5626a c5626a = c5536q;
        if (c5546v != null) {
            if (c5536q != null) {
                c5626a = new C5626a(c5536q, c5546v);
            } else {
                this.f23312f.m813b("Content-Type", c5546v.toString());
                c5626a = c5536q;
            }
        }
        return this.f23312f.m814a(c5541t).m816a(this.f23308b, c5626a).m819a();
    }

    /* renamed from: a */
    public void m69a(Object obj) {
        this.f23310d = obj.toString();
    }

    /* renamed from: a */
    public void m68a(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f23312f.m813b(str, str2);
            return;
        }
        C5546v m209a = C5546v.m209a(str2);
        if (m209a == null) {
            throw new IllegalArgumentException("Malformed content type: " + str2);
        }
        this.f23313g = m209a;
    }

    /* renamed from: a */
    public void m67a(String str, String str2, boolean z) {
        if (this.f23310d == null) {
            throw new AssertionError();
        }
        this.f23310d = this.f23310d.replace("{" + str + "}", m66a(str2, z));
    }

    /* renamed from: a */
    public void m65a(AbstractC5402ab abstractC5402ab) {
        this.f23317k = abstractC5402ab;
    }

    /* renamed from: a */
    public void m64a(C5539s c5539s, AbstractC5402ab abstractC5402ab) {
        this.f23315i.m205a(c5539s, abstractC5402ab);
    }

    /* renamed from: a */
    public void m63a(C5547w.C5549b c5549b) {
        this.f23315i.m203a(c5549b);
    }

    /* renamed from: b */
    public void m62b(String str, @Nullable String str2, boolean z) {
        if (this.f23310d != null) {
            this.f23311e = this.f23309c.m251d(this.f23310d);
            if (this.f23311e == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f23309c + ", Relative: " + this.f23310d);
            }
            this.f23310d = null;
        }
        if (z) {
            this.f23311e.m228b(str, str2);
        } else {
            this.f23311e.m233a(str, str2);
        }
    }

    /* renamed from: c */
    public void m61c(String str, String str2, boolean z) {
        if (z) {
            this.f23316j.m288b(str, str2);
        } else {
            this.f23316j.m289a(str, str2);
        }
    }
}
