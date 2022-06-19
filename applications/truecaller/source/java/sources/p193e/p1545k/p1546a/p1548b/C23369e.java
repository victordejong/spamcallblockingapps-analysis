package p193e.p1545k.p1546a.p1548b;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23347b;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23350e;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23363o;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1552w.C23405k;
import p193e.p1545k.p1546a.p1548b.p1553x.C23406a;
import p193e.p1545k.p1546a.p1548b.p1553x.C23412g;
import p193e.p1545k.p1546a.p1548b.p1553x.C23413h;
import p193e.p1545k.p1546a.p1548b.p1553x.C23415j;
import p193e.p1545k.p1546a.p1548b.p1554y.C23416a;
import p193e.p1545k.p1546a.p1548b.p1554y.C23418b;
/* renamed from: e.k.a.b.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/e.class */
public class C23369e extends AbstractC23387s implements Serializable {

    /* renamed from: j */
    public static final int f64618j;

    /* renamed from: k */
    public static final int f64619k;

    /* renamed from: l */
    public static final int f64620l;

    /* renamed from: m */
    public static final AbstractC23384p f64621m;

    /* renamed from: a */
    public final transient C23418b f64622a;

    /* renamed from: b */
    public final transient C23416a f64623b;

    /* renamed from: c */
    public int f64624c;

    /* renamed from: d */
    public int f64625d;

    /* renamed from: e */
    public int f64626e;

    /* renamed from: f */
    public AbstractC23382n f64627f;

    /* renamed from: g */
    public AbstractC23384p f64628g;

    /* renamed from: h */
    public int f64629h;

    /* renamed from: i */
    public final char f64630i;

    /* renamed from: e.k.a.b.e$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/e$a.class */
    public enum EnumC23370a implements AbstractC23356h {
        INTERN_FIELD_NAMES(true),
        CANONICALIZE_FIELD_NAMES(true),
        FAIL_ON_SYMBOL_HASH_OVERFLOW(true),
        USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING(true);
        

        /* renamed from: a */
        public final boolean f64636a;

        EnumC23370a(boolean z) {
            this.f64636a = z;
        }

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
        /* renamed from: a */
        public int mo7193a() {
            return 1 << ordinal();
        }

        @Override // p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h
        /* renamed from: c */
        public boolean mo7192c() {
            return this.f64636a;
        }

        /* renamed from: d */
        public boolean m7211d(int i) {
            return (i & mo7193a()) != 0;
        }
    }

    static {
        int i;
        EnumC23370a[] values = EnumC23370a.values();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= 4) {
                break;
            }
            EnumC23370a enumC23370a = values[i2];
            int i4 = i;
            if (enumC23370a.f64636a) {
                i4 = i | enumC23370a.mo7193a();
            }
            i2++;
            i3 = i4;
        }
        f64618j = i;
        AbstractC23376j.EnumC23377a[] values2 = AbstractC23376j.EnumC23377a.values();
        int i5 = 0;
        int i6 = 0;
        while (i6 < 15) {
            AbstractC23376j.EnumC23377a enumC23377a = values2[i6];
            int i7 = i5;
            if (enumC23377a.f64678a) {
                i7 = i5 | enumC23377a.f64679b;
            }
            i6++;
            i5 = i7;
        }
        f64619k = i5;
        f64620l = AbstractC23372g.EnumC23373a.m7208a();
        f64621m = C23350e.DEFAULT_ROOT_VALUE_SEPARATOR;
    }

    public C23369e() {
        this(null);
    }

    public C23369e(C23369e c23369e, AbstractC23382n abstractC23382n) {
        this.f64622a = C23418b.m6903c();
        this.f64623b = C23416a.m6912k();
        this.f64624c = f64618j;
        this.f64625d = f64619k;
        this.f64626e = f64620l;
        this.f64628g = f64621m;
        this.f64627f = abstractC23382n;
        this.f64624c = c23369e.f64624c;
        this.f64625d = c23369e.f64625d;
        this.f64626e = c23369e.f64626e;
        this.f64628g = c23369e.f64628g;
        this.f64629h = c23369e.f64629h;
        this.f64630i = c23369e.f64630i;
    }

    public C23369e(AbstractC23382n abstractC23382n) {
        this.f64622a = C23418b.m6903c();
        this.f64623b = C23416a.m6912k();
        this.f64624c = f64618j;
        this.f64625d = f64619k;
        this.f64626e = f64620l;
        this.f64628g = f64621m;
        this.f64627f = abstractC23382n;
        this.f64630i = (char) 34;
    }

    /* renamed from: a */
    public AbstractC23372g m7218a(Writer writer, C23396b c23396b) throws IOException {
        C23415j c23415j = new C23415j(c23396b, this.f64626e, this.f64627f, writer, this.f64630i);
        int i = this.f64629h;
        if (i > 0) {
            c23415j.mo7081P(i);
        }
        AbstractC23384p abstractC23384p = this.f64628g;
        if (abstractC23384p != f64621m) {
            c23415j.f64843l = abstractC23384p;
        }
        return c23415j;
    }

    /* renamed from: b */
    public AbstractC23376j m7217b(InputStream inputStream, C23396b c23396b) throws IOException {
        return new C23406a(c23396b, inputStream).m7087b(this.f64625d, this.f64627f, this.f64623b, this.f64622a, this.f64624c);
    }

    /* renamed from: c */
    public C23346a m7216c() {
        SoftReference<C23346a> softReference;
        if (EnumC23370a.USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING.m7211d(this.f64624c)) {
            SoftReference<C23346a> softReference2 = C23347b.f64566b.get();
            C23346a c23346a = softReference2 == null ? null : softReference2.get();
            C23346a c23346a2 = c23346a;
            if (c23346a == null) {
                c23346a2 = new C23346a();
                C23363o c23363o = C23347b.f64565a;
                if (c23363o != null) {
                    SoftReference<C23346a> softReference3 = new SoftReference<>(c23346a2, c23363o.f64603b);
                    c23363o.f64602a.put(softReference3, Boolean.TRUE);
                    while (true) {
                        SoftReference softReference4 = (SoftReference) c23363o.f64603b.poll();
                        softReference = softReference3;
                        if (softReference4 == null) {
                            break;
                        }
                        c23363o.f64602a.remove(softReference4);
                    }
                } else {
                    softReference = new SoftReference<>(c23346a2);
                }
                C23347b.f64566b.set(softReference);
            }
            return c23346a2;
        }
        return new C23346a();
    }

    /* renamed from: d */
    public AbstractC23372g m7215d(OutputStream outputStream, EnumC23368d enumC23368d) throws IOException {
        C23396b c23396b = new C23396b(m7216c(), outputStream, false);
        c23396b.f64779b = enumC23368d;
        EnumC23368d enumC23368d2 = EnumC23368d.UTF8;
        if (enumC23368d != enumC23368d2) {
            return m7218a(enumC23368d == enumC23368d2 ? new C23405k(c23396b, outputStream) : new OutputStreamWriter(outputStream, enumC23368d.f64615a), c23396b);
        }
        C23413h c23413h = new C23413h(c23396b, this.f64626e, this.f64627f, outputStream, this.f64630i);
        int i = this.f64629h;
        if (i > 0) {
            c23413h.mo7081P(i);
        }
        AbstractC23384p abstractC23384p = this.f64628g;
        if (abstractC23384p != f64621m) {
            c23413h.f64843l = abstractC23384p;
        }
        return c23413h;
    }

    /* renamed from: e */
    public AbstractC23372g m7214e(Writer writer) throws IOException {
        return m7218a(writer, new C23396b(m7216c(), writer, false));
    }

    /* renamed from: f */
    public AbstractC23376j m7213f(InputStream inputStream) throws IOException, C23375i {
        return m7217b(inputStream, new C23396b(m7216c(), inputStream, false));
    }

    /* renamed from: g */
    public AbstractC23376j m7212g(String str) throws IOException, C23375i {
        int length = str.length();
        if (length > 32768) {
            StringReader stringReader = new StringReader(str);
            return new C23412g(new C23396b(m7216c(), stringReader, false), this.f64625d, stringReader, this.f64627f, this.f64622a.m6901e(this.f64624c));
        }
        C23396b c23396b = new C23396b(m7216c(), str, true);
        c23396b.m7134a(c23396b.f64785h);
        char[] m7253b = c23396b.f64781d.m7253b(0, length);
        c23396b.f64785h = m7253b;
        str.getChars(0, length, m7253b, 0);
        return new C23412g(c23396b, this.f64625d, null, this.f64627f, this.f64622a.m6901e(this.f64624c), m7253b, 0, 0 + length, true);
    }

    /* renamed from: h */
    public AbstractC23382n mo5683h() {
        return this.f64627f;
    }

    public Object readResolve() {
        return new C23369e(this, this.f64627f);
    }
}
