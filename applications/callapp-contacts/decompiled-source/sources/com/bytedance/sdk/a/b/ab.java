package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.a.e;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/ab.class */
public abstract class ab implements Closeable {
    public static ab a(final u uVar, final long j, final e eVar) {
        Objects.requireNonNull(eVar, "source == null");
        return new ab() { // from class: com.bytedance.sdk.a.b.ab.1
            @Override // com.bytedance.sdk.a.b.ab
            public final u a() {
                return u.this;
            }

            @Override // com.bytedance.sdk.a.b.ab
            public final long b() {
                return j;
            }

            @Override // com.bytedance.sdk.a.b.ab
            public final e d() {
                return eVar;
            }
        };
    }

    public static ab a(u uVar, byte[] bArr) {
        return a(uVar, bArr.length, new c().c(bArr));
    }

    private Charset f() {
        u a2 = a();
        return a2 != null ? a2.a(com.bytedance.sdk.a.b.a.c.e) : com.bytedance.sdk.a.b.a.c.e;
    }

    public abstract u a();

    public abstract long b();

    public final InputStream c() {
        return d().f();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.bytedance.sdk.a.b.a.c.a(d());
    }

    public abstract e d();

    public final String e() throws IOException {
        e d2 = d();
        try {
            return d2.a(com.bytedance.sdk.a.b.a.c.a(d2, f()));
        } finally {
            com.bytedance.sdk.a.b.a.c.a(d2);
        }
    }
}
