package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.C5259i;
import com.bytedance.sdk.openadsdk.preload.p193a.C5264n;
import com.bytedance.sdk.openadsdk.preload.p193a.C5265o;
import com.bytedance.sdk.openadsdk.preload.p193a.C5267q;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.C20753d;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/e.class */
public final class C5127e extends C5244a {

    /* renamed from: b */
    private static final Reader f18394b = new Reader() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.e.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: c */
    private static final Object f18395c = new Object();

    /* renamed from: d */
    private Object[] f18396d;

    /* renamed from: e */
    private int f18397e;

    /* renamed from: f */
    private String[] f18398f;

    /* renamed from: g */
    private int[] f18399g;

    /* renamed from: a */
    private void m32975a(EnumC5246b enumC5246b) throws IOException {
        if (mo32787f() == enumC5246b) {
            return;
        }
        throw new IllegalStateException("Expected " + enumC5246b + " but was " + mo32787f() + m32970v());
    }

    /* renamed from: a */
    private void m32974a(Object obj) {
        int i = this.f18397e;
        Object[] objArr = this.f18396d;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f18396d = Arrays.copyOf(objArr, i2);
            this.f18399g = Arrays.copyOf(this.f18399g, i2);
            this.f18398f = (String[]) Arrays.copyOf(this.f18398f, i2);
        }
        Object[] objArr2 = this.f18396d;
        int i3 = this.f18397e;
        this.f18397e = i3 + 1;
        objArr2[i3] = obj;
    }

    /* renamed from: t */
    private Object m32972t() {
        return this.f18396d[this.f18397e - 1];
    }

    /* renamed from: u */
    private Object m32971u() {
        Object[] objArr = this.f18396d;
        int i = this.f18397e - 1;
        this.f18397e = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    /* renamed from: v */
    private String m32970v() {
        return " at path " + mo32777p();
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: a */
    public final void mo32801a() throws IOException {
        m32975a(EnumC5246b.BEGIN_ARRAY);
        m32974a(((C5259i) m32972t()).iterator());
        this.f18399g[this.f18397e - 1] = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: b */
    public final void mo32796b() throws IOException {
        m32975a(EnumC5246b.END_ARRAY);
        m32971u();
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: c */
    public final void mo32791c() throws IOException {
        m32975a(EnumC5246b.BEGIN_OBJECT);
        m32974a(((C5265o) m32972t()).m32689n().iterator());
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f18396d = new Object[]{f18395c};
        this.f18397e = 1;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: d */
    public final void mo32789d() throws IOException {
        m32975a(EnumC5246b.END_OBJECT);
        m32971u();
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: e */
    public final boolean mo32788e() throws IOException {
        EnumC5246b mo32787f = mo32787f();
        return (mo32787f == EnumC5246b.END_OBJECT || mo32787f == EnumC5246b.END_ARRAY) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: f */
    public final EnumC5246b mo32787f() throws IOException {
        while (this.f18397e != 0) {
            Object m32972t = m32972t();
            if (!(m32972t instanceof Iterator)) {
                if (m32972t instanceof C5265o) {
                    return EnumC5246b.BEGIN_OBJECT;
                }
                if (m32972t instanceof C5259i) {
                    return EnumC5246b.BEGIN_ARRAY;
                }
                if (!(m32972t instanceof C5267q)) {
                    if (m32972t instanceof C5264n) {
                        return EnumC5246b.NULL;
                    }
                    if (m32972t != f18395c) {
                        throw new AssertionError();
                    }
                    throw new IllegalStateException("JsonReader is closed");
                }
                C5267q c5267q = (C5267q) m32972t;
                if (c5267q.m32679p()) {
                    return EnumC5246b.STRING;
                }
                if (c5267q.m32681n()) {
                    return EnumC5246b.BOOLEAN;
                }
                if (!c5267q.m32680o()) {
                    throw new AssertionError();
                }
                return EnumC5246b.NUMBER;
            }
            boolean z = this.f18396d[this.f18397e - 2] instanceof C5265o;
            Iterator it2 = (Iterator) m32972t;
            if (!it2.hasNext()) {
                return z ? EnumC5246b.END_OBJECT : EnumC5246b.END_ARRAY;
            } else if (z) {
                return EnumC5246b.NAME;
            } else {
                m32974a(it2.next());
            }
        }
        return EnumC5246b.END_DOCUMENT;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: g */
    public final String mo32786g() throws IOException {
        m32975a(EnumC5246b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m32972t()).next();
        String str = (String) entry.getKey();
        this.f18398f[this.f18397e - 1] = str;
        m32974a(entry.getValue());
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: h */
    public final String mo32785h() throws IOException {
        EnumC5246b mo32787f = mo32787f();
        if (mo32787f != EnumC5246b.STRING && mo32787f != EnumC5246b.NUMBER) {
            throw new IllegalStateException("Expected " + EnumC5246b.STRING + " but was " + mo32787f + m32970v());
        }
        String mo32686b = ((C5267q) m32971u()).mo32686b();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return mo32686b;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: i */
    public final boolean mo32784i() throws IOException {
        m32975a(EnumC5246b.BOOLEAN);
        boolean mo32682f = ((C5267q) m32971u()).mo32682f();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return mo32682f;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: j */
    public final void mo32783j() throws IOException {
        m32975a(EnumC5246b.NULL);
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: k */
    public final double mo32782k() throws IOException {
        EnumC5246b mo32787f = mo32787f();
        if (mo32787f != EnumC5246b.NUMBER && mo32787f != EnumC5246b.STRING) {
            throw new IllegalStateException("Expected " + EnumC5246b.NUMBER + " but was " + mo32787f + m32970v());
        }
        double mo32685c = ((C5267q) m32972t()).mo32685c();
        if (!m32776q() && (Double.isNaN(mo32685c) || Double.isInfinite(mo32685c))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(mo32685c)));
        }
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return mo32685c;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: l */
    public final long mo32781l() throws IOException {
        EnumC5246b mo32787f = mo32787f();
        if (mo32787f != EnumC5246b.NUMBER && mo32787f != EnumC5246b.STRING) {
            throw new IllegalStateException("Expected " + EnumC5246b.NUMBER + " but was " + mo32787f + m32970v());
        }
        long mo32684d = ((C5267q) m32972t()).mo32684d();
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return mo32684d;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: m */
    public final int mo32780m() throws IOException {
        EnumC5246b mo32787f = mo32787f();
        if (mo32787f != EnumC5246b.NUMBER && mo32787f != EnumC5246b.STRING) {
            throw new IllegalStateException("Expected " + EnumC5246b.NUMBER + " but was " + mo32787f + m32970v());
        }
        int mo32683e = ((C5267q) m32972t()).mo32683e();
        m32971u();
        int i = this.f18397e;
        if (i > 0) {
            int[] iArr = this.f18399g;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return mo32683e;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: n */
    public final void mo32779n() throws IOException {
        if (mo32787f() == EnumC5246b.NAME) {
            mo32786g();
            this.f18398f[this.f18397e - 2] = JsonReaderKt.NULL;
        } else {
            m32971u();
            int i = this.f18397e;
            if (i > 0) {
                this.f18398f[i - 1] = JsonReaderKt.NULL;
            }
        }
        int i2 = this.f18397e;
        if (i2 > 0) {
            int[] iArr = this.f18399g;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    /* renamed from: o */
    public final void m32973o() throws IOException {
        m32975a(EnumC5246b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) m32972t()).next();
        m32974a(entry.getValue());
        m32974a(new C5267q((String) entry.getKey()));
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    /* renamed from: p */
    public final String mo32777p() {
        int i;
        StringBuilder sb = new StringBuilder(C20753d.f67243b);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.f18397e) {
                Object[] objArr = this.f18396d;
                if (objArr[i3] instanceof C5259i) {
                    int i4 = i3 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('[');
                        sb.append(this.f18399g[i4]);
                        sb.append(']');
                        i = i4;
                    }
                } else {
                    i = i3;
                    if (objArr[i3] instanceof C5265o) {
                        int i5 = i3 + 1;
                        i = i5;
                        if (objArr[i5] instanceof Iterator) {
                            sb.append('.');
                            String[] strArr = this.f18398f;
                            i = i5;
                            if (strArr[i5] != null) {
                                sb.append(strArr[i5]);
                                i = i5;
                            }
                        }
                    }
                }
                i2 = i + 1;
            } else {
                return sb.toString();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a
    public final String toString() {
        return getClass().getSimpleName();
    }
}
