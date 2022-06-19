package com.bytedance.sdk.openadsdk.preload.p193a.p200d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/d/c.class */
public class C5247c implements Closeable, Flushable {

    /* renamed from: a */
    private static final String[] f18644a = new String[128];

    /* renamed from: b */
    private static final String[] f18645b;

    /* renamed from: c */
    private final Writer f18646c;

    /* renamed from: f */
    private String f18649f;

    /* renamed from: h */
    private boolean f18651h;

    /* renamed from: i */
    private boolean f18652i;

    /* renamed from: j */
    private String f18653j;

    /* renamed from: d */
    private int[] f18647d = new int[32];

    /* renamed from: e */
    private int f18648e = 0;

    /* renamed from: g */
    private String f18650g = ":";

    /* renamed from: k */
    private boolean f18654k = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f18644a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f18644a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f18645b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C5247c(Writer writer) {
        m32764a(6);
        Objects.requireNonNull(writer, "out == null");
        this.f18646c = writer;
    }

    /* renamed from: a */
    private int m32765a() {
        int i = this.f18648e;
        if (i != 0) {
            return this.f18647d[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: a */
    private C5247c m32763a(int i, char c) throws IOException {
        m32738m();
        m32764a(i);
        this.f18646c.write(c);
        return this;
    }

    /* renamed from: a */
    private C5247c m32762a(int i, int i2, char c) throws IOException {
        int m32765a = m32765a();
        if (m32765a == i2 || m32765a == i) {
            if (this.f18653j != null) {
                throw new IllegalStateException("Dangling name: " + this.f18653j);
            }
            this.f18648e--;
            if (m32765a == i2) {
                m32740k();
            }
            this.f18646c.write(c);
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    /* renamed from: a */
    private void m32764a(int i) {
        int i2 = this.f18648e;
        int[] iArr = this.f18647d;
        if (i2 == iArr.length) {
            this.f18647d = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f18647d;
        int i3 = this.f18648e;
        this.f18648e = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: b */
    private void m32755b(int i) {
        this.f18647d[this.f18648e - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m32748d(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f18652i
            if (r0 == 0) goto Le
            java.lang.String[] r0 = com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c.f18645b
            r8 = r0
            goto L12
        Le:
            java.lang.String[] r0 = com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c.f18644a
            r8 = r0
        L12:
            r0 = r6
            java.io.Writer r0 = r0.f18646c
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
            java.io.Writer r0 = r0.f18646c
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L87:
            r0 = r6
            java.io.Writer r0 = r0.f18646c
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
            java.io.Writer r0 = r0.f18646c
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        Lb4:
            r0 = r6
            java.io.Writer r0 = r0.f18646c
            r1 = 34
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c.m32748d(java.lang.String):void");
    }

    /* renamed from: j */
    private void m32741j() throws IOException {
        if (this.f18653j != null) {
            m32739l();
            m32748d(this.f18653j);
            this.f18653j = null;
        }
    }

    /* renamed from: k */
    private void m32740k() throws IOException {
        if (this.f18649f == null) {
            return;
        }
        this.f18646c.write(10);
        int i = this.f18648e;
        for (int i2 = 1; i2 < i; i2++) {
            this.f18646c.write(this.f18649f);
        }
    }

    /* renamed from: l */
    private void m32739l() throws IOException {
        int m32765a = m32765a();
        if (m32765a == 5) {
            this.f18646c.write(44);
        } else if (m32765a != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m32740k();
        m32755b(4);
    }

    /* renamed from: m */
    private void m32738m() throws IOException {
        int m32765a = m32765a();
        if (m32765a == 1) {
            m32755b(2);
            m32740k();
        } else if (m32765a == 2) {
            this.f18646c.append(',');
            m32740k();
        } else if (m32765a == 4) {
            this.f18646c.append((CharSequence) this.f18650g);
            m32755b(5);
        } else {
            if (m32765a != 6) {
                if (m32765a != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f18651h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m32755b(7);
        }
    }

    /* renamed from: a */
    public C5247c mo32761a(long j) throws IOException {
        m32741j();
        m32738m();
        this.f18646c.write(Long.toString(j));
        return this;
    }

    /* renamed from: a */
    public C5247c mo32760a(Boolean bool) throws IOException {
        if (bool == null) {
            return mo32745f();
        }
        m32741j();
        m32738m();
        this.f18646c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    /* renamed from: a */
    public C5247c mo32759a(Number number) throws IOException {
        if (number == null) {
            return mo32745f();
        }
        m32741j();
        String obj = number.toString();
        if (!this.f18651h && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        m32738m();
        this.f18646c.append((CharSequence) obj);
        return this;
    }

    /* renamed from: a */
    public C5247c mo32758a(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f18653j == null) {
            if (this.f18648e == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            this.f18653j = str;
            return this;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public C5247c mo32757a(boolean z) throws IOException {
        m32741j();
        m32738m();
        this.f18646c.write(z ? "true" : "false");
        return this;
    }

    /* renamed from: b */
    public C5247c mo32756b() throws IOException {
        m32741j();
        return m32763a(1, '[');
    }

    /* renamed from: b */
    public C5247c mo32754b(String str) throws IOException {
        if (str == null) {
            return mo32745f();
        }
        m32741j();
        m32738m();
        m32748d(str);
        return this;
    }

    /* renamed from: b */
    public final void m32753b(boolean z) {
        this.f18651h = z;
    }

    /* renamed from: c */
    public C5247c mo32752c() throws IOException {
        return m32762a(1, 2, ']');
    }

    /* renamed from: c */
    public final void m32751c(String str) {
        if (str.length() == 0) {
            this.f18649f = null;
            this.f18650g = ":";
            return;
        }
        this.f18649f = str;
        this.f18650g = ": ";
    }

    /* renamed from: c */
    public final void m32750c(boolean z) {
        this.f18652i = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f18646c.close();
        int i = this.f18648e;
        if (i > 1 || (i == 1 && this.f18647d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f18648e = 0;
    }

    /* renamed from: d */
    public C5247c mo32749d() throws IOException {
        m32741j();
        return m32763a(3, '{');
    }

    /* renamed from: d */
    public final void m32747d(boolean z) {
        this.f18654k = z;
    }

    /* renamed from: e */
    public C5247c mo32746e() throws IOException {
        return m32762a(3, 5, '}');
    }

    /* renamed from: f */
    public C5247c mo32745f() throws IOException {
        if (this.f18653j != null) {
            if (!this.f18654k) {
                this.f18653j = null;
                return this;
            }
            m32741j();
        }
        m32738m();
        this.f18646c.write(JsonReaderKt.NULL);
        return this;
    }

    public void flush() throws IOException {
        if (this.f18648e != 0) {
            this.f18646c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: g */
    public boolean m32744g() {
        return this.f18651h;
    }

    /* renamed from: h */
    public final boolean m32743h() {
        return this.f18652i;
    }

    /* renamed from: i */
    public final boolean m32742i() {
        return this.f18654k;
    }
}
