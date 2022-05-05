package p081h.p203i.p384e.p386w.p387m;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10101g;
import p081h.p203i.p384e.C10106l;
import p081h.p203i.p384e.C10107m;
import p081h.p203i.p384e.C10110p;
import p081h.p203i.p384e.p391y.C10177c;
/* renamed from: h.i.e.w.m.b */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/m/b.class */
public final class C10167b extends C10177c {

    /* renamed from: o */
    public static final Writer f22895o = new C10168a();

    /* renamed from: p */
    public static final C10110p f22896p = new C10110p("closed");

    /* renamed from: m */
    public String f22898m;

    /* renamed from: l */
    public final List<AbstractC10104j> f22897l = new ArrayList();

    /* renamed from: n */
    public AbstractC10104j f22899n = C10106l.f22832a;

    /* renamed from: h.i.e.w.m.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/m/b$a.class */
    public class C10168a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public C10167b() {
        super(f22895o);
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: a */
    public C10177c mo13235a(Boolean bool) throws IOException {
        if (bool == null) {
            mo13214k();
            return this;
        }
        m13291a(new C10110p(bool));
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: a */
    public C10177c mo13234a(Number number) throws IOException {
        if (number == null) {
            mo13214k();
            return this;
        }
        if (!m13216i()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        m13291a(new C10110p(number));
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: a */
    public C10177c mo13233a(String str) throws IOException {
        if (this.f22897l.isEmpty() || this.f22898m != null) {
            throw new IllegalStateException();
        } else if (mo13213l() instanceof C10107m) {
            this.f22898m = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final void m13291a(AbstractC10104j jVar) {
        if (this.f22898m != null) {
            if (!jVar.m13376t() || m13219g()) {
                ((C10107m) mo13213l()).m13372a(this.f22898m, jVar);
            }
            this.f22898m = null;
        } else if (this.f22897l.isEmpty()) {
            this.f22899n = jVar;
        } else {
            AbstractC10104j l = mo13213l();
            if (l instanceof C10101g) {
                ((C10101g) l).m13382a(jVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: c */
    public C10177c mo13227c() throws IOException {
        C10101g gVar = new C10101g();
        m13291a(gVar);
        this.f22897l.add(gVar);
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f22897l.isEmpty()) {
            this.f22897l.add(f22896p);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: d */
    public C10177c mo13224d() throws IOException {
        C10107m mVar = new C10107m();
        m13291a(mVar);
        this.f22897l.add(mVar);
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: d */
    public C10177c mo13223d(String str) throws IOException {
        if (str == null) {
            mo13214k();
            return this;
        }
        m13291a(new C10110p(str));
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: d */
    public C10177c mo13222d(boolean z) throws IOException {
        m13291a(new C10110p(Boolean.valueOf(z)));
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: e */
    public C10177c mo13221e() throws IOException {
        if (this.f22897l.isEmpty() || this.f22898m != null) {
            throw new IllegalStateException();
        } else if (mo13213l() instanceof C10101g) {
            List<AbstractC10104j> list = this.f22897l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: f */
    public C10177c mo13220f() throws IOException {
        if (this.f22897l.isEmpty() || this.f22898m != null) {
            throw new IllegalStateException();
        } else if (mo13213l() instanceof C10107m) {
            List<AbstractC10104j> list = this.f22897l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p081h.p203i.p384e.p391y.C10177c, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: g */
    public C10177c mo13218g(long j) throws IOException {
        m13291a(new C10110p(Long.valueOf(j)));
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: k */
    public C10177c mo13214k() throws IOException {
        m13291a(C10106l.f22832a);
        return this;
    }

    @Override // p081h.p203i.p384e.p391y.C10177c
    /* renamed from: l */
    public final AbstractC10104j mo13213l() {
        List<AbstractC10104j> list = this.f22897l;
        return list.get(list.size() - 1);
    }

    /* renamed from: n */
    public AbstractC10104j m13290n() {
        if (this.f22897l.isEmpty()) {
            return this.f22899n;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f22897l);
    }
}
