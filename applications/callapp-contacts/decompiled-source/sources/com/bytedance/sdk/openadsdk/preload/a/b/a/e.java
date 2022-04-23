package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.d.a;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.i;
import com.bytedance.sdk.openadsdk.preload.a.n;
import com.bytedance.sdk.openadsdk.preload.a.o;
import com.bytedance.sdk.openadsdk.preload.a.q;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/e.class */
public final class e extends a {

    /* renamed from: b  reason: collision with root package name */
    private static final Reader f9920b = new Reader() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.e.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private static final Object f9921c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private Object[] f9922d;
    private int e;
    private String[] f;
    private int[] g;

    private void a(b bVar) throws IOException {
        if (f() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + f() + v());
        }
    }

    private void a(Object obj) {
        int i = this.e;
        Object[] objArr = this.f9922d;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f9922d = Arrays.copyOf(objArr, i2);
            this.g = Arrays.copyOf(this.g, i2);
            this.f = (String[]) Arrays.copyOf(this.f, i2);
        }
        Object[] objArr2 = this.f9922d;
        int i3 = this.e;
        this.e = i3 + 1;
        objArr2[i3] = obj;
    }

    private Object t() {
        return this.f9922d[this.e - 1];
    }

    private Object u() {
        Object[] objArr = this.f9922d;
        int i = this.e - 1;
        this.e = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private String v() {
        return " at path " + p();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void a() throws IOException {
        a(b.BEGIN_ARRAY);
        a(((i) t()).iterator());
        this.g[this.e - 1] = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void b() throws IOException {
        a(b.END_ARRAY);
        u();
        u();
        int i = this.e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void c() throws IOException {
        a(b.BEGIN_OBJECT);
        a(((o) t()).n().iterator());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9922d = new Object[]{f9921c};
        this.e = 1;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void d() throws IOException {
        a(b.END_OBJECT);
        u();
        u();
        int i = this.e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final boolean e() throws IOException {
        b f = f();
        return (f == b.END_OBJECT || f == b.END_ARRAY) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final b f() throws IOException {
        while (this.e != 0) {
            Object t = t();
            if (t instanceof Iterator) {
                boolean z = this.f9922d[this.e - 2] instanceof o;
                Iterator it2 = (Iterator) t;
                if (!it2.hasNext()) {
                    return z ? b.END_OBJECT : b.END_ARRAY;
                }
                if (z) {
                    return b.NAME;
                }
                a(it2.next());
            } else if (t instanceof o) {
                return b.BEGIN_OBJECT;
            } else {
                if (t instanceof i) {
                    return b.BEGIN_ARRAY;
                }
                if (t instanceof q) {
                    q qVar = (q) t;
                    if (qVar.p()) {
                        return b.STRING;
                    }
                    if (qVar.n()) {
                        return b.BOOLEAN;
                    }
                    if (qVar.o()) {
                        return b.NUMBER;
                    }
                    throw new AssertionError();
                } else if (t instanceof n) {
                    return b.NULL;
                } else {
                    if (t == f9921c) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return b.END_DOCUMENT;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final String g() throws IOException {
        a(b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) t()).next();
        String str = (String) entry.getKey();
        this.f[this.e - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final String h() throws IOException {
        b f = f();
        if (f == b.STRING || f == b.NUMBER) {
            String b2 = ((q) u()).b();
            int i = this.e;
            if (i > 0) {
                int[] iArr = this.g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return b2;
        }
        throw new IllegalStateException("Expected " + b.STRING + " but was " + f + v());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final boolean i() throws IOException {
        a(b.BOOLEAN);
        boolean f = ((q) u()).f();
        int i = this.e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return f;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void j() throws IOException {
        a(b.NULL);
        u();
        int i = this.e;
        if (i > 0) {
            int[] iArr = this.g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final double k() throws IOException {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            double c2 = ((q) t()).c();
            if (q() || (!Double.isNaN(c2) && !Double.isInfinite(c2))) {
                u();
                int i = this.e;
                if (i > 0) {
                    int[] iArr = this.g;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return c2;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(c2)));
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f + v());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final long l() throws IOException {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            long d2 = ((q) t()).d();
            u();
            int i = this.e;
            if (i > 0) {
                int[] iArr = this.g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return d2;
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f + v());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final int m() throws IOException {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            int e = ((q) t()).e();
            u();
            int i = this.e;
            if (i > 0) {
                int[] iArr = this.g;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return e;
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f + v());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final void n() throws IOException {
        if (f() == b.NAME) {
            g();
            this.f[this.e - 2] = JsonReaderKt.NULL;
        } else {
            u();
            int i = this.e;
            if (i > 0) {
                this.f[i - 1] = JsonReaderKt.NULL;
            }
        }
        int i2 = this.e;
        if (i2 > 0) {
            int[] iArr = this.g;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public final void o() throws IOException {
        a(b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) t()).next();
        a(entry.getValue());
        a(new q((String) entry.getKey()));
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final String p() {
        int i;
        StringBuilder sb = new StringBuilder(d.f39169b);
        int i2 = 0;
        while (i2 < this.e) {
            Object[] objArr = this.f9922d;
            if (objArr[i2] instanceof i) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.g[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof o) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.f;
                        i = i4;
                        if (strArr[i4] != null) {
                            sb.append(strArr[i4]);
                            i = i4;
                        }
                    }
                }
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.a
    public final String toString() {
        return getClass().getSimpleName();
    }
}
