package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.b.a.c;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/z.class */
public abstract class z {
    public static z a(u uVar, String str) {
        Charset charset = c.e;
        u uVar2 = uVar;
        if (uVar != null) {
            Charset a2 = uVar.a();
            charset = a2;
            uVar2 = uVar;
            if (a2 == null) {
                charset = c.e;
                uVar2 = u.a(uVar + "; charset=utf-8");
            }
        }
        return a(uVar2, str.getBytes(charset));
    }

    public static z a(u uVar, byte[] bArr) {
        return a(uVar, bArr, 0, bArr.length);
    }

    public static z a(final u uVar, final byte[] bArr, final int i, final int i2) {
        Objects.requireNonNull(bArr, "content == null");
        c.a(bArr.length, i, i2);
        return new z() { // from class: com.bytedance.sdk.a.b.z.1
            @Override // com.bytedance.sdk.a.b.z
            public final u a() {
                return u.this;
            }

            @Override // com.bytedance.sdk.a.b.z
            public final void a(d dVar) throws IOException {
                dVar.c(bArr, i, i2);
            }

            @Override // com.bytedance.sdk.a.b.z
            public final long b() {
                return i2;
            }
        };
    }

    public abstract u a();

    public abstract void a(d dVar) throws IOException;

    public long b() throws IOException {
        return -1L;
    }
}
