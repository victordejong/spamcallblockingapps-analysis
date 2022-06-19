package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l;
import com.bytedance.sdk.openadsdk.preload.p193a.C5259i;
import com.bytedance.sdk.openadsdk.preload.p193a.C5264n;
import com.bytedance.sdk.openadsdk.preload.p193a.C5265o;
import com.bytedance.sdk.openadsdk.preload.p193a.C5267q;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/f.class */
public final class C5129f extends C5247c {

    /* renamed from: a */
    private static final Writer f18400a = new Writer() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.f.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };

    /* renamed from: b */
    private static final C5267q f18401b = new C5267q("closed");

    /* renamed from: d */
    private String f18403d;

    /* renamed from: c */
    private final List<AbstractC5262l> f18402c = new ArrayList();

    /* renamed from: e */
    private AbstractC5262l f18404e = C5264n.f18699a;

    public C5129f() {
        super(f18400a);
    }

    /* renamed from: a */
    private void m32968a(AbstractC5262l abstractC5262l) {
        if (this.f18403d != null) {
            if (!abstractC5262l.m32694j() || m32742i()) {
                ((C5265o) m32967j()).m32690a(this.f18403d, abstractC5262l);
            }
            this.f18403d = null;
        } else if (this.f18402c.isEmpty()) {
            this.f18404e = abstractC5262l;
        } else {
            AbstractC5262l m32967j = m32967j();
            if (!(m32967j instanceof C5259i)) {
                throw new IllegalStateException();
            }
            ((C5259i) m32967j).m32699a(abstractC5262l);
        }
    }

    /* renamed from: j */
    private AbstractC5262l m32967j() {
        List<AbstractC5262l> list = this.f18402c;
        return list.get(list.size() - 1);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: a */
    public final C5247c mo32761a(long j) throws IOException {
        m32968a(new C5267q(Long.valueOf(j)));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: a */
    public final C5247c mo32760a(Boolean bool) throws IOException {
        if (bool == null) {
            return mo32745f();
        }
        m32968a(new C5267q(bool));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: a */
    public final C5247c mo32759a(Number number) throws IOException {
        if (number == null) {
            return mo32745f();
        }
        if (!m32744g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        m32968a(new C5267q(number));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: a */
    public final C5247c mo32758a(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f18402c.isEmpty() || this.f18403d != null) {
            throw new IllegalStateException();
        }
        if (!(m32967j() instanceof C5265o)) {
            throw new IllegalStateException();
        }
        this.f18403d = str;
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: a */
    public final C5247c mo32757a(boolean z) throws IOException {
        m32968a(new C5267q(Boolean.valueOf(z)));
        return this;
    }

    /* renamed from: a */
    public final AbstractC5262l m32969a() {
        if (this.f18402c.isEmpty()) {
            return this.f18404e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f18402c);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: b */
    public final C5247c mo32756b() throws IOException {
        C5259i c5259i = new C5259i();
        m32968a(c5259i);
        this.f18402c.add(c5259i);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: b */
    public final C5247c mo32754b(String str) throws IOException {
        if (str == null) {
            return mo32745f();
        }
        m32968a(new C5267q(str));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: c */
    public final C5247c mo32752c() throws IOException {
        if (this.f18402c.isEmpty() || this.f18403d != null) {
            throw new IllegalStateException();
        }
        if (!(m32967j() instanceof C5259i)) {
            throw new IllegalStateException();
        }
        List<AbstractC5262l> list = this.f18402c;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f18402c.isEmpty()) {
            this.f18402c.add(f18401b);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: d */
    public final C5247c mo32749d() throws IOException {
        C5265o c5265o = new C5265o();
        m32968a(c5265o);
        this.f18402c.add(c5265o);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: e */
    public final C5247c mo32746e() throws IOException {
        if (this.f18402c.isEmpty() || this.f18403d != null) {
            throw new IllegalStateException();
        }
        if (!(m32967j() instanceof C5265o)) {
            throw new IllegalStateException();
        }
        List<AbstractC5262l> list = this.f18402c;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c
    /* renamed from: f */
    public final C5247c mo32745f() throws IOException {
        m32968a(C5264n.f18699a);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c, java.io.Flushable
    public final void flush() throws IOException {
    }
}
