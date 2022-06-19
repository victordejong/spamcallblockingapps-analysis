package okhttp3;

import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
import p000a.AbstractC0007d;
/* renamed from: okhttp3.aa */
/* loaded from: classes-dex2jar.jar:okhttp3/aa.class */
public abstract class AbstractC1953aa {
    /* renamed from: a */
    public static AbstractC1953aa m2497a(@Nullable C2094u c2094u, String str) {
        Charset charset = C1999c.f4986e;
        C2094u c2094u2 = c2094u;
        if (c2094u != null) {
            Charset m1894b = c2094u.m1894b();
            charset = m1894b;
            c2094u2 = c2094u;
            if (m1894b == null) {
                charset = C1999c.f4986e;
                c2094u2 = C2094u.m1896a(c2094u + "; charset=utf-8");
            }
        }
        return m2496a(c2094u2, str.getBytes(charset));
    }

    /* renamed from: a */
    public static AbstractC1953aa m2496a(@Nullable C2094u c2094u, byte[] bArr) {
        return m2495a(c2094u, bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC1953aa m2495a(@Nullable final C2094u c2094u, final byte[] bArr, final int i, final int i2) {
        if (bArr != null) {
            C1999c.m2356a(bArr.length, i, i2);
            return new AbstractC1953aa() { // from class: okhttp3.aa.1
                @Override // okhttp3.AbstractC1953aa
                @Nullable
                /* renamed from: a */
                public C2094u mo1893a() {
                    return c2094u;
                }

                @Override // okhttp3.AbstractC1953aa
                /* renamed from: a */
                public void mo1892a(AbstractC0007d abstractC0007d) {
                    abstractC0007d.mo8087c(bArr, i, i2);
                }

                @Override // okhttp3.AbstractC1953aa
                /* renamed from: b */
                public long mo1889b() {
                    return i2;
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    @Nullable
    /* renamed from: a */
    public abstract C2094u mo1893a();

    /* renamed from: a */
    public abstract void mo1892a(AbstractC0007d abstractC0007d);

    /* renamed from: b */
    public long mo1889b() {
        return -1L;
    }
}
