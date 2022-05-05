package p081h.p203i.p384e.p391y;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.e.y.c */
/* loaded from: classes2-dex2jar.jar:h/i/e/y/c.class */
public class C10177c implements Closeable, Flushable {

    /* renamed from: j */
    public static final String[] f22932j = new String[128];

    /* renamed from: k */
    public static final String[] f22933k;

    /* renamed from: a */
    public final Writer f22934a;

    /* renamed from: d */
    public String f22937d;

    /* renamed from: f */
    public boolean f22939f;

    /* renamed from: g */
    public boolean f22940g;

    /* renamed from: h */
    public String f22941h;

    /* renamed from: b */
    public int[] f22935b = new int[32];

    /* renamed from: c */
    public int f22936c = 0;

    /* renamed from: e */
    public String f22938e = ":";

    /* renamed from: i */
    public boolean f22942i = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f22932j[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f22932j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f22933k = (String[]) strArr.clone();
        String[] strArr2 = f22933k;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C10177c(Writer writer) {
        m13238a(6);
        if (writer != null) {
            this.f22934a = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    /* renamed from: a */
    public final C10177c m13237a(int i, char c) throws IOException {
        m13231b();
        m13238a(i);
        this.f22934a.write(c);
        return this;
    }

    /* renamed from: a */
    public final C10177c m13236a(int i, int i2, char c) throws IOException {
        int l = mo13213l();
        if (l != i2 && l != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f22941h == null) {
            this.f22936c--;
            if (l == i2) {
                m13215j();
            }
            this.f22934a.write(c);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.f22941h);
        }
    }

    /* renamed from: a */
    public C10177c mo13235a(Boolean bool) throws IOException {
        if (bool == null) {
            return mo13214k();
        }
        m13212m();
        m13231b();
        this.f22934a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    /* renamed from: a */
    public C10177c mo13234a(Number number) throws IOException {
        if (number == null) {
            return mo13214k();
        }
        m13212m();
        String obj = number.toString();
        if (this.f22939f || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m13231b();
            this.f22934a.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    /* renamed from: a */
    public C10177c mo13233a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f22941h != null) {
            throw new IllegalStateException();
        } else if (this.f22936c != 0) {
            this.f22941h = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    /* renamed from: a */
    public final void m13239a() throws IOException {
        int l = mo13213l();
        if (l == 5) {
            this.f22934a.write(44);
        } else if (l != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m13215j();
        m13230b(4);
    }

    /* renamed from: a */
    public final void m13238a(int i) {
        int i2 = this.f22936c;
        int[] iArr = this.f22935b;
        if (i2 == iArr.length) {
            this.f22935b = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f22935b;
        int i3 = this.f22936c;
        this.f22936c = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: a */
    public final void m13232a(boolean z) {
        this.f22940g = z;
    }

    /* renamed from: b */
    public final void m13231b() throws IOException {
        int l = mo13213l();
        if (l == 1) {
            m13230b(2);
            m13215j();
        } else if (l == 2) {
            this.f22934a.append(',');
            m13215j();
        } else if (l != 4) {
            if (l != 6) {
                if (l != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f22939f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m13230b(7);
        } else {
            this.f22934a.append((CharSequence) this.f22938e);
            m13230b(5);
        }
    }

    /* renamed from: b */
    public final void m13230b(int i) {
        this.f22935b[this.f22936c - 1] = i;
    }

    /* renamed from: b */
    public final void m13229b(String str) {
        if (str.length() == 0) {
            this.f22937d = null;
            this.f22938e = ":";
            return;
        }
        this.f22937d = str;
        this.f22938e = ": ";
    }

    /* renamed from: b */
    public final void m13228b(boolean z) {
        this.f22939f = z;
    }

    /* renamed from: c */
    public C10177c mo13227c() throws IOException {
        m13212m();
        m13237a(1, '[');
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13226c(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f22940g
            if (r0 == 0) goto L_0x000e
            java.lang.String[] r0 = p081h.p203i.p384e.p391y.C10177c.f22933k
            r8 = r0
            goto L_0x0012
        L_0x000e:
            java.lang.String[] r0 = p081h.p203i.p384e.p391y.C10177c.f22932j
            r8 = r0
        L_0x0012:
            r0 = r6
            java.io.Writer r0 = r0.f22934a
            r1 = 34
            r0.write(r1)
            r0 = r7
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0026:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x00a0
            r0 = r7
            r1 = r10
            char r0 = r0.charAt(r1)
            r12 = r0
            r0 = r12
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L_0x0052
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0071
            r0 = r11
            r15 = r0
            goto L_0x0096
        L_0x0052:
            r0 = r12
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L_0x0061
            java.lang.String r0 = "\\u2028"
            r14 = r0
            goto L_0x0071
        L_0x0061:
            r0 = r11
            r15 = r0
            r0 = r12
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L_0x0096
            java.lang.String r0 = "\\u2029"
            r14 = r0
        L_0x0071:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x0087
            r0 = r6
            java.io.Writer r0 = r0.f22934a
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x0087:
            r0 = r6
            java.io.Writer r0 = r0.f22934a
            r1 = r14
            r0.write(r1)
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
        L_0x0096:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            goto L_0x0026
        L_0x00a0:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x00b4
            r0 = r6
            java.io.Writer r0 = r0.f22934a
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.f22934a
            r1 = 34
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p391y.C10177c.m13226c(java.lang.String):void");
    }

    /* renamed from: c */
    public final void m13225c(boolean z) {
        this.f22942i = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f22934a.close();
        int i = this.f22936c;
        if (i > 1 || (i == 1 && this.f22935b[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f22936c = 0;
    }

    /* renamed from: d */
    public C10177c mo13224d() throws IOException {
        m13212m();
        m13237a(3, '{');
        return this;
    }

    /* renamed from: d */
    public C10177c mo13223d(String str) throws IOException {
        if (str == null) {
            return mo13214k();
        }
        m13212m();
        m13231b();
        m13226c(str);
        return this;
    }

    /* renamed from: d */
    public C10177c mo13222d(boolean z) throws IOException {
        m13212m();
        m13231b();
        this.f22934a.write(z ? "true" : "false");
        return this;
    }

    /* renamed from: e */
    public C10177c mo13221e() throws IOException {
        m13236a(1, 2, ']');
        return this;
    }

    /* renamed from: f */
    public C10177c mo13220f() throws IOException {
        m13236a(3, 5, '}');
        return this;
    }

    public void flush() throws IOException {
        if (this.f22936c != 0) {
            this.f22934a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: g */
    public C10177c mo13218g(long j) throws IOException {
        m13212m();
        m13231b();
        this.f22934a.write(Long.toString(j));
        return this;
    }

    /* renamed from: g */
    public final boolean m13219g() {
        return this.f22942i;
    }

    /* renamed from: h */
    public final boolean m13217h() {
        return this.f22940g;
    }

    /* renamed from: i */
    public boolean m13216i() {
        return this.f22939f;
    }

    /* renamed from: j */
    public final void m13215j() throws IOException {
        if (this.f22937d != null) {
            this.f22934a.write(10);
            int i = this.f22936c;
            for (int i2 = 1; i2 < i; i2++) {
                this.f22934a.write(this.f22937d);
            }
        }
    }

    /* renamed from: k */
    public C10177c mo13214k() throws IOException {
        if (this.f22941h != null) {
            if (this.f22942i) {
                m13212m();
            } else {
                this.f22941h = null;
                return this;
            }
        }
        m13231b();
        this.f22934a.write(C14247d.f31851f);
        return this;
    }

    /* renamed from: l */
    public final int mo13213l() {
        int i = this.f22936c;
        if (i != 0) {
            return this.f22935b[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: m */
    public final void m13212m() throws IOException {
        if (this.f22941h != null) {
            m13239a();
            m13226c(this.f22941h);
            this.f22941h = null;
        }
    }
}
