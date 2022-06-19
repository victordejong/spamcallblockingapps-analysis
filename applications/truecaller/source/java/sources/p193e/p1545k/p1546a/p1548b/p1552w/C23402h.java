package p193e.p1545k.p1546a.p1548b.p1552w;

import java.io.IOException;
import java.io.Writer;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23346a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23362n;
/* renamed from: e.k.a.b.w.h */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/h.class */
public final class C23402h extends Writer {

    /* renamed from: a */
    public final C23362n f64803a;

    public C23402h(C23346a c23346a) {
        this.f64803a = new C23362n(c23346a);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        this.f64803a.m7239a(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) {
        String charSequence2 = charSequence.subSequence(i, i2).toString();
        this.f64803a.m7239a(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public Appendable mo49648append(char c) throws IOException {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer
    public void write(int i) {
        C23362n c23362n = this.f64803a;
        char c = (char) i;
        if (c23362n.f64593c >= 0) {
            c23362n.m7221s(16);
        }
        c23362n.f64600j = null;
        c23362n.f64601k = null;
        char[] cArr = c23362n.f64598h;
        char[] cArr2 = cArr;
        if (c23362n.f64599i >= cArr.length) {
            c23362n.m7230j();
            cArr2 = c23362n.f64598h;
        }
        int i2 = c23362n.f64599i;
        c23362n.f64599i = i2 + 1;
        cArr2[i2] = c;
    }

    @Override // java.io.Writer
    public void write(String str) {
        this.f64803a.m7239a(str, 0, str.length());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        this.f64803a.m7239a(str, i, i2);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        this.f64803a.m7238b(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        this.f64803a.m7238b(cArr, i, i2);
    }
}
