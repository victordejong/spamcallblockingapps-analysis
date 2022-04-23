package com.bytedance.sdk.openadsdk.preload.a.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/d/c.class */
public class c implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f10071a = new String[128];

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f10072b;

    /* renamed from: c  reason: collision with root package name */
    private final Writer f10073c;
    private String f;
    private boolean h;
    private boolean i;
    private String j;

    /* renamed from: d  reason: collision with root package name */
    private int[] f10074d = new int[32];
    private int e = 0;
    private String g = ":";
    private boolean k = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f10071a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f10071a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f10072b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        Objects.requireNonNull(writer, "out == null");
        this.f10073c = writer;
    }

    private int a() {
        int i = this.e;
        if (i != 0) {
            return this.f10074d[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private c a(int i, char c2) throws IOException {
        m();
        a(i);
        this.f10073c.write(c2);
        return this;
    }

    private c a(int i, int i2, char c2) throws IOException {
        int a2 = a();
        if (a2 != i2 && a2 != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.j == null) {
            this.e--;
            if (a2 == i2) {
                k();
            }
            this.f10073c.write(c2);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.j);
        }
    }

    private void a(int i) {
        int i2 = this.e;
        int[] iArr = this.f10074d;
        if (i2 == iArr.length) {
            this.f10074d = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f10074d;
        int i3 = this.e;
        this.e = i3 + 1;
        iArr2[i3] = i;
    }

    private void b(int i) {
        this.f10074d[this.e - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.i
            if (r0 == 0) goto L_0x000e
            java.lang.String[] r0 = com.bytedance.sdk.openadsdk.preload.a.d.c.f10072b
            r8 = r0
            goto L_0x0012
        L_0x000e:
            java.lang.String[] r0 = com.bytedance.sdk.openadsdk.preload.a.d.c.f10071a
            r8 = r0
        L_0x0012:
            r0 = r6
            java.io.Writer r0 = r0.f10073c
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
            java.io.Writer r0 = r0.f10073c
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x0087:
            r0 = r6
            java.io.Writer r0 = r0.f10073c
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
            java.io.Writer r0 = r0.f10073c
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.f10073c
            r1 = 34
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.d.c.d(java.lang.String):void");
    }

    private void j() throws IOException {
        if (this.j != null) {
            l();
            d(this.j);
            this.j = null;
        }
    }

    private void k() throws IOException {
        if (this.f != null) {
            this.f10073c.write(10);
            int i = this.e;
            for (int i2 = 1; i2 < i; i2++) {
                this.f10073c.write(this.f);
            }
        }
    }

    private void l() throws IOException {
        int a2 = a();
        if (a2 == 5) {
            this.f10073c.write(44);
        } else if (a2 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    private void m() throws IOException {
        int a2 = a();
        if (a2 == 1) {
            b(2);
            k();
        } else if (a2 == 2) {
            this.f10073c.append(',');
            k();
        } else if (a2 != 4) {
            if (a2 != 6) {
                if (a2 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            b(7);
        } else {
            this.f10073c.append((CharSequence) this.g);
            b(5);
        }
    }

    public c a(long j) throws IOException {
        j();
        m();
        this.f10073c.write(Long.toString(j));
        return this;
    }

    public c a(Boolean bool) throws IOException {
        if (bool == null) {
            return f();
        }
        j();
        m();
        this.f10073c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        j();
        String obj = number.toString();
        if (this.h || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m();
            this.f10073c.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
    }

    public c a(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.j != null) {
            throw new IllegalStateException();
        } else if (this.e != 0) {
            this.j = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    public c a(boolean z) throws IOException {
        j();
        m();
        this.f10073c.write(z ? "true" : "false");
        return this;
    }

    public c b() throws IOException {
        j();
        return a(1, '[');
    }

    public c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        j();
        m();
        d(str);
        return this;
    }

    public final void b(boolean z) {
        this.h = z;
    }

    public c c() throws IOException {
        return a(1, 2, ']');
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.f = null;
            this.g = ":";
            return;
        }
        this.f = str;
        this.g = ": ";
    }

    public final void c(boolean z) {
        this.i = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10073c.close();
        int i = this.e;
        if (i > 1 || (i == 1 && this.f10074d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.e = 0;
    }

    public c d() throws IOException {
        j();
        return a(3, '{');
    }

    public final void d(boolean z) {
        this.k = z;
    }

    public c e() throws IOException {
        return a(3, 5, '}');
    }

    public c f() throws IOException {
        if (this.j != null) {
            if (this.k) {
                j();
            } else {
                this.j = null;
                return this;
            }
        }
        m();
        this.f10073c.write(JsonReaderKt.NULL);
        return this;
    }

    public void flush() throws IOException {
        if (this.e != 0) {
            this.f10073c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public boolean g() {
        return this.h;
    }

    public final boolean h() {
        return this.i;
    }

    public final boolean i() {
        return this.k;
    }
}
