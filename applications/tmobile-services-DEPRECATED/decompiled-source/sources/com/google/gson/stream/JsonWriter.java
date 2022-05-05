package com.google.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/google/gson/stream/JsonWriter.class */
public class JsonWriter implements Closeable, Flushable {

    /* renamed from: o */
    private static final String[] f12213o = new String[128];

    /* renamed from: p */
    private static final String[] f12214p;

    /* renamed from: f */
    private final Writer f12215f;

    /* renamed from: i */
    private String f12218i;

    /* renamed from: k */
    private boolean f12220k;

    /* renamed from: l */
    private boolean f12221l;

    /* renamed from: m */
    private String f12222m;

    /* renamed from: g */
    private int[] f12216g = new int[32];

    /* renamed from: h */
    private int f12217h = 0;

    /* renamed from: j */
    private String f12219j = ":";

    /* renamed from: n */
    private boolean f12223n = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f12213o[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f12213o;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f12214p = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        m8119J(6);
        if (writer != null) {
            this.f12215f = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    /* renamed from: B */
    private JsonWriter m8121B(int i, String str) throws IOException {
        m8109b();
        m8119J(i);
        this.f12215f.write(str);
        return this;
    }

    /* renamed from: I */
    private int m8120I() {
        int i = this.f12217h;
        if (i != 0) {
            return this.f12216g[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: J */
    private void m8119J(int i) {
        int i2 = this.f12217h;
        int[] iArr = this.f12216g;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f12216g = iArr2;
        }
        int[] iArr3 = this.f12216g;
        int i3 = this.f12217h;
        this.f12217h = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: K */
    private void m8118K(int i) {
        this.f12216g[this.f12217h - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m8113X(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f12221l
            if (r0 == 0) goto L_0x000e
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.f12214p
            r8 = r0
            goto L_0x0012
        L_0x000e:
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.f12213o
            r8 = r0
        L_0x0012:
            r0 = r6
            java.io.Writer r0 = r0.f12215f
            java.lang.String r1 = "\""
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
            java.io.Writer r0 = r0.f12215f
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x0087:
            r0 = r6
            java.io.Writer r0 = r0.f12215f
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
            java.io.Writer r0 = r0.f12215f
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.f12215f
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.m8113X(java.lang.String):void");
    }

    /* renamed from: a */
    private void m8110a() throws IOException {
        int I = m8120I();
        if (I == 5) {
            this.f12215f.write(44);
        } else if (I != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m8095q();
        m8118K(4);
    }

    /* renamed from: b */
    private void m8109b() throws IOException {
        int I = m8120I();
        if (I == 1) {
            m8118K(2);
            m8095q();
        } else if (I == 2) {
            this.f12215f.append(',');
            m8095q();
        } else if (I != 4) {
            if (I != 6) {
                if (I != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f12220k) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m8118K(7);
        } else {
            this.f12215f.append((CharSequence) this.f12219j);
            m8118K(5);
        }
    }

    /* renamed from: h */
    private JsonWriter m8103h(int i, int i2, String str) throws IOException {
        int I = m8120I();
        if (I != i2 && I != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f12222m == null) {
            this.f12217h--;
            if (I == i2) {
                m8095q();
            }
            this.f12215f.write(str);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.f12222m);
        }
    }

    /* renamed from: i0 */
    private void m8101i0() throws IOException {
        if (this.f12222m != null) {
            m8110a();
            m8113X(this.f12222m);
            this.f12222m = null;
        }
    }

    /* renamed from: q */
    private void m8095q() throws IOException {
        if (this.f12218i != null) {
            this.f12215f.write("\n");
            int i = this.f12217h;
            for (int i2 = 1; i2 < i; i2++) {
                this.f12215f.write(this.f12218i);
            }
        }
    }

    /* renamed from: L */
    public final void m8117L(boolean z) {
        this.f12221l = z;
    }

    /* renamed from: N */
    public final void m8116N(String str) {
        if (str.length() == 0) {
            this.f12218i = null;
            this.f12219j = ":";
            return;
        }
        this.f12218i = str;
        this.f12219j = ": ";
    }

    /* renamed from: V */
    public final void m8115V(boolean z) {
        this.f12220k = z;
    }

    /* renamed from: W */
    public final void m8114W(boolean z) {
        this.f12223n = z;
    }

    /* renamed from: Y */
    public JsonWriter mo8112Y(long j) throws IOException {
        m8101i0();
        m8109b();
        this.f12215f.write(Long.toString(j));
        return this;
    }

    /* renamed from: Z */
    public JsonWriter mo8111Z(Boolean bool) throws IOException {
        if (bool == null) {
            return mo8094t();
        }
        m8101i0();
        m8109b();
        this.f12215f.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    /* renamed from: b0 */
    public JsonWriter mo8108b0(Number number) throws IOException {
        if (number == null) {
            return mo8094t();
        }
        m8101i0();
        String obj = number.toString();
        if (this.f12220k || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m8109b();
            this.f12215f.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12215f.close();
        int i = this.f12217h;
        if (i > 1 || (i == 1 && this.f12216g[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f12217h = 0;
    }

    /* renamed from: d */
    public JsonWriter mo8107d() throws IOException {
        m8101i0();
        m8121B(1, "[");
        return this;
    }

    /* renamed from: d0 */
    public JsonWriter mo8106d0(String str) throws IOException {
        if (str == null) {
            return mo8094t();
        }
        m8101i0();
        m8109b();
        m8113X(str);
        return this;
    }

    /* renamed from: e */
    public JsonWriter mo8105e() throws IOException {
        m8101i0();
        m8121B(3, "{");
        return this;
    }

    /* renamed from: e0 */
    public JsonWriter mo8104e0(boolean z) throws IOException {
        m8101i0();
        m8109b();
        this.f12215f.write(z ? "true" : "false");
        return this;
    }

    public void flush() throws IOException {
        if (this.f12217h != 0) {
            this.f12215f.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: i */
    public JsonWriter mo8102i() throws IOException {
        m8103h(1, 2, "]");
        return this;
    }

    /* renamed from: k */
    public JsonWriter mo8100k() throws IOException {
        m8103h(3, 5, "}");
        return this;
    }

    /* renamed from: l */
    public final boolean m8099l() {
        return this.f12223n;
    }

    /* renamed from: m */
    public final boolean m8098m() {
        return this.f12221l;
    }

    /* renamed from: o */
    public boolean m8097o() {
        return this.f12220k;
    }

    /* renamed from: p */
    public JsonWriter mo8096p(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f12222m != null) {
            throw new IllegalStateException();
        } else if (this.f12217h != 0) {
            this.f12222m = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    /* renamed from: t */
    public JsonWriter mo8094t() throws IOException {
        if (this.f12222m != null) {
            if (this.f12223n) {
                m8101i0();
            } else {
                this.f12222m = null;
                return this;
            }
        }
        m8109b();
        this.f12215f.write("null");
        return this;
    }
}
