package com.google.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.gson.stream.b */
/* loaded from: classes2-dex2jar.jar:com/google/gson/stream/b.class */
public class C9333b implements Closeable, Flushable {

    /* renamed from: d */
    private static final String[] f39917d = new String[128];

    /* renamed from: e */
    private static final String[] f39918e;

    /* renamed from: f */
    private final Writer f39919f;

    /* renamed from: i */
    private String f39922i;

    /* renamed from: k */
    private boolean f39924k;

    /* renamed from: l */
    private boolean f39925l;

    /* renamed from: m */
    private String f39926m;

    /* renamed from: g */
    private int[] f39920g = new int[32];

    /* renamed from: h */
    private int f39921h = 0;

    /* renamed from: j */
    private String f39923j = ":";

    /* renamed from: n */
    private boolean f39927n = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f39917d[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f39917d;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f39918e = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C9333b(Writer writer) {
        m1091D(6);
        Objects.requireNonNull(writer, "out == null");
        this.f39919f = writer;
    }

    /* renamed from: A */
    private C9333b m1093A(int i, char c) {
        m1079e();
        m1091D(i);
        this.f39919f.write(c);
        return this;
    }

    /* renamed from: C */
    private int m1092C() {
        int i = this.f39921h;
        if (i != 0) {
            return this.f39920g[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: D */
    private void m1091D(int i) {
        int i2 = this.f39921h;
        int[] iArr = this.f39920g;
        if (i2 == iArr.length) {
            this.f39920g = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f39920g;
        int i3 = this.f39921h;
        this.f39921h = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: E */
    private void m1090E(int i) {
        this.f39920g[this.f39921h - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1087N(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f39925l
            if (r0 == 0) goto Le
            java.lang.String[] r0 = com.google.gson.stream.C9333b.f39918e
            r8 = r0
            goto L12
        Le:
            java.lang.String[] r0 = com.google.gson.stream.C9333b.f39917d
            r8 = r0
        L12:
            r0 = r6
            java.io.Writer r0 = r0.f39919f
            r1 = 34
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
            java.io.Writer r0 = r0.f39919f
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L87:
            r0 = r6
            java.io.Writer r0 = r0.f39919f
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
            java.io.Writer r0 = r0.f39919f
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        Lb4:
            r0 = r6
            java.io.Writer r0 = r0.f39919f
            r1 = 34
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.C9333b.m1087N(java.lang.String):void");
    }

    /* renamed from: Y */
    private void m1081Y() {
        if (this.f39926m != null) {
            m1080a();
            m1087N(this.f39926m);
            this.f39926m = null;
        }
    }

    /* renamed from: a */
    private void m1080a() {
        int m1092C = m1092C();
        if (m1092C == 5) {
            this.f39919f.write(44);
        } else if (m1092C != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m1072y();
        m1090E(4);
    }

    /* renamed from: e */
    private void m1079e() {
        int m1092C = m1092C();
        if (m1092C == 1) {
            m1090E(2);
            m1072y();
        } else if (m1092C == 2) {
            this.f39919f.append(',');
            m1072y();
        } else if (m1092C == 4) {
            this.f39919f.append((CharSequence) this.f39923j);
            m1090E(5);
        } else {
            if (m1092C != 6) {
                if (m1092C != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f39924k) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m1090E(7);
        }
    }

    /* renamed from: k */
    private C9333b m1076k(int i, int i2, char c) {
        int m1092C = m1092C();
        if (m1092C == i2 || m1092C == i) {
            if (this.f39926m != null) {
                throw new IllegalStateException("Dangling name: " + this.f39926m);
            }
            this.f39921h--;
            if (m1092C == i2) {
                m1072y();
            }
            this.f39919f.write(c);
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    /* renamed from: y */
    private void m1072y() {
        if (this.f39922i == null) {
            return;
        }
        this.f39919f.write(10);
        int i = this.f39921h;
        for (int i2 = 1; i2 < i; i2++) {
            this.f39919f.write(this.f39922i);
        }
    }

    /* renamed from: I */
    public final void m1089I(String str) {
        if (str.length() == 0) {
            this.f39922i = null;
            this.f39923j = ":";
            return;
        }
        this.f39922i = str;
        this.f39923j = ": ";
    }

    /* renamed from: L */
    public final void m1088L(boolean z) {
        this.f39924k = z;
    }

    /* renamed from: P */
    public C9333b m1086P(double d) {
        m1081Y();
        if (this.f39924k || (!Double.isNaN(d) && !Double.isInfinite(d))) {
            m1079e();
            this.f39919f.append((CharSequence) Double.toString(d));
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
    }

    /* renamed from: Q */
    public C9333b m1085Q(long j) {
        m1081Y();
        m1079e();
        this.f39919f.write(Long.toString(j));
        return this;
    }

    /* renamed from: R */
    public C9333b m1084R(Number number) {
        if (number == null) {
            return m1071z();
        }
        m1081Y();
        String obj = number.toString();
        if (this.f39924k || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m1079e();
            this.f39919f.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    /* renamed from: U */
    public C9333b m1083U(String str) {
        if (str == null) {
            return m1071z();
        }
        m1081Y();
        m1079e();
        m1087N(str);
        return this;
    }

    /* renamed from: W */
    public C9333b m1082W(boolean z) {
        m1081Y();
        m1079e();
        this.f39919f.write(z ? "true" : "false");
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f39919f.close();
        int i = this.f39921h;
        if (i > 1 || (i == 1 && this.f39920g[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f39921h = 0;
    }

    /* renamed from: f */
    public C9333b m1078f() {
        m1081Y();
        return m1093A(1, '[');
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.f39921h != 0) {
            this.f39919f.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: g */
    public C9333b m1077g() {
        m1081Y();
        return m1093A(3, '{');
    }

    /* renamed from: p */
    public C9333b m1075p() {
        return m1076k(1, 2, ']');
    }

    /* renamed from: q */
    public C9333b m1074q() {
        return m1076k(3, 5, '}');
    }

    /* renamed from: u */
    public C9333b m1073u(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f39926m == null) {
            if (this.f39921h == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            this.f39926m = str;
            return this;
        }
        throw new IllegalStateException();
    }

    /* renamed from: z */
    public C9333b m1071z() {
        if (this.f39926m != null) {
            if (!this.f39927n) {
                this.f39926m = null;
                return this;
            }
            m1081Y();
        }
        m1079e();
        this.f39919f.write("null");
        return this;
    }
}
