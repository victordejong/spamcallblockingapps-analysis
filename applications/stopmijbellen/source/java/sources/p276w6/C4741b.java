package p276w6;

import android.support.p012v4.media.C0082b;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
/* renamed from: w6.b */
/* loaded from: classes-dex2jar.jar:w6/b.class */
public class C4741b implements Closeable, Flushable {

    /* renamed from: j */
    public static final String[] f14618j = new String[128];

    /* renamed from: k */
    public static final String[] f14619k;

    /* renamed from: a */
    public final Writer f14620a;

    /* renamed from: d */
    public String f14623d;

    /* renamed from: f */
    public boolean f14625f;

    /* renamed from: g */
    public boolean f14626g;

    /* renamed from: h */
    public String f14627h;

    /* renamed from: b */
    public int[] f14621b = new int[32];

    /* renamed from: c */
    public int f14622c = 0;

    /* renamed from: e */
    public String f14624e = ":";

    /* renamed from: i */
    public boolean f14628i = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f14618j[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f14618j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f14619k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C4741b(Writer writer) {
        m512B(6);
        Objects.requireNonNull(writer, "out == null");
        this.f14620a = writer;
    }

    /* renamed from: A */
    public final int m513A() {
        int i = this.f14622c;
        if (i != 0) {
            return this.f14621b[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: B */
    public final void m512B(int i) {
        int i2 = this.f14622c;
        int[] iArr = this.f14621b;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f14621b = iArr2;
        }
        int[] iArr3 = this.f14621b;
        int i3 = this.f14622c;
        this.f14622c = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: D */
    public final void m511D(int i) {
        this.f14621b[this.f14622c - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m510J(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f14626g
            if (r0 == 0) goto Le
            java.lang.String[] r0 = p276w6.C4741b.f14619k
            r8 = r0
            goto L12
        Le:
            java.lang.String[] r0 = p276w6.C4741b.f14618j
            r8 = r0
        L12:
            r0 = r6
            java.io.Writer r0 = r0.f14620a
            java.lang.String r1 = "\""
            r0.write(r1)
            r0 = r7
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L26:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto La0
            r0 = r7
            r1 = r10
            char r0 = r0.charAt(r1)
            r12 = r0
            r0 = r12
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L52
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L71
            r0 = r11
            r15 = r0
            goto L96
        L52:
            r0 = r12
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L61
            java.lang.String r0 = "\\u2028"
            r14 = r0
            goto L71
        L61:
            r0 = r11
            r15 = r0
            r0 = r12
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L96
            java.lang.String r0 = "\\u2029"
            r14 = r0
        L71:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L87
            r0 = r6
            java.io.Writer r0 = r0.f14620a
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L87:
            r0 = r6
            java.io.Writer r0 = r0.f14620a
            r1 = r14
            r0.write(r1)
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
        L96:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            goto L26
        La0:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto Lb4
            r0 = r6
            java.io.Writer r0 = r0.f14620a
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        Lb4:
            r0 = r6
            java.io.Writer r0 = r0.f14620a
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p276w6.C4741b.m510J(java.lang.String):void");
    }

    /* renamed from: K */
    public C4741b m509K(Number number) throws IOException {
        if (number == null) {
            m500s();
            return this;
        }
        m507P();
        String obj = number.toString();
        if (this.f14625f || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m506d();
            this.f14620a.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    /* renamed from: L */
    public C4741b m508L(String str) throws IOException {
        if (str == null) {
            m500s();
            return this;
        }
        m507P();
        m506d();
        m510J(str);
        return this;
    }

    /* renamed from: P */
    public final void m507P() throws IOException {
        if (this.f14627h != null) {
            int m513A = m513A();
            if (m513A == 5) {
                this.f14620a.write(44);
            } else if (m513A != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            m501r();
            m511D(4);
            m510J(this.f14627h);
            this.f14627h = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14620a.close();
        int i = this.f14622c;
        if (i > 1 || (i == 1 && this.f14621b[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f14622c = 0;
    }

    /* renamed from: d */
    public final void m506d() throws IOException {
        int m513A = m513A();
        if (m513A == 1) {
            m511D(2);
            m501r();
        } else if (m513A == 2) {
            this.f14620a.append(',');
            m501r();
        } else if (m513A == 4) {
            this.f14620a.append((CharSequence) this.f14624e);
            m511D(5);
        } else {
            if (m513A != 6) {
                if (m513A != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f14625f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m511D(7);
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f14622c != 0) {
            this.f14620a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: k */
    public C4741b m505k() throws IOException {
        m507P();
        m506d();
        m512B(1);
        this.f14620a.write("[");
        return this;
    }

    /* renamed from: l */
    public final C4741b m504l(int i, int i2, String str) throws IOException {
        int m513A = m513A();
        if (m513A == i2 || m513A == i) {
            if (this.f14627h != null) {
                StringBuilder m8752j = C0082b.m8752j("Dangling name: ");
                m8752j.append(this.f14627h);
                throw new IllegalStateException(m8752j.toString());
            }
            this.f14622c--;
            if (m513A == i2) {
                m501r();
            }
            this.f14620a.write(str);
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    /* renamed from: o */
    public C4741b m503o() throws IOException {
        m504l(1, 2, "]");
        return this;
    }

    /* renamed from: p */
    public C4741b m502p(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f14627h == null) {
            if (this.f14622c == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            this.f14627h = str;
            return this;
        }
        throw new IllegalStateException();
    }

    /* renamed from: r */
    public final void m501r() throws IOException {
        if (this.f14623d == null) {
            return;
        }
        this.f14620a.write("\n");
        int i = this.f14622c;
        for (int i2 = 1; i2 < i; i2++) {
            this.f14620a.write(this.f14623d);
        }
    }

    /* renamed from: s */
    public C4741b m500s() throws IOException {
        if (this.f14627h != null) {
            if (!this.f14628i) {
                this.f14627h = null;
                return this;
            }
            m507P();
        }
        m506d();
        this.f14620a.write("null");
        return this;
    }
}
