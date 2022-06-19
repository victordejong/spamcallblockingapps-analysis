package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.bytedance.sdk.a.b.z */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/z.class */
public abstract class AbstractC4148z {
    /* renamed from: a */
    public static AbstractC4148z m36317a(C4139u c4139u, String str) {
        Charset charset = C4015c.f14578e;
        C4139u c4139u2 = c4139u;
        if (c4139u != null) {
            Charset m36400a = c4139u.m36400a();
            charset = m36400a;
            c4139u2 = c4139u;
            if (m36400a == null) {
                charset = C4015c.f14578e;
                c4139u2 = C4139u.m36399a(c4139u + "; charset=utf-8");
            }
        }
        return m36316a(c4139u2, str.getBytes(charset));
    }

    /* renamed from: a */
    public static AbstractC4148z m36316a(C4139u c4139u, byte[] bArr) {
        return m36315a(c4139u, bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC4148z m36315a(final C4139u c4139u, final byte[] bArr, final int i, final int i2) {
        Objects.requireNonNull(bArr, "content == null");
        C4015c.m36918a(bArr.length, i, i2);
        return new AbstractC4148z() { // from class: com.bytedance.sdk.a.b.z.1
            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4148z
            /* renamed from: a */
            public final C4139u mo36314a() {
                return c4139u;
            }

            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4148z
            /* renamed from: a */
            public final void mo36313a(AbstractC3971d abstractC3971d) throws IOException {
                abstractC3971d.mo37075c(bArr, i, i2);
            }

            @Override // com.bytedance.sdk.p127a.p129b.AbstractC4148z
            /* renamed from: b */
            public final long mo36312b() {
                return i2;
            }
        };
    }

    /* renamed from: a */
    public abstract C4139u mo36314a();

    /* renamed from: a */
    public abstract void mo36313a(AbstractC3971d abstractC3971d) throws IOException;

    /* renamed from: b */
    public long mo36312b() throws IOException {
        return -1L;
    }
}
