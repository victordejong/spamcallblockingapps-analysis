package okhttp3;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import p000a.AbstractC0006d;
import p000a.C0005c;
import p000a.C0008f;
/* renamed from: okhttp3.w */
/* loaded from: classes-dex2jar.jar:okhttp3/w.class */
public final class C5547w extends AbstractC5402ab {

    /* renamed from: a */
    public static final C5546v f23158a = C5546v.m209a("multipart/mixed");

    /* renamed from: b */
    public static final C5546v f23159b = C5546v.m209a("multipart/alternative");

    /* renamed from: c */
    public static final C5546v f23160c = C5546v.m209a("multipart/digest");

    /* renamed from: d */
    public static final C5546v f23161d = C5546v.m209a("multipart/parallel");

    /* renamed from: e */
    public static final C5546v f23162e = C5546v.m209a("multipart/form-data");

    /* renamed from: f */
    private static final byte[] f23163f = {58, 32};

    /* renamed from: g */
    private static final byte[] f23164g = {13, 10};

    /* renamed from: h */
    private static final byte[] f23165h = {45, 45};

    /* renamed from: i */
    private final C0008f f23166i;

    /* renamed from: j */
    private final C5546v f23167j;

    /* renamed from: k */
    private final C5546v f23168k;

    /* renamed from: l */
    private final List<C5549b> f23169l;

    /* renamed from: m */
    private long f23170m = -1;

    /* renamed from: okhttp3.w$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/w$a.class */
    public static final class C5548a {

        /* renamed from: a */
        private final C0008f f23171a;

        /* renamed from: b */
        private C5546v f23172b;

        /* renamed from: c */
        private final List<C5549b> f23173c;

        public C5548a() {
            this(UUID.randomUUID().toString());
        }

        public C5548a(String str) {
            this.f23172b = C5547w.f23158a;
            this.f23173c = new ArrayList();
            this.f23171a = C0008f.m22538a(str);
        }

        /* renamed from: a */
        public C5548a m205a(@Nullable C5539s c5539s, AbstractC5402ab abstractC5402ab) {
            return m203a(C5549b.m202a(c5539s, abstractC5402ab));
        }

        /* renamed from: a */
        public C5548a m204a(C5546v c5546v) {
            if (c5546v == null) {
                throw new NullPointerException("type == null");
            }
            if (!c5546v.m210a().equals("multipart")) {
                throw new IllegalArgumentException("multipart != " + c5546v);
            }
            this.f23172b = c5546v;
            return this;
        }

        /* renamed from: a */
        public C5548a m203a(C5549b c5549b) {
            if (c5549b == null) {
                throw new NullPointerException("part == null");
            }
            this.f23173c.add(c5549b);
            return this;
        }

        /* renamed from: a */
        public C5547w m206a() {
            if (this.f23173c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new C5547w(this.f23171a, this.f23172b, this.f23173c);
        }
    }

    /* renamed from: okhttp3.w$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/w$b.class */
    public static final class C5549b {
        @Nullable

        /* renamed from: a */
        final C5539s f23174a;

        /* renamed from: b */
        final AbstractC5402ab f23175b;

        private C5549b(@Nullable C5539s c5539s, AbstractC5402ab abstractC5402ab) {
            this.f23174a = c5539s;
            this.f23175b = abstractC5402ab;
        }

        /* renamed from: a */
        public static C5549b m202a(@Nullable C5539s c5539s, AbstractC5402ab abstractC5402ab) {
            if (abstractC5402ab == null) {
                throw new NullPointerException("body == null");
            }
            if (c5539s != null && c5539s.m282a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (c5539s != null && c5539s.m282a("Content-Length") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            return new C5549b(c5539s, abstractC5402ab);
        }
    }

    C5547w(C0008f c0008f, C5546v c5546v, List<C5549b> list) {
        this.f23166i = c0008f;
        this.f23167j = c5546v;
        this.f23168k = C5546v.m209a(c5546v + "; boundary=" + c0008f.mo22474a());
        this.f23169l = C5449c.m658a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* renamed from: a */
    private long m207a(@Nullable AbstractC0006d abstractC0006d, boolean z) {
        AbstractC0006d abstractC0006d2;
        char c;
        char c2 = 0;
        if (z) {
            abstractC0006d = new C0005c();
            abstractC0006d2 = abstractC0006d;
        } else {
            abstractC0006d2 = null;
        }
        int size = this.f23169l.size();
        int i = 0;
        while (true) {
            if (i < size) {
                C5549b c5549b = this.f23169l.get(i);
                C5539s c5539s = c5549b.f23174a;
                AbstractC5402ab abstractC5402ab = c5549b.f23175b;
                abstractC0006d.mo22512c(f23165h);
                abstractC0006d.mo22514b(this.f23166i);
                abstractC0006d.mo22512c(f23164g);
                if (c5539s != null) {
                    int m284a = c5539s.m284a();
                    for (int i2 = 0; i2 < m284a; i2++) {
                        abstractC0006d.mo22513b(c5539s.m283a(i2)).mo22512c(f23163f).mo22513b(c5539s.m278b(i2)).mo22512c(f23164g);
                    }
                }
                C5546v mo60a = abstractC5402ab.mo60a();
                if (mo60a != null) {
                    abstractC0006d.mo22513b("Content-Type: ").mo22513b(mo60a.toString()).mo22512c(f23164g);
                }
                long mo58b = abstractC5402ab.mo58b();
                if (mo58b != -1) {
                    abstractC0006d.mo22513b("Content-Length: ").mo22506l(mo58b).mo22512c(f23164g);
                } else if (z) {
                    abstractC0006d2.m22544q();
                    c = 65535;
                    break;
                }
                abstractC0006d.mo22512c(f23164g);
                if (z) {
                    c2 += mo58b;
                } else {
                    abstractC5402ab.mo59a(abstractC0006d);
                }
                abstractC0006d.mo22512c(f23164g);
                i++;
            } else {
                abstractC0006d.mo22512c(f23165h);
                abstractC0006d.mo22514b(this.f23166i);
                abstractC0006d.mo22512c(f23165h);
                abstractC0006d.mo22512c(f23164g);
                c = c2;
                if (z) {
                    c = c2 + abstractC0006d2.m22562b();
                    abstractC0006d2.m22544q();
                }
            }
        }
        return c;
    }

    @Override // okhttp3.AbstractC5402ab
    /* renamed from: a */
    public C5546v mo60a() {
        return this.f23168k;
    }

    @Override // okhttp3.AbstractC5402ab
    /* renamed from: a */
    public void mo59a(AbstractC0006d abstractC0006d) {
        m207a(abstractC0006d, false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // okhttp3.AbstractC5402ab
    /* renamed from: b */
    public long mo58b() {
        char c = this.f23170m;
        if (c == -1) {
            c = m207a((AbstractC0006d) null, true);
            this.f23170m = c;
        }
        return c;
    }
}
