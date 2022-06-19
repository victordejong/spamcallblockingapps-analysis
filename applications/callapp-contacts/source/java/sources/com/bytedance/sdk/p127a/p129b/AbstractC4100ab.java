package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p128a.AbstractC3972e;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.b.ab */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/ab.class */
public abstract class AbstractC4100ab implements Closeable {
    /* renamed from: a */
    public static AbstractC4100ab m36583a(final C4139u c4139u, final long j, final AbstractC3972e abstractC3972e) {
        Objects.requireNonNull(abstractC3972e, "source == null");
        return new AbstractC4100ab() { // from class: com.bytedance.sdk.a.b.ab.1
            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4100ab
            /* renamed from: a */
            public final C4139u mo36578a() {
                return c4139u;
            }

            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4100ab
            /* renamed from: b */
            public final long mo36577b() {
                return j;
            }

            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4100ab
            /* renamed from: d */
            public final AbstractC3972e mo36576d() {
                return abstractC3972e;
            }
        };
    }

    /* renamed from: a */
    public static AbstractC4100ab m36582a(C4139u c4139u, byte[] bArr) {
        return m36583a(c4139u, bArr.length, new C3969c().mo37076c(bArr));
    }

    /* renamed from: f */
    private Charset m36579f() {
        C4139u mo36578a = mo36578a();
        return mo36578a != null ? mo36578a.m36398a(C4015c.f14578e) : C4015c.f14578e;
    }

    /* renamed from: a */
    public abstract C4139u mo36578a();

    /* renamed from: b */
    public abstract long mo36577b();

    /* renamed from: c */
    public final InputStream m36581c() {
        return mo36576d().mo37056f();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C4015c.m36914a(mo36576d());
    }

    /* renamed from: d */
    public abstract AbstractC3972e mo36576d();

    /* renamed from: e */
    public final String m36580e() throws IOException {
        AbstractC3972e mo36576d = mo36576d();
        try {
            return mo36576d.mo37063a(C4015c.m36917a(mo36576d, m36579f()));
        } finally {
            C4015c.m36914a(mo36576d);
        }
    }
}
