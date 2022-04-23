package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.i;
import com.bytedance.sdk.openadsdk.preload.a.l;
import com.bytedance.sdk.openadsdk.preload.a.n;
import com.bytedance.sdk.openadsdk.preload.a.o;
import com.bytedance.sdk.openadsdk.preload.a.q;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/f.class */
public final class f extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final Writer f9923a = new Writer() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.f.1
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

    /* renamed from: b  reason: collision with root package name */
    private static final q f9924b = new q("closed");

    /* renamed from: d  reason: collision with root package name */
    private String f9926d;

    /* renamed from: c  reason: collision with root package name */
    private final List<l> f9925c = new ArrayList();
    private l e = n.f10089a;

    public f() {
        super(f9923a);
    }

    private void a(l lVar) {
        if (this.f9926d != null) {
            if (!lVar.j() || i()) {
                ((o) j()).a(this.f9926d, lVar);
            }
            this.f9926d = null;
        } else if (this.f9925c.isEmpty()) {
            this.e = lVar;
        } else {
            l j = j();
            if (j instanceof i) {
                ((i) j).a(lVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    private l j() {
        List<l> list = this.f9925c;
        return list.get(list.size() - 1);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c a(long j) throws IOException {
        a(new q(Long.valueOf(j)));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c a(Boolean bool) throws IOException {
        if (bool == null) {
            return f();
        }
        a(new q(bool));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        a(new q(number));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c a(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.f9925c.isEmpty() || this.f9926d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof o) {
            this.f9926d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c a(boolean z) throws IOException {
        a(new q(Boolean.valueOf(z)));
        return this;
    }

    public final l a() {
        if (this.f9925c.isEmpty()) {
            return this.e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f9925c);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c b() throws IOException {
        i iVar = new i();
        a(iVar);
        this.f9925c.add(iVar);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        a(new q(str));
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c c() throws IOException {
        if (this.f9925c.isEmpty() || this.f9926d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof i) {
            List<l> list = this.f9925c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f9925c.isEmpty()) {
            this.f9925c.add(f9924b);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c d() throws IOException {
        o oVar = new o();
        a(oVar);
        this.f9925c.add(oVar);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c e() throws IOException {
        if (this.f9925c.isEmpty() || this.f9926d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof o) {
            List<l> list = this.f9925c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c
    public final c f() throws IOException {
        a(n.f10089a);
        return this;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.d.c, java.io.Flushable
    public final void flush() throws IOException {
    }
}
